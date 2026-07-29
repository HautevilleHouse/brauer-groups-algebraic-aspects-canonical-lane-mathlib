import BrauerGroupsAlgebraicAspectsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BrauerSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BrauerAdmittedObject where
  space : BrauerSpace
  centralSimpleAlgebra : Prop
  dimensionFinite : Prop
  brauerGroup : Type
  brauerEquivalence : Prop
  conclusion : brauerEquivalence

structure BrauerEndgameState where
  object : BrauerAdmittedObject

def BrauerWitnessClosed (O : BrauerAdmittedObject) : Prop :=
  O.brauerEquivalence

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
