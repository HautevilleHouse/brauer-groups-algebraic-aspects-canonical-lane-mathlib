import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure BrauerAdmittedObject where
  carrier : Type
  algebra : Type
  brauerGroupElement : carrier
  conclusion : Prop

def BrauerWitnessClosed (O : BrauerAdmittedObject) : Prop :=
  O.conclusion

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "BrauerGroupsAlgebraicAspectsCanonicalLaneLean",
  theoremName := "Brauer Groups Algebraic Aspects",
  theoremObject := "Brauer group of a field",
  classicalBoundary := "open",
  manifoldConstrainedStatement := "admissible-class closure via bridge and gate",
  carriedRemainder := "none"
}

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse