import HautevilleHouse.BrauerGroupsAlgebraicAspectsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure CentralSimpleAlgebraPackage where
  baseField : Type u
  algebra : Type v
  central : Prop
  simple : Prop
  finiteDimensional : Prop
  dimension : Nat
  splitOverField : Type w
  splittingFieldExists : Prop

def CentralSimpleAlgebraClosed (P : CentralSimpleAlgebraPackage) : Prop :=
  P.central ∧ P.simple ∧ P.finiteDimensional ∧ P.splittingFieldExists

structure CentralSimpleAlgebraEvidence (P : CentralSimpleAlgebraPackage) where
  centralClosed : P.central
  simpleClosed : P.simple
  finiteDimensionalClosed : P.finiteDimensional
  splittingFieldExistsClosed : P.splittingFieldExists

theorem central_simple_algebra_closed_from_evidence
    (P : CentralSimpleAlgebraPackage) (E : CentralSimpleAlgebraEvidence P) :
    CentralSimpleAlgebraClosed P := by
  exact And.intro E.centralClosed (And.intro E.simpleClosed (And.intro E.finiteDimensionalClosed E.splittingFieldExistsClosed))

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
