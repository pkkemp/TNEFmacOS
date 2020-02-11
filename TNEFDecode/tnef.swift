//
//  tnef.swift
//  TNEFDecode
//
//  Created by Preston Kemp on 2/10/20.
//  Copyright © 2020 Preston Kemp. All rights reserved.
//

import Foundation

let tnefSignature = 0x223e9f78
//lvlMessage    = 0x01
let lvlAttachment = 0x02

let ATTOWNER                   = 0x0000 // Owner
let ATTSENTFOR                 = 0x0001 // Sent For
let ATTDELEGATE                = 0x0002 // Delegate
let ATTDATESTART               = 0x0006 // Date Start
let ATTDATEEND                 = 0x0007 // Date End
let ATTAIDOWNER                = 0x0008 // Owner Appointment ID
let ATTREQUESTRES              = 0x0009 // Response Requested.
let ATTFROM                    = 0x8000 // From
let ATTSUBJECT                 = 0x8004 // Subject
let ATTDATESENT                = 0x8005 // Date Sent
let ATTDATERECD                = 0x8006 // Date Received
let ATTMESSAGESTATUS           = 0x8007 // Message Status
let ATTMESSAGECLASS            = 0x8008 // Message Class
let ATTMESSAGEID               = 0x8009 // Message ID
let ATTPARENTID                = 0x800a // Parent ID
let ATTCONVERSATIONID          = 0x800b // Conversation ID
let ATTBODY                    = 0x800c // Body
let ATTPRIORITY                = 0x800d // Priority
let ATTATTACHDATA              = 0x800f // Attachment Data
let ATTATTACHTITLE             = 0x8010 // Attachment File Name
let ATTATTACHMETAFILE          = 0x8011 // Attachment Meta File
let ATTATTACHCREATEDATE        = 0x8012 // Attachment Creation Date
let ATTATTACHMODIFYDATE        = 0x8013 // Attachment Modification Date
let ATTDATEMODIFY              = 0x8020 // Date Modified
let ATTATTACHTRANSPORTFILENAME = 0x9001 // Attachment Transport Filename
let ATTATTACHRENDDATA          = 0x9002 // Attachment Rendering Data
let ATTMAPIPROPS               = 0x9003 // MAPI Properties
let ATTRECIPTABLE              = 0x9004 // Recipients
let ATTATTACHMENT              = 0x9005 // Attachment
let ATTTNEFVERSION             = 0x9006 // TNEF Version
let ATTOEMCODEPAGE             = 0x9007 // OEM Codepage
let ATTORIGNINALMESSAGECLASS   = 0x9008 // Original Message Class

struct Attachment     {
    var title:String = ""
    var byteArray:[UInt8]
}

struct Data {
    var body:[Data]
    var bodyHTML:[Data]
    var Attachments:[UnsafePointer<Attachment>]
    
}
