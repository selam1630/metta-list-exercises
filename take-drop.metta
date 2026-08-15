; ==========================================
; TAKE
; ==========================================

; Taking zero elements gives an empty list.
(= (take 0 $list)
   Nil)

; Taking from an empty list gives an empty list.
(= (take $n Nil)
   Nil)

; Recursive case.
(= (take $n (:: $x $xs))
   (if (> $n 0)
       (:: $x (take (- $n 1) $xs))
       Nil))


; ==========================================
; DROP
; ==========================================

; Dropping zero elements gives the original list.
(= (drop 0 $list)
   $list)

; Dropping from an empty list gives an empty list.
(= (drop $n Nil)
   Nil)

; Recursive case.
(= (drop $n (:: $x $xs))
   (if (> $n 0)
       (drop (- $n 1) $xs)
       (:: $x $xs)))


; ==========================================
; TEST LIST
; ==========================================

; [1, 2, 3, 4, 5]
(= (numbers)
   (:: 1
       (:: 2
           (:: 3
               (:: 4
                   (:: 5 Nil))))))


; ==========================================
; TAKE TESTS
; ==========================================

!(take 0 (numbers))

!(take 1 (numbers))

!(take 3 (numbers))

!(take 5 (numbers))

!(take 10 (numbers))


; ==========================================
; DROP TESTS
; ==========================================

!(drop 0 (numbers))

!(drop 1 (numbers))

!(drop 3 (numbers))

!(drop 5 (numbers))

!(drop 10 (numbers))