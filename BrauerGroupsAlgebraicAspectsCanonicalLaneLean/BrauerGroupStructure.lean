import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure BrauerGroupStructure where
  underlyingSet : Type
  multiplication : underlyingSet → underlyingSet → underlyingSet
  identity : underlyingSet
  inverses : underlyingSet → underlyingSet
  associativity : ∀ a b c, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  identityLeft : ∀ a, multiplication identity a = a
  identityRight : ∀ a, multiplication a identity = a
  inverseLeft : ∀ a, multiplication (inverses a) a = identity
  inverseRight : ∀ a, multiplication a (inverses a) = identity

structure BrauerGroupEvidence (B : BrauerGroupStructure) where
  identityLeftClosed : ∀ a, B.multiplication B.identity a = a
  identityRightClosed : ∀ a, B.multiplication a B.identity = a
  inverseLeftClosed : ∀ a, B.multiplication (B.inverses a) a = B.identity
  inverseRightClosed : ∀ a, B.multiplication a (B.inverses a) = B.identity

theorem brauer_group_evidence_identityLeft (B : BrauerGroupStructure) (E : BrauerGroupEvidence B) : ∀ a, B.multiplication B.identity a = a := 
  E.identityLeftClosed

theorem brauer_group_evidence_identityRight (B : BrauerGroupStructure) (E : BrauerGroupEvidence B) : ∀ a, B.multiplication a B.identity = a :=
  E.identityRightClosed

theorem brauer_group_evidence_inverseLeft (B : BrauerGroupStructure) (E : BrauerGroupEvidence B) : ∀ a, B.multiplication (B.inverses a) a = B.identity :=
  E.inverseLeftClosed

theorem brauer_group_evidence_inverseRight (B : BrauerGroupStructure) (E : BrauerGroupEvidence B) : ∀ a, B.multiplication a (B.inverses a) = B.identity :=
  E.inverseRightClosed

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
