module InfinityGems
    def timestone
        puts "Doctor strange"
    end

    def soulstone
        puts "Gamora"
    end

    def mindstone
        puts "Vision"
    end
end 

class Thanos
    include InfinityGems

    def infinitywar
        puts "The of infinity gems with"
    end
end 

aa = Thanos.new 

aa.infinitywar
aa.mindstone
aa.timestone
aa.soulstone