
/*:
 Place your refactored structs below:
 */
protocol ForcePower {
  func lightSaberSkill() -> Int
  func telekinesis() -> Int
  func prescience() -> Int
}

protocol JediPower {
  func mindControl() -> String
  func introspection() -> String
}

protocol SithPower {
  func forceChoke() -> Bool
  func forceLightning() -> Bool
}

extension ForcePower {
  func lightSaberSkill() -> Int {
    return 8
  }
  func telekinesis() -> Int {
    return 5
  }
  func prescience() -> Int {
    return 5
  }
}

extension JediPower {
  func introspection() -> String { return "Search your feelings." }
}

extension SithPower {
  func forceChoke() -> Bool { return true }
  func forceLightning() -> Bool { return true }
}

struct MasterYoda: ForcePower, JediPower {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 9 }
  func mindControl() -> String { return "Do or do not." }
}

struct MasterObiWan: ForcePower, JediPower {
  func mindControl() -> String { return "These are not the droids you're looking for." }
}

struct MasterQuiGon: ForcePower, JediPower {
  func mindControl() -> String { return "Republic credits will do." }
  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
}

struct DarthVader: ForcePower, SithPower {
  func lightSaberSkill() -> Int { return 9 }
  func telekinesis() -> Int { return 8 }
  func forceLightning() -> Bool { return false }
}

struct DarthSidious: ForcePower, SithPower {
  func telekinesis() -> Int { return 7 }
  func prescience() -> Int { return 6 }
}

struct DarthTyrannous: ForcePower, SithPower {
  func forceChoke() -> Bool { return false }
}
