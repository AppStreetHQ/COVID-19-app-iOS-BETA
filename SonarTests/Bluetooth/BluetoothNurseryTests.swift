//
//  BluetoothNurseryTests.swift
//  SonarTests
//
//  Created by NHSX on 4/23/20.
//  Copyright © 2020 NHSX. All rights reserved.
//

import XCTest
@testable import Sonar

class BluetoothNurseryTests: TestCase {
    
    func test_whenRegistrationIsSaved_theBroadcasterIsInformedToUpdate() throws {
        throw XCTSkip("This test can't be written until the nursery's functional behavior is decoupled from the creation of objects.")
    }

    func test_isHealthy_afterStarted() throws {
        throw XCTSkip("This test fails because the broadcaster and listener aren't immediately healthy. Decouple behavior from creation of objects")

        let nursery = ConcreteBluetoothNursery(persistence: PersistenceDouble(),
                                               userNotificationCenter: UserNotificationCenterDouble(),
                                               notificationCenter: NotificationCenter(),
                                               monitor: AppMonitoringDouble())

        XCTAssertFalse(nursery.isHealthy)

        nursery.startBluetooth(registration: nil)

        XCTAssertTrue(nursery.isHealthy)
    }
}
