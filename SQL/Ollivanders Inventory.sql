SELECT w1.id
        ,w1.age
        ,w1.coins_needed
        ,w1.power
FROM (SELECT w.id
            ,w.code
            ,wp.age
            ,w.coins_needed
            ,w.power
            ,ROW_NUMBER() OVER (
                            PARTITION BY w.power
                                        ,wp.age
                            ORDER BY w.coins_needed ASC) AS rn
      FROM wands AS w
      INNER JOIN wands_property AS wp
            ON wp.code = w.code
            AND wp.is_evil = 0
        ) AS w1
WHERE w1.rn = 1
ORDER BY w1.power DESC, w1.age DESC
