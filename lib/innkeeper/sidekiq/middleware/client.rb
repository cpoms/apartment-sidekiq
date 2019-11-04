module Innkeeper::Sidekiq::Middleware
  class Client
    def call(worker_class, item, queue, redis_pool=nil)
      item["innkeeper"] ||= Innkeeper::Tenant.current
      yield
    end
  end
end
