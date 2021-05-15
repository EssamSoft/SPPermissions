// The MIT License (MIT)
// Copyright © 2020 Ivan Vorobei (hello@ivanvorobei.by)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit

enum Text {
    
    static func permission_name(_ permission: SPPermissions.Permission) -> String {
        switch permission {
        #if os(iOS)
        case .camera:
            return NSLocalizedString("permission camera name", bundle: .main, comment: "")
            //return "Camera"
        case .photoLibrary:
            return "Photo Library"
        case .microphone:
            return "Microphone"
        case .calendar:
            return "Calendar"
        case .contacts:
            return "Contacts"
        case .reminders:
            return "Reminders"
        case .speech:
            return "Speech"
        case .locationAlways:
            return "Location Always"
        case .motion:
            return "Motion"
        case .mediaLibrary:
            return "Media Library"
        case .bluetooth:
            return "Bluetooth"
        #endif
        case .notification:
            return "Notification"
        case .locationWhenInUse:
            return "Location When Use"
        case .tracking:
            return "Tracking"
        }
    }
    
    static func permission_description(_ permission: SPPermissions.Permission) -> String {
        switch permission {
        #if os(iOS)
        case .camera:
            return "Allow app for use camera"
        case .calendar:
            return "Application can add events to calendar"
        case .contacts:
            return "Access for your contacts and phones"
        case .microphone:
            return "Allow record voice from app"
        case .photoLibrary:
            return "Access for save photos in your gallery"
        case .reminders:
            return "Application can create new task"
        case .speech:
            return "Allow to check your voice"
        case .locationAlways:
            return "Allow to access your location"
        case .motion:
            return "Allow to report motion and environment-related data"
        case .mediaLibrary:
            return "Allow to check your media"
        case .bluetooth:
            return "Allow access to bluetooth"
        #endif
        case .notification:
            return "Get important information without opening app."
        case .locationWhenInUse:
            return "Allow to access your location"
        case .tracking:
            return "Allow to access app-related data"
        }
    }
    
    // MARK: - Action Button
    
    static var allow_permission_action: String { return "Allow" }
    static var allowed_permission_action: String { return "Allowed" }
    
    // MARK: - Titles & Comments
    
    static var header: String = "Need Permissions"
    static var sub_header: String = "Permissions request"
    static var description: String = "These are the permissions the app requires to work properly. Please see description for each permission."
    static var comment: String = "Permissions are necessary for the application to work and perform correctly. Push are not required permissions."
}
