import BrauerGroupsAlgebraicAspectsCanonicalLaneLean.BrauerGroupAdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure CentralSimpleAlgebraPackage (F : BrauerAdmittedObject) where
  algebra : Type
  finiteDimensional : Prop
  central : Prop
  simple : Prop
  splitByExtension : Prop
  dimensionSquare : Prop

structure CentralSimpleAlgebraEvidence {F : BrauerAdmittedObject} (A : CentralSimpleAlgebraPackage F) where
  finiteDimensionalClosed : A.finiteDimensional
  centralClosed : A.central
  simpleClosed : A.simple
  splitByExtensionClosed : A.splitByExtension
  dimensionSquareClosed : A.dimensionSquare

def CentralSimpleAlgebraClosed {F : BrauerAdmittedObject} (A : CentralSimpleAlgebraPackage F) : Prop :=
  A.finiteDimensional ∧ A.central ∧ A.simple ∧ A.splitByExtension ∧ A.dimensionSquare

theorem central_simple_algebra_closed_from_evidence
    {F : BrauerAdmittedObject} (A : CentralSimpleAlgebraPackage F) (E : CentralSimpleAlgebraEvidence A) :
    CentralSimpleAlgebraClosed A := by
  exact And.intro E.finiteDimensionalClosed (And.intro E.centralClosed (And.intro E.simpleClosed (And.intro E.splitByExtensionClosed E.dimensionSquareClosed)))

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
