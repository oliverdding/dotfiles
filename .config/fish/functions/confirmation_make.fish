function confirmation_make -a question -d "ask for confirmation"
    while true
        read -l -P "$question [y/N] " confirm
        switch $confirm
            case Y y
                return 0
            case '' N n
                return 1
        end
    end
end
