module DbCharmer
  module ActiveRecord
    module FinderOverrides

      module ClassMethods
        SLAVE_METHODS = [ :find_by_sql, :count_by_sql, :calculate ]
        MASTER_METHODS = [ :update, :create, :delete, :destroy, :delete_all, :destroy_all, :update_all, :update_counters ]

        SLAVE_METHODS.each do |slave_method|
          class_eval <<-EOF, __FILE__, __LINE__ + 1
            def #{slave_method}(*args, &block)
              first_level_on_slave do
                super(*args, &block)
              end
            end
          EOF
        end

        MASTER_METHODS.each do |master_method|
          class_eval <<-EOF, __FILE__, __LINE__ + 1
            def #{master_method}(*args, &block)
              on_master do
                super(*args, &block)
              end
            end
          EOF
        end

        def find(*args, &block)
          options = args.last
          if options.is_a?(Hash) && options[:lock]
            on_master { super(*args, &block) }
          else
            super(*args, &block)
          end
        end

      private

        def first_level_on_slave
          first_level = db_charmer_top_level_connection? && on_master.connection.open_transactions.zero?
          if first_level && db_charmer_force_slave_reads?
            on_slave { yield }
          else
            yield
          end
        end

      end

      module InstanceMethods
        def reload(*args, &block)
          self.class.on_master do
            super(*args, &block)
          end
        end
      end

    end
  end
end
