-- Old Default

local T={}
T.Base="base"
T.Name="Old Default"
T.ID="olddefault"
T.Versions = {
    randomize = true,
    allow_custom = true,
    randomize_custom = true,

    main = {
        id = "olddefault",
    },
    other = {
        {
            name = "Old Default (Orange)",
            id = "olddefaultorange",
        },
    },
}
T.Interior={
    Model="models/drmatt/tardis/2012interior/interior.mdl",
    Sounds={
        Idle={
            {
                path="drmatt/tardis/2012interior/interior_idle_loop.wav",
                volume=1
            }
        }
    },
    Light={
        color=Color(0,100,255),
        warncolor=Color(255,100,0),
        pos=Vector(0,0,0),
        brightness=100,
        NoLO = {
            brightness = 8,
            warn_brightness = 8,
        },
    },
    Lights={
        {
            color=Color(255,255,255),
            warncolor=Color(255,100,0),
            pos=Vector(50,0,300),
            brightness=1,
            NoLO = {
                brightness = 0,
                warn_brightness = 0
            }
        }
    },
    RoundThings={
        Vector(-257,-383,222.5),
        --Vector(-324.74,-310.87,222.5),
        --Vector(-371.58,-271.56,222.5),
        --Vector(-402.3,-175.17,222.5),
        --Vector(-418.7,-123.74,222.5),
        --Vector(-449.7,-26.48,222.5),
        --Vector(-444.74,29.44,222.5),
        --Vector(-414.83,123.27,222.5),
        --Vector(-398.5,174.51,222.5),
        --Vector(-363.36,269.67,222.5),
        --Vector(-318.57,302.84,222.5),
        --Vector(-237.87,362.61,222.5),
        --Vector(-196.91,392.94,222.5),
        --Vector(-103.69,432.7,222.5),
        --Vector(-51.12,432.7,222.5),
        Vector(51.75,460,222.5),
        --Vector(104.76,432.7,222.5),
        --Vector(198.82,386.66,222.5),
        --Vector(238.42,357.33,222.5),
        --Vector(317.29,301.46,222.5),
        --Vector(366.49,269.05,222.5),
        --Vector(396.84,173.72,222.5),
        --Vector(413.4,122.04,222.5),
        --Vector(444.76,24.65,222.5),
        --Vector(446.2,-28.22,222.5),
        --Vector(414.35,-116.72,222.5),
        --Vector(396.13,-173.9,222.5),
        --Vector(365.36,-270.42,222.5),
        --Vector(321.86,-308.13,222.5),
        --Vector(242.69,-366.76,222.5),
    },
    Portal = {
        pos = Vector(-1,-353.5,139),
        ang = Angle(0,90,0),
        width = 60,
        height = 95
    },
    Fallback={
        pos=Vector(0,-330,95),
        ang=Angle(0,90,0)
    },
    Screens={
        {
            pos=Vector(57.15,-11.38,159.58),
            ang=Angle(0,90,90),
            width=485,
            height=250
        },
        {
            pos=Vector(-56,18.4,159.58),
            ang=Angle(0,-90,90),
            width=485,
            height=250
        }
    },
    Seats={
        {
            pos=Vector(-183.78,67.3,104.64),
            ang=Angle(0.02,-110.46,-1.23)
        },
        {
            pos=Vector(-31.12,192.06,104.15),
            ang=Angle(0.14,-171.02,0.5)
        },
        {
            pos=Vector(188.54,44.54,103.64),
            ang=Angle(0.08,99.92,-0.2)
        },
        {
            pos=Vector(106.05,-162.4,103.1),
            ang=Angle(0.05,39.18,3)
        }
    },
    Parts={
        console={
            model="models/drmatt/tardis/2012interior/console.mdl"
        },
        door = {
            posoffset=Vector(26,0,-54.65)
        },
    },
    --[[
    CustomPortals={
        test={
            entry={
                pos=Vector(-1,-153.5,136),
                ang=Angle(0,90,0),
                width=60,
                height=91,
                fallback=Vector(-1,-153.5,136)
            },
            exit={
                pos=Vector(-1,153.5,136),
                ang=Angle(0,0,0),
                width=60,
                height=91,
                fallback=Vector(-1,153.5,136)
            }
        }
    }
    --]]
}
T.Exterior={
    Parts = {
        door = {
            posoffset=Vector(-28,0,-54.6)
        }
    },
    Portal = {
        pos = Vector(28,0,54.6),
        ang = Angle(0,0,0),
        width = 45,
        height = 92,
        thickness = 42,
        inverted = true,
    },
}
T.CustomHooks = {
    init_door = {
        exthooks = {
            ["PostInitialize"] = true,
        },
        inthooks = {
            ["PostInitialize"] = true,
        },
        func = function(ext,int)
            local door_ext = IsValid(ext) and ext:GetPart("door")
            local door_int = IsValid(int) and int:GetPart("door")

            if IsValid(door_ext) then
                door_ext:SetBodygroup(1,1)
                door_ext:SetBodygroup(2,1)
            end

            if IsValid(door_int) then
                door_int:SetBodygroup(1,1)
                door_int:SetBodygroup(2,1)
                door_int:SetBodygroup(3,1) -- 3D sign
            end
        end,
    }
}


TARDIS:AddInterior(T)