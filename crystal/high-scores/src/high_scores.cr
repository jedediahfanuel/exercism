class HighScores
  property scores : Array(Int32)
  def initialize(@scores : Array(Int32)) end
  def latest             ; scores.last                 ; end
  def personal_best      ; scores.max                  ; end
  def personal_top_three ; scores.sort.reverse.first 3 ; end
end
