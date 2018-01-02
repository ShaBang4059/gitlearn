% RECORDS
-record (rec_dl, {persons}).

-record (rec_person, {name, lastname,
                      hunger = 0, morale = 50
                      }).

% STARTUP PARAMS
-define (STARTUP_PERSONS, [
                          #rec_person {name = "John", lastname = "Douh"}
                          ]).