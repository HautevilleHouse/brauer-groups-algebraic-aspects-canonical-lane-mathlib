import BrauerGroupsAlgebraicAspectsCanonicalLaneLean.CentralSimpleAlgebra

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure BrauerGroupPackage {F : Type u} (A : CentralSimpleAlgebraPackage) where
  equivalenceRelation : Prop
  groupOperation : Prop
  identityElement : Prop
  inverseElement : Prop
  abelianGroup : Prop

structure BrauerGroupEvidence {F : Type u} {A : CentralSimpleAlgebraPackage}
    (B : BrauerGroupPackage A) where
  equivalenceRelationClosed : B.equivalenceRelation
  groupOperationClosed : B.groupOperation
  identityElementClosed : B.identityElement
  inverseElementClosed : B.inverseElement
  abelianGroupClosed : B.abelianGroup

def BrauerGroupClosed {F : Type u} {A : CentralSimpleAlgebraPackage}
    (B : BrauerGroupPackage A) : Prop :=
  B.equivalenceRelation ∧ B.groupOperation ∧
  B.identityElement ∧ B.inverseElement ∧ B.abelianGroup

theorem brauer_group_closed_from_evidence
    {F : Type u} {A : CentralSimpleAlgebraPackage}
    (B : BrauerGroupPackage A) (E : BrauerGroupEvidence B) :
    BrauerGroupClosed B := by
  exact And.intro E.equivalenceRelationClosed
    (And.intro E.groupOperationClosed
      (And.intro E.identityElementClosed
        (And.intro E.inverseElementClosed E.abelianGroupClosed)))

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
