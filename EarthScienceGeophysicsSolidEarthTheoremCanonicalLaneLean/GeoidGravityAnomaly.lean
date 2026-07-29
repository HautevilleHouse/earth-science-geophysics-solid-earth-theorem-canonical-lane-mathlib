import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure GeoidGravityAnomalyPackage where
  geoidUndulation : Prop
  freeAirAnomaly : Prop
  bouguerAnomaly : Prop
  isostaticCompensation : Prop
  mantleConvection : Prop

structure GeoidGravityAnomalyEvidence (G : GeoidGravityAnomalyPackage) where
  geoidUndulationClosed : G.geoidUndulation
  freeAirAnomalyClosed : G.freeAirAnomaly
  bouguerAnomalyClosed : G.bouguerAnomaly
  isostaticCompensationClosed : G.isostaticCompensation
  mantleConvectionClosed : G.mantleConvection

def GeoidGravityAnomalyClosed (G : GeoidGravityAnomalyPackage) : Prop :=
  G.geoidUndulation ∧ G.freeAirAnomaly ∧ G.bouguerAnomaly ∧ G.isostaticCompensation ∧ G.mantleConvection

theorem geoid_gravity_anomaly_closed_from_evidence
    (G : GeoidGravityAnomalyPackage) (Ev : GeoidGravityAnomalyEvidence G) :
    GeoidGravityAnomalyClosed G := by
  exact And.intro Ev.geoidUndulationClosed
    (And.intro Ev.freeAirAnomalyClosed
      (And.intro Ev.bouguerAnomalyClosed
        (And.intro Ev.isostaticCompensationClosed Ev.mantleConvectionClosed)))

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse