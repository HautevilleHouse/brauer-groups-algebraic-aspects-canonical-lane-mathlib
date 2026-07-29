import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure CentralSimpleAlgebraPackage where
  field : Type
  degree : ℕ
  central : Prop
  simple : Prop
  isomorphismClass : Prop

structure CentralSimpleAlgebraEvidence (C : CentralSimpleAlgebraPackage) where
  centralClosed : C.central
  simpleClosed : C.simple
  isomorphismClassClosed : C.isomorphismClass

def CentralSimpleAlgebraClosed (C : CentralSimpleAlgebraPackage) : Prop :=
  C.central ∧ C.simple ∧ C.isomorphismClass

theorem central_simple_algebra_closed_from_evidence
    (C : CentralSimpleAlgebraPackage) (E : CentralSimpleAlgebraEvidence C) :
    CentralSimpleAlgebraClosed C := by
  exact And.intro E.centralClosed (And.intro E.simpleClosed E.isomorphismClassClosed)

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
