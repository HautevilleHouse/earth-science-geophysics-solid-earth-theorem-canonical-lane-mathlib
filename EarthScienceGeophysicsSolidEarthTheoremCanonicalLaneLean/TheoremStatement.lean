import EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure EarthSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EarthAdmittedObject where
  space : EarthSpace
  solidEarthProperties : Prop
  geophysicalModel : Prop
  conclusion : solidEarthProperties ∧ geophysicalModel

def EarthWitnessClosed (O : EarthAdmittedObject) : Prop :=
  O.solidEarthProperties ∧ O.geophysicalModel

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse