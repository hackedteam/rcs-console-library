package it.ht.rcs.console.evidence.rest
{
  import flash.utils.describeType;

  import it.ht.rcs.console.agent.rest.DBAgentDemo;
  import it.ht.rcs.console.evidence.model.Evidence;
  import it.ht.rcs.console.evidence.model.EvidenceData;
  import it.ht.rcs.console.evidence.model.EvidenceDataAddress;
  import it.ht.rcs.console.evidence.model.Filter;
  import it.ht.rcs.console.evidence.model.TypeCount;
  import it.ht.rcs.console.target.rest.DBTargetDemo;

  import mx.collections.ArrayCollection;
  import mx.rpc.events.ResultEvent;
  import mx.utils.ObjectUtil;

  public class DBEvidenceDemo implements IDBEvidence
  {

    private var filter:Object;

    private const SECONDS_PER_DAY:uint = (60 * 60 * 24)

    private static const DAY:uint = (1000 * 60 * 60 * 24)
    private static const HOUR:uint = (1000 * 60 * 60)
    private static const MINUTE:uint = (1000 * 60)

    private static var now:Date = new Date()
    private static var yesterday:Date = new Date(now.time - DAY)
    private static var tenDaysAgo:Date = new Date(now.time - (DAY * 10))

    private static function convertToUnix(value:Date):String
    {

      return Math.round(value.getTime() / 1000).toString();
    }

    public static var evidence:ArrayCollection = new ArrayCollection([


      // Jimmy Page (Nashville) a1 desktop
      //chat ! ALERTED
      new Evidence({_id: 'e24', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 50, 51)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 57, 00)), _mid: 0, note: '', rel: 4, type: 'chat', data: new EvidenceData({program: 'Twitter', from: 'jimmypage', from_display: 'Jimmy Page', content: 'JimmyPage: Going to Nashville this weekend', tr: 'JimmyPage: Going to Nashville this weekend'})}),

      //device
      new Evidence({_id: 'e12', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 53, 51)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 39)), _mid: 0, note: '', rel: 0, type: 'device', data: new EvidenceData({content: '<br>Processor: 4 x Intel(R) Core(TM) i5-3317U CPU @ 1.70GHz<br>Memory: 1920MB free / 3654MB total (47% used)<br>Disk: 70211MB free / 101828MB total<br>Battery: AC Connected - 55%<br><br>OS Version: Windows 7 Ultimate (64bit)<br>Registered to: Microsoft (Microsoft) {}<br>Locale settings: it_IT (UTC +01:00)<br>Time delta: +00:00:00<br><br>User: RCS Demo {ADMIN}<br>SID: S-1-5-21-1932372789-2859129667-2835794646-1000<br><br>Drive List:<br>C:\\ &quot;OS&quot; (disk)<br><br><br>Application List:<br>Intel(R) Rapid Start Technology   (1.0.0.1022)<br>Adobe Flash Player 11 ActiveX   (11.3.300.265)<br>Adobe Flash Player 11 Plugin   (11.5.502.110)<br>Advanced Audio FX Engine   (1.12.05)<br>BlackBerry Desktop Software 6.1   (6.1.0.36)<br>Kaspersky Internet Security 2013   (13.0.1.4190)<br>Mozilla Firefox 16.0.2 (x86 en-US)   (16.0.2)<br>Mozilla Maintenance Service   (16.0.2)<br>Microsoft Office Professional Plus 2010   (14.0.4763.1000)<br>TrueCrypt   (7.1a)<br>Windows Live Essentials   (15.4.3508.1109)<br>Dell DataSafe Local Backup   (9.4.67)<br>Intel(R) USB 3.0 eXtensible Host Controller Driver   (1.0.5.235)<br>Java 7 Update 9   (7.0.90)<br>Windows Live Mesh ActiveX Control for Remote Connections   (15.4.5722.2)<br>Intel(R) Rapid Storage Technology   (11.1.0.1006)<br>Absolute Reminder   (2.0.0.19)<br>Intel(R) Management Engine Components   (8.0.10.1464)<br>Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729   (9.0.30729)<br>Microsoft Silverlight   (4.0.50401.0)<br>Intel(R) WiDi   (3.0.12.0)<br>Microsoft Office   (14.0.6120.5004)<br>Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.17   (9.0.30729)<br>Dell Digital Delivery   (2.1.1002.0)<br>Dell DataSafe Local Backup - Support Software   (9.4.67)<br>Adobe Reader X MUI   (10.0.0)<br>Skype™ 6.0   (6.0.126)<br>Microsoft SQL Server 2005 Compact Edition [ENU]   (3.1.0000)<br>Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219   (10.0.40219)<br>Intel(R) Processor Graphics   (8.15.10.2761)<br>Realtek High Definition Audio Driver   (6.0.1.6662)<br>Intel(R) Control Center   (1.2.1.1007)<br>Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022   (9.0.21022)<br><br><br>Application List:<br>Dell Support Center   (3.1.5907.16)<br>Microsoft .NET Framework 4 Client Profile   (4.0.30319)<br>Microsoft .NET Framework 4 Extended   (4.0.30319)<br>Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219   (10.0.40219)<br>Intel(R) Wireless Display<br>Intel(R) PROSet/Wireless Software for Bluetooth(R) Technology   (2.1.1.0153)<br>Intel(R) PROSet/Wireless for Bluetooth(R) + High Speed   (15.1.0.0096)<br>Intel® PROSet/Wireless WiFi Software   (15.01.1000.0927)<br>Cypress TrackPad   (2.5.0.43)<br>Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.17   (9.0.30729)<br>Quickset64   (11.1.27)<br>Dell Edoc Viewer   (1.0.0)<br>Intel(R) Smart Connect Technology 3.0 x64   (3.0.30.1526)<br>'})}),

      //password
      new Evidence({_id: 'e02', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 53, 54)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 42)), _mid: 0, note: '', rel: 0, type: 'password', data: new EvidenceData({user: 'jimmypage1337', pass: 'FrancoFranchi99', program: 'Firefox/Thunderbird', service: 'https://accounts.google.com'})}),

      new Evidence({_id: 'e03', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 53, 54)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 42)), _mid: 0, note: '', rel: 0, type: 'password', data: new EvidenceData({user: 'jimmypage1337@gmail.com', pass: 'FrancoFranchi99', program: 'Firefox/Thunderbird', service: 'http://www.facebook.com'})}),

      new Evidence({_id: 'e04', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 53, 54)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 42)), _mid: 0, note: '', rel: 0, type: 'password', data: new EvidenceData({user: 'jimmypage8000', pass: 'FrancoFranchi99', program: 'Firefox/Thunderbird', service: 'https://twitter.com'})}),

      new Evidence({_id: 'e05', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 53, 54)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 42)), _mid: 0, note: '', rel: 0, type: 'password', data: new EvidenceData({user: 'root', pass: 'admin', program: 'Firefox/Thunderbird', service: 'http://172.16.42.100'})}),

      
      //money
      new Evidence({_id: 'e96', aid: 'a1', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 14, 53, 59)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 14, 58, 43)), _mid: 0, note: '', rel: 0, type: 'money', data: new EvidenceData({type: 'wallet', currency:'bitcoin',version:'80600', encrypted:false,size:'73728',balance:0})}),
      new Evidence({_id: 'e97', aid: 'a1', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 14, 53, 59)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 14, 59, 12)), _mid: 0, note: '', rel: 0, type: 'money', data: new EvidenceData({type: 'tx', currency:'bitcoin',from:'MINED BLOCK',rcpt:'LeTee2MvtE71F56rEzed77JEDCs9342', amount:0.05172392, incoming:true, balance:0,id:'0a2f66294be270a20f3ab0933040afd479ebe8rd63107eef4d00000943bee'})}),
      new Evidence({_id: 'e97', aid: 'a1', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 14, 53, 59)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 14, 59, 12)), _mid: 0, note: '', rel: 0, type: 'money', data: new EvidenceData({type: 'tx', currency:'bitcoin',from:'MINED BLOCK',rcpt:'LeTee2MvtE71F56rEzed77JEDCs9342', amount:0.09277216, incoming:false, balance:0,id:'0a2f66294be270a20f3ab0933040afd479ebe8rd63107eef4d00000943bee'})}),

      
      //position
      new Evidence({_id: 'e06', aid: 'a1', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 14, 53, 59)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 14, 58, 43)), _mid: 0, note: '', rel: 0, type: 'position', data: new EvidenceData({type: 'WIFI', latitude: 34.031249, longitude: -118.151848, accuracy: 51.0, address: new EvidenceDataAddress({text: "5257 E Beverly Blvd - East Los Angeles, CA 90022"}), wifi: [{mac: "98:FC:11:7A:82:AF", sig: -69, bssid: "PC-DOMENICO2_Network"}, {mac: "00:25:53:90:A8:76", sig: -76, "bssid": "TISCALI"}, {mac: "E8:40:40:80:61:B8", sig: -58, bssid: "ht-guest-wifi"}, {mac: "58:6D:8F:A0:50:71", sig: -37, bssid: "CiscoE4200"}, {mac: "00:24:89:20:3F:C5", sig: -76, bssid: "Vodafone-11116924"}, {mac: "30:85:A9:AA:CD:50", sig: -84, bssid: "ht-guest-wifi"}, {mac: "00:23:F8:30:A3:BC", sig: -71, bssid: "RSSM"}, {mac: "D4:D1:84:EA:90:07", sig: -85, bssid: "Telecom-82481153"}]})}),

      //camera
      new Evidence({_id: 'e35', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 53, 59)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 43)), _mid: 0, note: '', rel: 0, type: 'camera', data: new EvidenceData({_grid: '50bcc583572d6e0d0000019b.jpg'})}),

      //mouse
      new Evidence({_id: 'e38', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 57, 28)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 51)), _mid: 0, note: '', rel: 0, type: 'mouse', data: new EvidenceData({program: 'explorer.exe', window: 'FolderView', x: '44', y: '345', resolution: '1366 x 768', _grid: '50bcb01c572d6e0d00000017.jpg'})}), 
      new Evidence({_id: 'e39', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 27)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 59, 02)), _mid: 0, note: '', rel: 0, type: 'mouse', data: new EvidenceData({program: 'Skype.exe', window: 'UNKNOWN', x: '218', y: '268', resolution: '1366 x 768', _grid: '50bcb026572d6e0d0000004f.jpg'})}), 
      new Evidence({_id: 'e40', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 27)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 27)), _mid: 0, note: '', rel: 0, type: 'mouse', data: new EvidenceData({program: 'Skype.exe', window: 'UNKNOWN', x: '322', y: '451', resolution: '1366 x 768', _grid: '50bcb057572d6e0d0000005a.jpg'})}),

      //chat
      new Evidence({_id: 'e21', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 56, 11)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 16, 41)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Facebook', topic: '', incoming: true, rcpt: 'jimmy.page', from: 'joey.fargo', from_display: 'joey.fargo', content: 'Joey Fargo: <span dir="rtl">لدي بعض المعلومات بالنسبة لك حول ناشفيل</span>', tr: 'Joey Fargo: <span dir= "RTL"> I have some information for you on Nashville </span>'})}), 
      new Evidence({_id: 'e22', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 56, 51)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 16, 41)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Facebook', topic: '', rcpt: 'joey.fargo', from: 'jimmy.page', from_display: 'jimmy.page', content: 'Jimmy Page: OK, meet me on Skype', tr: 'Jimmy Page: OK, meet me on Skype'})}),

      //mouse
      new Evidence({_id: 'e41', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 12, 15)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 13, 48)), _mid: 0, note: '', rel: 0, type: 'mouse', data: new EvidenceData({program: 'explorer.exe', window: 'Shut down', x: '352', y: '702', resolution: '1366 x 768', _grid: '50bcb39c572d6e0d00000122.jpg'})}),

      //position
      new Evidence({_id: 'e07', aid: 'a1', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 16, 36, 26)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 16, 37, 33)), _mid: 0, note: '', rel: 0, type: 'position', data: new EvidenceData({type: 'WIFI', latitude: 34.034733, longitude: -118.152413, accuracy: 49.0, address: new EvidenceDataAddress({text: "5220 Telford St - East Los Angeles, CA 90022"}), wifi: [{mac: "98:FC:11:7A:82:AF", sig: -69, bssid: "PC-DOMENICO2_Network"}, {mac: "00:25:53:90:A8:76", sig: -76, "bssid": "TISCALI"}, {mac: "E8:40:40:80:61:B8", sig: -58, bssid: "ht-guest-wifi"}, {mac: "58:6D:8F:A0:50:71", sig: -37, bssid: "CiscoE4200"}, {mac: "00:24:89:20:3F:C5", sig: -76, bssid: "Vodafone-11116924"}, {mac: "30:85:A9:AA:CD:50", sig: -84, bssid: "ht-guest-wifi"}, {mac: "00:23:F8:30:A3:BC", sig: -71, bssid: "RSSM"}, {mac: "D4:D1:84:EA:90:07", sig: -85, bssid: "Telecom-82481153"}]})}),

      //camera
      new Evidence({_id: 'e36', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 36, 52)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 37, 35)), _mid: 0, note: '', rel: 0, type: 'camera', data: new EvidenceData({_grid: '50bcb013572d6e0d00000008.jpg'})}),

      //chat
      new Evidence({_id: 'e23', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 57, 31)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 16, 41)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Facebook', topic: '', incoming: true, rcpt: 'jimmy.page', from: 'joey.fargo', from_display: 'joey.fargo', content: 'Joey Fargo: <span dir="rtl">بلى</span>', tr: 'Joey fargo: Yeah'})}),

      //addressbook
      new Evidence({_id: 'e14', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 57, 55)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 54)), _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name: 'Jdoe', contact: '', info: 'Screen name: Jhone Doe', program: 'skype', type: 'peer'})}),
      //new Evidence({_id: 'e15', aid: 'a1', blo: false, da: convertToUnix(new Date(2012,11,03,14,57,55)), dr: convertToUnix(new Date(2012,11,03,14,58,54)), _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name:'//ro_uic',contact:'', info:'Screen name: Quequero', program:'skype', type:'peer'})}),
      new Evidence({_id: 'e16', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 57, 55)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 54)), _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name: 'bmuschitiello.cons.mi', contact: '', info: 'Screen name: Bruno', program: 'skype', type: 'peer'})}),

      //camera

      new Evidence({_id: 'e37', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 57, 55)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 54)), _mid: 0, note: '', rel: 0, type: 'camera', data: new EvidenceData({_grid: '50bcb01c572d6e0d0000001a.jpg'})}),

      //addresbook
      new Evidence({_id: 'e17', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 57, 57)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 55)), _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name: 'pangoeye@mailcatch.com', contact: '', info: 'Screen name: Mark Klovenberg', program: 'gmail', type: 'peer'})}),
      new Evidence({_id: 'e18', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 57, 57)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 55)), _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name: 'scissor@mailcatch.com', contact: '', info: 'Screen name: Luis Anderson', program: 'gmail', type: 'peer'})}), 
      new Evidence({_id: 'e19', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 57, 57)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 55)), _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name: 'Jimmy Page', contact: '', info: 'Facebook page: /pippo.pluto.73345048', program: 'facebook', type: 'target'})}),


      //keylog
      //new Evidence({_id: 'e08', aid: 'a1', blo: false, da: convertToUnix(new Date(2012,11,03,15,01,42)), dr: convertToUnix(new Date(2012,11,03,15,01,46)), _mid: 0, note: '', rel: 0, type: 'keylog', data: new EvidenceData({program: 'Skype.exe', window: 'Skype™ - Add a contact', content:'alberto.ornaghi'})}),
      new Evidence({_id: 'e09', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 01, 44)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 02, 46)), _mid: 0, note: '', rel: 0, type: 'keylog', data: new EvidenceData({program: 'TrueCrypt.exe', window: 'Enter password for C:\\Users\\RCS Demo\Desktop\\secret_op.tc', content: 'secret123TP!'})}),

      //call
      //new Evidence({_id: 'e30', aid: 'a1', blo: false, da: convertToUnix(new Date(2012,11,03,15,05,08)), dr: convertToUnix(new Date(2012,11,03,15,05,51)), _mid: 0, note: '', rel: 0, type: 'call', data: new EvidenceData({peer:'bmuschitiello.cons.mi', program:'Skype', duration:'11.990408163265307', _grid:'50bcb1bf572d6e0d0000009d.mp3'})}),

      //chat
      //new Evidence({_id: 'e25', aid: 'a1', blo: false, da:  convertToUnix(new Date(2012,11,03,15,08,18)), dr:  convertToUnix(new Date(2012,11,03,15,08,47)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'SKYPE', topic:'', peer:'alberto.ornaghi proc.test', content:'proc.test: Hi alberto.ornaghi! I’d like to add you on Skype. JimmyPage'})}),
      new Evidence({_id: 'e26', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 09, 45)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 10, 48)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'SKYPE', topic: '', peer: 'alejandro.reade jimmy.page', content: 'alejandro.reade: Here we are!', tr: 'alejandro.reade: Here we are!'})}),

      //call
      new Evidence({_id: 'e31', aid: 'a1', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 15, 09, 52)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 15, 10, 51)), _mid: 0, note: '', rel: 2, type: 'call', data: new EvidenceData({peer: 'alejandro.reade', program: 'Skype', duration: '49.03451247165534', _grid: '50bcb1bf572d6e0d0000009d.mp3'})}),

      //keylog
      new Evidence({_id: 'e10', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 10, 54)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 11, 46)), _mid: 0, note: '', rel: 0, type: 'keylog', data: new EvidenceData({program: 'TrueCrypt.exe', window: 'TrueCrypt', content: '↵'})}), 
      new Evidence({_id: 'e11', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 10, 59)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 11, 46)), _mid: 0, note: '', rel: 0, type: 'keylog', data: new EvidenceData({program: 'explorer.exe', window: 'Program Manager', content: '␡'})}),

      //file - check for download !!!
      new Evidence({_id: 'e13', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 11, 08)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 11, 49)), _mid: 0, note: '', rel: 0, type: 'file', data: new EvidenceData({path: 'op_nash.doc', type: 'capture', size: '101376'})}),

      //addressbook --------------

      new Evidence({_id: 'e19', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 01)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 58)), _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name: 'Faber O\'Connell', contact: '', info: 'Home address street: Kulim Facebook page: /fabrizio.cornelli', program: 'facebook', type: 'peer'})}), 
      new Evidence({_id: 'e20', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 01)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 58, 58)), _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name: 'Deejay', contact: '', info: 'Screen name: deejay', program: 'twitter', type: 'friend'})}),

      //chat

      new Evidence({_id: 'e26', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 10, 09)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 10, 48)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'SKYPE', topic: '', peer: 'alejandro.reade jimmy.page', content: 'alejandro.reade: posted file secret_op.tc to members of this conversation', tr: 'alejandro.reade: posted file secret_op.tc to members of this conversation'})}),

      //url
      new Evidence({_id: 'e27', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 14, 36)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 14, 46)), _mid: 0, note: '', rel: 0, type: 'url', data: new EvidenceData({url: 'www.howtomakeabomb.com', title: 'How to make a bomb!', program: 'Firefox', keywords: ''})}), 
      new Evidence({_id: 'e28', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 14, 37)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 14, 46)), _mid: 0, note: '', rel: 0, type: 'url', data: new EvidenceData({url: 'http://www.facebook.com/messages/jimmy.page', title: 'Jimmy Page - Messages - Mozilla Firefox', program: 'Firefox', keywords: ''})}), 
      new Evidence({_id: 'e29', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 14, 38)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 14, 46)), _mid: 0, note: '', rel: 0, type: 'url', data: new EvidenceData({url: 'http://www.yahoo.com/', title: 'Yahoo - Mozilla Firefox', program: 'Firefox', keywords: ''})}),


      //screenshot
      new Evidence({_id: 'e32', aid: 'a1', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 16, 29, 07)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 16, 30, 06)), _mid: 0, note: '', rel: 0, type: 'screenshot', data: new EvidenceData({program: 'firefox.exe', window: 'Jimmy Page - Messaggi - Mozilla Firefox', _grid: '50bcb444572d6e0d00000140.jpg'})}), 
      new Evidence({_id: 'e32', aid: 'a1', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 15, 14, 36)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 15, 14, 36)), _mid: 0, note: '', rel: 0, type: 'screenshot', data: new EvidenceData({program: 'rundll32.exe', window: 'Status Log', _grid: '50bcc57e572d6e0d0000016a.jpg'})}), 
      new Evidence({_id: 'e33', aid: 'a1', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 15, 14, 36)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 15, 14, 36)), _mid: 0, note: '', rel: 0, type: 'screenshot', data: new EvidenceData({program: 'Rim.Desktop.exe', window: 'BlackBerry® Desktop Software', _grid: '50bcc581572d6e0d00000184.jpg'})}), 
      new Evidence({_id: 'e34', aid: 'a1', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 15, 14, 36)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 15, 14, 36)), _mid: 0, note: '', rel: 0, type: 'screenshot', data: new EvidenceData({program: 'Skype.exe', window: 'Skype', _grid: '50bcc583572d6e0d00000194.jpg'})}),
      //chat
      new Evidence({_id: 'e70', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 56, 11)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 16, 41)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Skype', topic: '', incoming: true, rcpt: 'jimmy.page', from: 'alejandro.reade', from_display: 'alejandro.reade', content: 'Alejandro Reade: Hi Jimmy!?', tr: 'Hi Jimmy!'})}), 
      new Evidence({_id: 'e71', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 56, 51)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 16, 41)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Skype', topic: '', incoming: false, rcpt: 'alejandro.reade', from: 'jimmy.page', from_display: 'jimmy.page', content: 'Jimmy Page: Hi bro', tr: 'Jimmy Page: Hi bro'})}), 
      new Evidence({_id: 'e72', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 57, 31)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 16, 41)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Skype', topic: '', incoming: true, rcpt: 'jimmy.page', from: 'alejandro.reade', from_display: 'alejandro.reade', content: 'Alejandro Reade: How are you?', tr: 'Alejandro Reade: How are you?'})}),

      //mouse

      new Evidence({_id: 'e41', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 03, 10, 39)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 14, 04)), _mid: 0, note: '', rel: 0, type: 'mouse', data: new EvidenceData({program: 'explorer.exe', window: 'Running applications', x: '288', y: '752', resolution: '1366 x 768', _grid: '50bcb3d8572d6e0d00000134.jpg'})}),

      //mobile (Joey Fargo)
      new Evidence({_id: 'e50', aid: 'a6', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 03, 10, 39)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 15, 14, 5)), _mid: 0, note: '', rel: 0, type: 'calendar', data: new EvidenceData({event: 'Christmas', begin: 1356393600, end: 1356480000})}), 
      new Evidence({_id: 'e51', aid: 'a6', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 03, 10, 39)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 03, 10, 39)), _mid: 0, note: '', rel: 0, type: 'device', data: new EvidenceData({content: '-- SYSTEM --<br>Board: GT-P7500<br>Brand: samsung<br>Device: GT-P7500<br>Display: GT-P7500<br>Model:HMJ37.XXKG7<br>IMEI: 357750040484403<br>IMSI: 222018702502813<br>cpuUsage: 45.846767<br>cpuTotal: 74948<br>cpuIdle: 88527<br>-- PROPERTIES --<br>java.vm.version : 1.5.1<br>java.vendor.url : http://www.android.com/<br>java.vm.vendor.url : http://www.android.com/<br>user.dir : /<br>java.vm.name : Dalvik<br>java.home : /system<br>user.region : IT<br>javax.net.ssl.trustStore : /system/etc/security/cacerts.bks<br>java.runtime.name : Android Runtime<br>user.home : <br>java.io.tmpdir : /sdcard<br>http.agent : Dalvik/1.5.1 (Linux; U; Android 3.1; GT-P7500 Build/HMJ37)<br>java.net.preferIPv6Addresses : true<br>java.version : 0<br>java.boot.class.path : /system/framework/core.jar:/system/framework/apache-xml.jar:/system/framework/bouncycastle.jar:/system/framework/ext.jar:/system/framework/framework.jar:/system/framework/android.policy.jar:/system/framework/services.jar:/system/framework/core-junit.jar<br>java.library.path : /vendor/lib:/system/lib<br>file.separator : /<br>java.specification.vendor : The Android Project<br>file.encoding : UTF-8<br>line.separator : <br><br>java.vm.specification.version : 0.9<br>java.vm.specification.vendor : The Android Project<br>os.name : Linux<br>java.vm.vendor : The Android Project<br>path.separator : :<br>android.vm.dexfile : true<br>java.ext.dirs : <br>java.class.path : .<br>os.version : 2.6.36.3<br>java.specification.name : Dalvik Core Library<br>java.compiler : <br>user.language : it<br>user.name : <br>os.arch : armv7l<br>java.runtime.version : 0.9<br>java.class.version : 46.0<br>java.vendor : The Android Project<br>java.vm.specification.name : Dalvik Virtual Machine Specification<br>java.specification.version : 0.9<br>Localizzazione rete	com.google.android.location	1.0.0	100<br>eBook	com.samsung.ebook.reader	v3.14 20110706-1	1<br>PhoneUtil	com.sec.android.app.phoneutil	1.0.0	1<br>Kies con Wi-Fi	com.sec.android.app.kieswifi	1.2.0	1<br>Package Access Helper	com.android.defcontainer	3.1-XXKG7	12<br>Tool di avvio	com.android.launcher	3.1-XXKG7	12<br>SecPhone	com.sec.phone	1.0	1<br>Galleria	com.android.sec.gallery3d	1.1.30682	30682<br>Rubrica	com.android.contacts	3.1-XXKG7	12<br>Fai squillare il mio telefono	com.sec.android.app.ringmyphone	1.0	1<br>MmsProvision	com.sec.android.app.MmsProvision	3.1-XXKG7	12<br>Dati cellulare	com.android.phone	3.1-XXKG7	12<br>FotaClient	com.sec.android.fotaclient	1.0	1<br>Helv Neue S	com.monotype.android.font.helvneuelt	1.0	1<br>Proviamo la panoramica	com.sec.android.motions.settings.panningtutorial	1.0	1<br>Calcolatrice	com.android.calculator2	3.1-XXKG7	12<br>DataCompress	com.android.networking	1.0	1<br>Visualizzatore HTML	com.android.htmlviewer	3.1-XXKG7	12<br>Google Account	com.google.android.gsf.login	3.1-136449	12<br>Condivisione Bluetooth	com.android.bluetooth	3.1-XXKG7	12<br>Memorizz. in calendario	com.android.providers.calendar	3.1-XXKG7	12<br>MTP Application	com.android.MtpApplication	1.0	1<br>AngryGPS	com.android.angryGps	1.0	1<br>Agenda	com.android.calendar	3.1-XXKG7	12<br>Licenze	com.samsung.android.app.divx	1.10	0<br>Browser	com.android.browser	3.1-XXKG7	12<br>BadgeProvider	com.sec.android.provider.badge	1.0	1<br>Ap Mobile	com.sec.android.widgetapp.newswidget	11.07.05.01	1<br>Social Hub	com.sec.android.socialhub	4.00.110617	4<br>Download	com.android.providers.downloads.ui	3.1-XXKG7	12<br>Samsung TTS	com.samsung.SMT	1.0	1<br>ShutdownApp	com.sec.android.app.shutdown	1.0	1<br>SNSAccountTw	com.sec.android.app.snsaccounttw	1.0	1<br>Messaggi	com.android.mms	3.1-XXKG7	12<br>Archivio multimediale	com.android.providers.media	3.1-XXKG7	12<br>com.sec.android.app.lcdtest	com.sec.android.app.lcdtest	1.0	1<br>com.samsung.InputEventApp	com.samsung.InputEventApp	1.0.0	1<br>TalkBack	com.google.android.marvin.talkback	2.7.5	21<br>Installatore certificato	com.android.certinstaller	3.1-XXKG7	12<br>SnsImageCache	com.sec.android.app.snsimagecache	1.0	1<br>SNSAccountLi	com.sec.android.app.snsaccountli	1.0	1<br>Polaris Office	com.infraware.PolarisOfficeForTablet	3.0 - build 5r5869FV03	-756397043<br>RoseEUKor	com.monotype.android.font.rosemary	1.0	1<br>Blue sea	com.hu1.wallpaper.bluesea	1.0	1<br>Promemoria	com.sec.android.app.memo	1.0	1<br>Fusi orari	com.sec.android.app.worldclock	1.0	1<br>SNSAccountFb	com.sec.android.app.snsaccountfb	1.0	1<br>Editor immagini	com.sec.android.mimage.photoeditor	1.0	1<br>Impostazioni	com.android.settings	3.1-XXKG7	12<br>com.sec.android.app.samsungapps.una	com.sec.android.app.samsungapps.una	2.0.8	14<br>Street View	com.google.android.street	1.7.0.4	17004<br>com.sec.android.app.screencapture	com.sec.android.app.screencapture	1.0	1<br>Ricerca Google	com.google.android.googlequicksearchbox	1.3.0.136449	130136449<br>Memorizzazione contenuto protetto di DRM	com.android.providers.drm	3.1-XXKG7	12<br>Memoria protezione	com.android.providers.security	3.1-XXKG7	12<br>Adobe Flash Player 11.1	com.adobe.flashplayer	11.1.111.10	111111010<br>Servizi Exchange	com.android.exchange	3.1	310000<br>Seleziona sfondi animati	com.android.wallpaper.livepicker	3.1-XXKG7	12<br>Mini pen memo	com.diotek.mini_penmemo	0.9.118	119<br>Market	com.google.android.finsky	1.1.0	110<br>Tastiera Android	com.google.android.inputmethod.latin	3.1-136449	12<br>Installer pacchetto	com.android.packageinstaller	3.1-XXKG7	12<br>Errore	com.sec.app.RilErrorNotifier	1.0.0	1<br>Remote Controls	com.sec.pcw.device	1.0	1<br>Configurazione rete mobile	com.android.providers.telephony	3.1-XXKG7	12<br>Pico TTS	com.svox.pico	1.0	1<br>Aggiornamento software	com.wssyncmldm	2.0.0	2<br>WlanTest	com.sec.android.app.wlantest	1.0.0	1<br>E-mail	com.android.email	3.1	310000<br>screenshot	com.geeksoft.screenshot	2.3	27<br>Maps	com.google.android.apps.maps	5.2.0	5217<br>Pulse	com.alphonso.pulse	2.0.4	40<br>AccuWeather.com	com.sec.android.widgetapp.weatherclock	11.06.28.01	1<br>Controllo programmi	com.sec.android.widgetapp.programmonitorwidget	1.12	2<br>Memorizzazione impostazioni	com.android.providers.settings	3.1-XXKG7	12<br>Stampa mobile	com.sec.android.app.mobileprint	1.5	5<br>Gestione download	com.android.providers.downloads	3.1-XXKG7	12<br>SyncML-DS	com.smlds	1.0	1<br>wssyncmlnps	com.wssnps	1.0.0	1<br>Registratore di suoni	com.android.soundrecorder	3.1-XXKG7	12<br>Mobile Tracker	com.android.settings.mt	1.0	1<br>MobileID DualShield 5.3	com.deepnet.andmob5	5.3	3<br>Factory Test	com.sec.android.app.factorytest	1.0	1<br>Aurora	com.hu1.wallpaper.aurora2WXGATAB	1.1	1<br>Market Updater	com.android.vending.updater	1.0	1000<br>SNS	com.sec.android.app.sns	1.5	2<br>Google Partner Setup	com.google.android.partnersetup	3.1-136449	12<br>PopupuiReceiver	com.sec.android.app.popupuireceiver	1.4	1<br>Ricerca vocale	com.google.android.voicesearch	2.2.1	20201001<br>Doppio orologio	com.sec.android.widgetapp.dualclock	1.0	1<br>Mini musica	com.sec.minimode.music	1.0	1<br>Fotocamera	com.sec.android.app.camera	1.0	1<br>com.android.wallpaper.holospiral	com.android.wallpaper.holospiral	3.1-XXKG7	12<br>Market Feedback Agent	com.google.android.feedback	3.1-136449	12<br>LogsProvider	com.sec.android.provider.logsprovider	1.0	12<br>Google Talk	com.google.android.talk	3.1	310<br>Archivio	com.sec.android.app.myfiles	1.0.0	1<br>Esonero responsabilità servizi social network	com.sec.android.app.snsdisclaimer	1.0	1<br>Dizionario utente	com.android.providers.userdictionary	3.1-XXKG7	12<br>Calcolatrice	com.sec.android.app.popupcalculator	1.0	1<br>Configurazione guidata	com.android.setupwizard	1.3	130<br>wipeoutreceiver	com.wipereceiver	1.0	1<br>TTS Service	android.tts	3.1-XXKG7	12<br>Orologio digitale	com.sec.android.widgetapp.digitalclock	1.0	1<br>com.sec.android.app.smtsetup	com.sec.android.app.smtsetup	3.1-XXKG7	12<br>Account Samsung	com.osp.app.signin	1.0	1<br>Lettore suoni	com.sec.android.app.soundplayer	1.0	1<br>Music Hub	com.samsung.music	11.07.07.01	1<br>Samsung Apps	com.sec.android.app.samsungapps	3.0.021	30021<br>Google Calendar - Sincronizzazione	com.google.android.syncadapters.calendar	3.1-136449	12<br>Sistema Android	android	3.1-XXKG7	12<br>Memoria contatti	com.android.providers.contacts	3.1-XXKG7	12<br>Pen memo	com.diotek.penmemo	0.9.117	119<br>Service mode	com.sec.android.app.servicemodeapp	3.1-XXKG7	12<br>I miei caricamenti	com.google.android.apps.uploader	1.5.13	1513<br>Search Applications Provider	com.android.providers.applications	3.1-XXKG7	12<br>BluetoothTest	com.android.bluetoothtest	1.0	1<br>Google Play Store	com.android.vending	3.5.19	8011019<br>Perso	com.sec.android.app.personalization	3.1-XXKG7	12<br>CSC	com.samsung.sec.android.application.csc	1.0	1<br>com.sec.android.providers.downloads	com.sec.android.providers.downloads	3.1-XXKG7	12<br>Interf. sis	com.android.systemui	3.1-XXKG7	12<br>Video	com.sec.android.app.videoplayer	1.0	1<br>QR Droid	la.droid.qr	5.1	510<br>Gmail	com.google.android.gm	3.1-136449	211<br>Preconfig	com.android.Preconfig	3.1-XXKG7	12<br>Swype	com.swype.android.inputmethod	3.9.86.27849	27849<br>MiniTaskcloserService	com.sec.minimode.taskcloser	1.0	1<br>com.samsung.app.playreadyui	com.samsung.app.playreadyui	3.1-XXKG7	12<br>Sincronizzazione Google Segnalibri	com.google.android.syncadapters.bookmarks	3.1-136449	12<br>Superuser	com.noshufou.android.su	2.3.6.1 - Added clear log to menu in log tab, More languages, Bugfixes	25<br>YouTube	com.google.android.youtube	3.1.1	3101<br>Factory Mode	com.sec.android.app.factory	1.0	1<br>OMACP	com.wsomacp	3.0	3<br>Sveglia	com.android.deskclock	3.1-XXKG7	12<br>Destinatari messaggi	com.samsung.AlertRecipients	3.1-XXKG7	12<br>MAIN LABEL	com.sec.android.app.MainLabel	1.0	1<br>Lettore musicale	com.sec.android.app.music	1.0	1<br>Yahoo! Finance	com.sec.android.widgetapp.stockclock	11.07.01.01	1<br>Google Services Framework	com.google.android.gsf	3.1-136449	12<br>com.sec.android.app.minimode.res	com.sec.android.app.minimode.res	3.1-XXKG7	12<br>Tastiera Samsung	com.samsung.sec.android.inputmethod.axt9	1.0	1<br>Impostazioni USB	com.sec.android.Kies	1.0	1<br>ChocoEUKor	com.monotype.android.font.chococooky	1.0	1<br>MobileID Android	com.deepnet.andmob	1.0	1<br>Stato contatti	com.sec.android.widgetapp.buddiesnow	1.0	1<br>CrashNotifier	com.samsung.crashnotifier	1.0.0	1<br>Contatti Google - Sincronizzazione	com.google.android.syncadapters.contacts	3.1-136449	12<br>DataCreate	com.android.samsungtest.DataCreate	1.0	1<br>Google Backup Transport	com.google.android.backup	3.1-136449	12<br>'})}), new Evidence({_id: 'e52', aid: 'a6', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 03, 10, 39)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 03, 10, 39)), _mid: 0, note: '', rel: 0, type: 'addressbook', data: new EvidenceData({name: 'Jane Doe', contact: '366 653 9757', info: 'Mobile phone number: 366 653 9757<br>Phone: 366 653 9757<br>Phone Type: 2', type: 'peer', program: ''})}), new Evidence({_id: 'e53', aid: 'a6', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 03, 10, 39)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 03, 10, 39)), _mid: 0, note: '', rel: 0, type: 'message', data: new EvidenceData({time: 1355795701, incoming: 0, from: 'local', rcpt: '+393666539755', type: 'sms', content: 'Hello, world.'})}), new Evidence({_id: 'e54', aid: 'a6', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 03, 10, 39)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 03, 10, 39)), _mid: 0, note: '', rel: 0, type: 'message', data: new EvidenceData({time: 1355795938, incoming: 1, from: '393666539755', rcpt: 'local', type: 'sms', content: 'Hello, Jack.'})}), new Evidence({_id: 'e07', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 03, 10, 39)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 03, 10, 39)), _mid: 0, note: '', rel: 0, type: 'position', data: new EvidenceData({type: 'WIFI', latitude: 34.031249, longitude: -118.151848, accuracy: 49.0, address: new EvidenceDataAddress({text: "5257 E Beverly Blvd - East Los Angeles, CA 90022"}), wifi: [{mac: "98:FC:11:7A:82:AF", sig: -69, bssid: "PC-DOMENICO2_Network"}, {mac: "00:25:53:90:A8:76", sig: -76, "bssid": "TISCALI"}, {mac: "E8:40:40:80:61:B8", sig: -58, bssid: "ht-guest-wifi"}, {mac: "58:6D:8F:A0:50:71", sig: -37, bssid: "CiscoE4200"}, {mac: "00:24:89:20:3F:C5", sig: -76, bssid: "Vodafone-11116924"}, {mac: "30:85:A9:AA:CD:50", sig: -84, bssid: "ht-guest-wifi"}, {mac: "00:23:F8:30:A3:BC", sig: -71, bssid: "RSSM"}, {mac: "D4:D1:84:EA:90:07", sig: -85, bssid: "Telecom-82481153"}]})}), new Evidence({_id: 'e56', aid: 'a6', blo: false, da: convertToUnix(new Date(now.fullYear, now.month, now.date, 03, 10, 39)), dr: convertToUnix(new Date(now.fullYear, now.month, now.date, 03, 10, 39)), _mid: 0, note: '', rel: 0, type: 'device', data: new EvidenceData({content: '-- SYSTEM --<br>Board: GT-P7500<br>Brand: samsung<br>Device: GT-P7500<br>Display: GT-P7500<br>Model:HMJ37.XXKG7<br>IMEI: 357750040484403<br>IMSI: 222018702502813<br>cpuUsage: 45.973854<br>cpuTotal: 75821<br>cpuIdle: 89101<br>-- PROPERTIES --<br>java.vm.version : 1.5.1<br>java.vendor.url : http://www.android.com/<br>java.vm.vendor.url : http://www.android.com/<br>user.dir : /<br>java.vm.name : Dalvik<br>java.home : /system<br>user.region : IT<br>javax.net.ssl.trustStore : /system/etc/security/cacerts.bks<br>java.runtime.name : Android Runtime<br>user.home : <br>java.io.tmpdir : /sdcard<br>http.agent : Dalvik/1.5.1 (Linux; U; Android 3.1; GT-P7500 Build/HMJ37)<br>java.net.preferIPv6Addresses : true<br>java.version : 0<br>java.boot.class.path : /system/framework/core.jar:/system/framework/apache-xml.jar:/system/framework/bouncycastle.jar:/system/framework/ext.jar:/system/framework/framework.jar:/system/framework/android.policy.jar:/system/framework/services.jar:/system/framework/core-junit.jar<br>java.library.path : /vendor/lib:/system/lib<br>file.separator : /<br>java.specification.vendor : The Android Project<br>file.encoding : UTF-8<br>line.separator : <br><br>java.vm.specification.version : 0.9<br>java.vm.specification.vendor : The Android Project<br>os.name : Linux<br>java.vm.vendor : The Android Project<br>path.separator : :<br>android.vm.dexfile : true<br>java.ext.dirs : <br>java.class.path : .<br>os.version : 2.6.36.3<br>java.specification.name : Dalvik Core Library<br>java.compiler : <br>user.language : it<br>user.name : <br>os.arch : armv7l<br>java.runtime.version : 0.9<br>java.class.version : 46.0<br>java.vendor : The Android Project<br>java.vm.specification.name : Dalvik Virtual Machine Specification<br>java.specification.version : 0.9<br>Localizzazione rete	com.google.android.location	1.0.0	100<br>eBook	com.samsung.ebook.reader	v3.14 20110706-1	1<br>PhoneUtil	com.sec.android.app.phoneutil	1.0.0	1<br>Kies con Wi-Fi	com.sec.android.app.kieswifi	1.2.0	1<br>Package Access Helper	com.android.defcontainer	3.1-XXKG7	12<br>Tool di avvio	com.android.launcher	3.1-XXKG7	12<br>SecPhone	com.sec.phone	1.0	1<br>Galleria	com.android.sec.gallery3d	1.1.30682	30682<br>Rubrica	com.android.contacts	3.1-XXKG7	12<br>Fai squillare il mio telefono	com.sec.android.app.ringmyphone	1.0	1<br>MmsProvision	com.sec.android.app.MmsProvision	3.1-XXKG7	12<br>Dati cellulare	com.android.phone	3.1-XXKG7	12<br>FotaClient	com.sec.android.fotaclient	1.0	1<br>Helv Neue S	com.monotype.android.font.helvneuelt	1.0	1<br>Proviamo la panoramica	com.sec.android.motions.settings.panningtutorial	1.0	1<br>Calcolatrice	com.android.calculator2	3.1-XXKG7	12<br>DataCompress	com.android.networking	1.0	1<br>Visualizzatore HTML	com.android.htmlviewer	3.1-XXKG7	12<br>Google Account	com.google.android.gsf.login	3.1-136449	12<br>Condivisione Bluetooth	com.android.bluetooth	3.1-XXKG7	12<br>Memorizz. in calendario	com.android.providers.calendar	3.1-XXKG7	12<br>MTP Application	com.android.MtpApplication	1.0	1<br>AngryGPS	com.android.angryGps	1.0	1<br>Agenda	com.android.calendar	3.1-XXKG7	12<br>Licenze	com.samsung.android.app.divx	1.10	0<br>Browser	com.android.browser	3.1-XXKG7	12<br>BadgeProvider	com.sec.android.provider.badge	1.0	1<br>Ap Mobile	com.sec.android.widgetapp.newswidget	11.07.05.01	1<br>Social Hub	com.sec.android.socialhub	4.00.110617	4<br>Download	com.android.providers.downloads.ui	3.1-XXKG7	12<br>Samsung TTS	com.samsung.SMT	1.0	1<br>ShutdownApp	com.sec.android.app.shutdown	1.0	1<br>SNSAccountTw	com.sec.android.app.snsaccounttw	1.0	1<br>Messaggi	com.android.mms	3.1-XXKG7	12<br>Archivio multimediale	com.android.providers.media	3.1-XXKG7	12<br>com.sec.android.app.lcdtest	com.sec.android.app.lcdtest	1.0	1<br>com.samsung.InputEventApp	com.samsung.InputEventApp	1.0.0	1<br>TalkBack	com.google.android.marvin.talkback	2.7.5	21<br>Installatore certificato	com.android.certinstaller	3.1-XXKG7	12<br>SnsImageCache	com.sec.android.app.snsimagecache	1.0	1<br>SNSAccountLi	com.sec.android.app.snsaccountli	1.0	1<br>Polaris Office	com.infraware.PolarisOfficeForTablet	3.0 - build 5r5869FV03	-756397043<br>RoseEUKor	com.monotype.android.font.rosemary	1.0	1<br>Blue sea	com.hu1.wallpaper.bluesea	1.0	1<br>Promemoria	com.sec.android.app.memo	1.0	1<br>Fusi orari	com.sec.android.app.worldclock	1.0	1<br>SNSAccountFb	com.sec.android.app.snsaccountfb	1.0	1<br>Editor immagini	com.sec.android.mimage.photoeditor	1.0	1<br>Impostazioni	com.android.settings	3.1-XXKG7	12<br>com.sec.android.app.samsungapps.una	com.sec.android.app.samsungapps.una	2.0.8	14<br>Street View	com.google.android.street	1.7.0.4	17004<br>com.sec.android.app.screencapture	com.sec.android.app.screencapture	1.0	1<br>Ricerca Google	com.google.android.googlequicksearchbox	1.3.0.136449	130136449<br>Memorizzazione contenuto protetto di DRM	com.android.providers.drm	3.1-XXKG7	12<br>Memoria protezione	com.android.providers.security	3.1-XXKG7	12<br>Adobe Flash Player 11.1	com.adobe.flashplayer	11.1.111.10	111111010<br>Servizi Exchange	com.android.exchange	3.1	310000<br>Seleziona sfondi animati	com.android.wallpaper.livepicker	3.1-XXKG7	12<br>Mini pen memo	com.diotek.mini_penmemo	0.9.118	119<br>Market	com.google.android.finsky	1.1.0	110<br>Tastiera Android	com.google.android.inputmethod.latin	3.1-136449	12<br>Installer pacchetto	com.android.packageinstaller	3.1-XXKG7	12<br>Errore	com.sec.app.RilErrorNotifier	1.0.0	1<br>Remote Controls	com.sec.pcw.device	1.0	1<br>Configurazione rete mobile	com.android.providers.telephony	3.1-XXKG7	12<br>Pico TTS	com.svox.pico	1.0	1<br>Aggiornamento software	com.wssyncmldm	2.0.0	2<br>WlanTest	com.sec.android.app.wlantest	1.0.0	1<br>E-mail	com.android.email	3.1	310000<br>screenshot	com.geeksoft.screenshot	2.3	27<br>Maps	com.google.android.apps.maps	5.2.0	5217<br>Pulse	com.alphonso.pulse	2.0.4	40<br>AccuWeather.com	com.sec.android.widgetapp.weatherclock	11.06.28.01	1<br>Controllo programmi	com.sec.android.widgetapp.programmonitorwidget	1.12	2<br>Memorizzazione impostazioni	com.android.providers.settings	3.1-XXKG7	12<br>Stampa mobile	com.sec.android.app.mobileprint	1.5	5<br>Gestione download	com.android.providers.downloads	3.1-XXKG7	12<br>SyncML-DS	com.smlds	1.0	1<br>wssyncmlnps	com.wssnps	1.0.0	1<br>Registratore di suoni	com.android.soundrecorder	3.1-XXKG7	12<br>Mobile Tracker	com.android.settings.mt	1.0	1<br>MobileID DualShield 5.3	com.deepnet.andmob5	5.3	3<br>Factory Test	com.sec.android.app.factorytest	1.0	1<br>Aurora	com.hu1.wallpaper.aurora2WXGATAB	1.1	1<br>Market Updater	com.android.vending.updater	1.0	1000<br>SNS	com.sec.android.app.sns	1.5	2<br>Google Partner Setup	com.google.android.partnersetup	3.1-136449	12<br>PopupuiReceiver	com.sec.android.app.popupuireceiver	1.4	1<br>Ricerca vocale	com.google.android.voicesearch	2.2.1	20201001<br>Doppio orologio	com.sec.android.widgetapp.dualclock	1.0	1<br>Mini musica	com.sec.minimode.music	1.0	1<br>Fotocamera	com.sec.android.app.camera	1.0	1<br>com.android.wallpaper.holospiral	com.android.wallpaper.holospiral	3.1-XXKG7	12<br>Market Feedback Agent	com.google.android.feedback	3.1-136449	12<br>LogsProvider	com.sec.android.provider.logsprovider	1.0	12<br>Google Talk	com.google.android.talk	3.1	310<br>Archivio	com.sec.android.app.myfiles	1.0.0	1<br>Esonero responsabilità servizi social network	com.sec.android.app.snsdisclaimer	1.0	1<br>Dizionario utente	com.android.providers.userdictionary	3.1-XXKG7	12<br>Calcolatrice	com.sec.android.app.popupcalculator	1.0	1<br>Configurazione guidata	com.android.setupwizard	1.3	130<br>wipeoutreceiver	com.wipereceiver	1.0	1<br>TTS Service	android.tts	3.1-XXKG7	12<br>Orologio digitale	com.sec.android.widgetapp.digitalclock	1.0	1<br>com.sec.android.app.smtsetup	com.sec.android.app.smtsetup	3.1-XXKG7	12<br>Account Samsung	com.osp.app.signin	1.0	1<br>Lettore suoni	com.sec.android.app.soundplayer	1.0	1<br>Music Hub	com.samsung.music	11.07.07.01	1<br>Samsung Apps	com.sec.android.app.samsungapps	3.0.021	30021<br>Google Calendar - Sincronizzazione	com.google.android.syncadapters.calendar	3.1-136449	12<br>Sistema Android	android	3.1-XXKG7	12<br>Memoria contatti	com.android.providers.contacts	3.1-XXKG7	12<br>Pen memo	com.diotek.penmemo	0.9.117	119<br>Service mode	com.sec.android.app.servicemodeapp	3.1-XXKG7	12<br>I miei caricamenti	com.google.android.apps.uploader	1.5.13	1513<br>Search Applications Provider	com.android.providers.applications	3.1-XXKG7	12<br>BluetoothTest	com.android.bluetoothtest	1.0	1<br>Google Play Store	com.android.vending	3.5.19	8011019<br>Perso	com.sec.android.app.personalization	3.1-XXKG7	12<br>CSC	com.samsung.sec.android.application.csc	1.0	1<br>com.sec.android.providers.downloads	com.sec.android.providers.downloads	3.1-XXKG7	12<br>Interf. sis	com.android.systemui	3.1-XXKG7	12<br>Video	com.sec.android.app.videoplayer	1.0	1<br>QR Droid	la.droid.qr	5.1	510<br>Gmail	com.google.android.gm	3.1-136449	211<br>Preconfig	com.android.Preconfig	3.1-XXKG7	12<br>Swype	com.swype.android.inputmethod	3.9.86.27849	27849<br>MiniTaskcloserService	com.sec.minimode.taskcloser	1.0	1<br>com.samsung.app.playreadyui	com.samsung.app.playreadyui	3.1-XXKG7	12<br>Sincronizzazione Google Segnalibri	com.google.android.syncadapters.bookmarks	3.1-136449	12<br>Superuser	com.noshufou.android.su	2.3.6.1 - Added clear log to menu in log tab, More languages, Bugfixes	25<br>YouTube	com.google.android.youtube	3.1.1	3101<br>Factory Mode	com.sec.android.app.factory	1.0	1<br>OMACP	com.wsomacp	3.0	3<br>Sveglia	com.android.deskclock	3.1-XXKG7	12<br>Destinatari messaggi	com.samsung.AlertRecipients	3.1-XXKG7	12<br>MAIN LABEL	com.sec.android.app.MainLabel	1.0	1<br>Lettore musicale	com.sec.android.app.music	1.0	1<br>Yahoo! Finance	com.sec.android.widgetapp.stockclock	11.07.01.01	1<br>Google Services Framework	com.google.android.gsf	3.1-136449	12<br>com.sec.android.app.minimode.res	com.sec.android.app.minimode.res	3.1-XXKG7	12<br>Tastiera Samsung	com.samsung.sec.android.inputmethod.axt9	1.0	1<br>Impostazioni USB	com.sec.android.Kies	1.0	1<br>ChocoEUKor	com.monotype.android.font.chococooky	1.0	1<br>MobileID Android	com.deepnet.andmob	1.0	1<br>Stato contatti	com.sec.android.widgetapp.buddiesnow	1.0	1<br>CrashNotifier	com.samsung.crashnotifier	1.0.0	1<br>Contatti Google - Sincronizzazione	com.google.android.syncadapters.contacts	3.1-136449	12<br>DataCreate	com.android.samsungtest.DataCreate	1.0	1<br>Google Backup Transport	com.google.android.backup	3.1-136449	12<br>'})}), new Evidence({_id: 'e07', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 03, 10, 39)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 03, 10, 39)), _mid: 0, note: '', rel: 0, type: 'position', data: new EvidenceData({type: 'WIFI', latitude: 34.034733, longitude: -118.152413, accuracy: 49.0, address: new EvidenceDataAddress({text: "5220 Telford St - East Los Angeles, CA 90022"}), cell: {mcc: '222', mnc: 1, lac: '61208', cid: '79168016', db: '0', adv: '0', age: '0'}})}), new Evidence({_id: 'e58', aid: 'a6', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 03, 10, 39)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 03, 10, 39)), _mid: 0, note: '', rel: 0, type: 'application', data: new EvidenceData({program: 'com.android.launcher', action: 'START', desc: 'com.android.launcher'})}), new Evidence({_id: 'e58', aid: 'a6', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 03, 10, 39)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 03, 10, 39)), _mid: 0, note: '', rel: 0, type: 'application', data: new EvidenceData({program: 'com.android.networking', action: 'STOP', desc: 'com.android.networking'})}), new Evidence({_id: 'e59', aid: 'a6', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 03, 10, 39)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 03, 10, 39)), _mid: 0, note: '', rel: 0, type: 'screenshot', data: new EvidenceData({program: 'Desktop', window: 'Desktop', _grid: 'SC20121218-030617.jpg'})}),

      //url
      new Evidence({_id: 'e37', aid: 'a6', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 14, 36)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 14, 46)), _mid: 0, note: '', rel: 0, type: 'url', data: new EvidenceData({url: 'www.howtomakeabomb.com', title: 'How to make a bomb!', program: 'Firefox', keywords: ''})}),
      //chat
      new Evidence({_id: 'e38', aid: 'a6', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 56, 11)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 16, 41)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Facebook', topic: '', incoming: false, rcpt: 'jimmy.page', from: 'joey.fargo', from_display: 'joey.fargo', content: 'Joey Fargo: <span dir="rtl">لدي بعض المعلومات بالنسبة لك حول ناشفيل</span>', tr: 'Joey Fargo: <span dir= "RTL"> I have some information for you on Nashville </span>'})}), 
      new Evidence({_id: 'e39', aid: 'a6', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 56, 51)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 16, 41)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Facebook', topic: '', incoming: true, rcpt: 'joey.fargo', from: 'jimmy.page', from_display: 'jimmy.page', content: 'Jimmy Page: OK, meet me on Skype', tr: 'Jimmy Page: OK, meet me on Skype'})}), 
      new Evidence({_id: 'e40', aid: 'a6', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 57, 31)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 16, 41)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Facebook', topic: '', incoming: false, rcpt: 'jimmy.page', from: 'joey.fargo', from_display: 'joey.fargo', content: 'Joey Fargo: <span dir="rtl">بلى</span>', tr: 'Joey fargo: Yeah'})}),

      // Joey Fargo (SwordFish), a4 desktop,a5 desktop, a6 mobile
      //new Evidence({_id: 'e06', aid: 'a4', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: 'clipboard', data: new EvidenceData({program: 'Word', window: 'New Document', content: 'The quick brown fox'})}),
      // Alejandro Reade (Swordfish), a3 desktop
      new Evidence({_id: 'e04', aid: 'a3', blo: false, da: 1336135607, dr: 1336135607, _mid: 0, note: '', rel: 0, type: 'keylog', data: new EvidenceData({program: 'Calc', window: 'Calculator', content: '12000+15000'})}),

      new Evidence({_id: 'e60', aid: 'a3', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 56, 11)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 16, 41)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Skype', topic: '', incoming: false, rcpt: 'jimmy.page', from: 'alejandro.reade', from_display: 'alejandro.reade', content: 'Alejandro Reade: Hi Jimmy!', tr: 'Hi Jimmy!'})}), 
      new Evidence({_id: 'e61', aid: 'a3', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 56, 51)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 16, 41)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Skype', topic: '', incoming: true, rcpt: 'alejandro.reade', from: 'jimmy.page', from_display: 'jimmy.page', content: 'Jimmy Page: Hi bro', tr: 'Jimmy Page: Hi bro'})}), 
      new Evidence({_id: 'e62', aid: 'a3', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 14, 57, 31)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 15, 16, 41)), _mid: 0, note: '', rel: 0, type: 'chat', data: new EvidenceData({program: 'Skype', topic: '', incoming: false, rcpt: 'jimmy.page', from: 'alejandro.reade', from_display: 'alejandro.reade', content: 'Alejandro Reade: How are you?', tr: 'Alejandro Reade: How are you?'})})

      // Guido (Blackjack), a7 desktop ,a8 mobile
      // new Evidence({_id: 'e09', aid: 'a7', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: 'clipboard', data: new EvidenceData({program: 'Word', window: 'New Document', content: 'The quick brown fox'})}),


      // Dmitry Vitaly (All In), a9 mobile
      //new Evidence({_id: 'e12', aid: 'a9', blo: false, da: 1309354166, dr: 1309354166, _mid: 0, note: '', rel: 0, type: 'clipboard', data: new EvidenceData({program: 'Word', window: 'New Document', content: 'The quick brown fox'})}),

      ])

    public static var command:ArrayCollection = new ArrayCollection([

      // Jimmy Page (SwordFish) a1 desktop, a2 mobile
      new Evidence({_id: 'c01', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}), 
      new Evidence({_id: 'c02', aid: 'a2', blo: true, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}), 
      new Evidence({_id: 'c03', aid: 'a2', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),

      // Alejandro Reade (Swordfish), a3 desktop
      new Evidence({_id: 'c04', aid: 'a3', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}), 
      new Evidence({_id: 'c05', aid: 'a3', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),

      // Joey Fargo (SwordFish), a4 desktop,a5 desktop, a6 mobile
      new Evidence({_id: 'c06', aid: 'a4', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}), 
      new Evidence({_id: 'c07', aid: 'a5', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}), 
      new Evidence({_id: 'c08', aid: 'a6', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),

      // Guido (Blackjack), a7 desktop ,a8 mobile
      new Evidence({_id: 'c09', aid: 'a7', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}), 
      new Evidence({_id: 'c10', aid: 'a8', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}), 
      new Evidence({_id: 'c11', aid: 'a8', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}),

      // Dmitry Vitaly (All In), a9 mobile
      new Evidence({_id: 'c12', aid: 'a9', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}), 
      new Evidence({_id: 'c13', aid: 'a9', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})}), 
      new Evidence({_id: 'c14', aid: 'a9', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({command: 'cmd.exe /c dir c:\\', content: 'Il volume nell\'unita C non ha etichetta. \nNumero di serie del volume: 207B-b349\nDirectory di c:\\ \n17/06/2008 12.25 0 AUTOEXEC.BAT\n17/06/2008/ 12.25 0 CONFIG.SYS\n26/11/2010 16.56 Documents and Settings'})})])

    public static var ip:ArrayCollection = new ArrayCollection([

      // Jimmy Page (SwordFish) a1 desktop, a2 mobile
      new Evidence({_id: 'c01', aid: 'a1', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.16.42.2'})}), 
      new Evidence({_id: 'c02', aid: 'a2', blo: true, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.16.42.2'})}), 
      new Evidence({_id: 'c03', aid: 'a2', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.16.42.2'})}),

      // Alejandro Reade (Swordfish), a3 desktop
      new Evidence({_id: 'c04', aid: 'a3', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.170'})}), 
      new Evidence({_id: 'c05', aid: 'a3', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.170'})}),

      // Joey Fargo (SwordFish), a4 desktop,a5 desktop, a6 mobile
      new Evidence({_id: 'c06', aid: 'a4', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}), 
      new Evidence({_id: 'c07', aid: 'a5', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}), 
      new Evidence({_id: 'c08', aid: 'a6', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}),

      // Guido (Blackjack), a7 desktop ,a8 mobile
      new Evidence({_id: 'c09', aid: 'a7', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}), 
      new Evidence({_id: 'c10', aid: 'a8', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}), 
      new Evidence({_id: 'c11', aid: 'a8', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}),

      // Dmitry Vitaly (All In), a9 mobile
      new Evidence({_id: 'c12', aid: 'a9', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}), 
      new Evidence({_id: 'c13', aid: 'a9', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})}), 
      new Evidence({_id: 'c14', aid: 'a9', blo: false, da: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), dr: convertToUnix(new Date(tenDaysAgo.fullYear, tenDaysAgo.month, tenDaysAgo.date, 16, 29, 07)), _mid: 0, note: '', rel: 0, type: '', data: new EvidenceData({content: '172.20.20.193'})})])

    public function all(filter:Object, onResult:Function = null, onFault:Function = null):void
    {
      //trace(ObjectUtil.toString(filter));
      //agent, target, type, date
      this.filter = filter;
      evidence.filterFunction = filterEvidence;
      evidence.refresh()

      if (onResult != null)
        onResult(new ResultEvent('evidence.all', false, true, evidence));
    }

    private function filterEvidence(item:Object):Boolean
    {
      var result:Boolean = true;

      for (var criteria:* in filter) {
        if (criteria == "_id" && !(item._id == filter._id)) {
          result = false;
          break;
        }

        if (criteria == "target" && !(DBAgentDemo.getTarget(item.aid) == filter.target)) {
          result = false;
          break;
        }

        if (criteria == "agent" && !(item.aid == filter.agent)) {
          result = false;
          break;
        }

        if (criteria == "type" && !isInArray(item.type, filter.type)) {
          result = false;
          break;
        }

        if (criteria == "blo" && !(item.blo == filter.blo[0])) {
          result = false;
          break;
        }

        if (criteria == "rel" && !isInArray(item.rel, filter.rel)) {
          result = false;
          break
        }
        ;

        if (criteria == "aid" && !isInArray(item.aid, filter.aid)) {
          result = false;
          break;
        }

        if (criteria == "date" && !isInDateRange(item, filter)) {
          result = false;
          break;
        }

        if (criteria == "info") {
          result = searchForKeyword(item.data, filter.info);
          break;
        }

      }
      return result;

    }

    private function searchForKeyword(data:Object, keyword:String = ""):Boolean
    {
      var keywords:Array = keyword.split(" ")
      var matches:Number = 0
      //loop item.data
      var result:Boolean = false;
      //address - complex
      //cell -complex
      //wifi - complex
      var props:Array = ["_grid", "_grid_size", "access", "accuracy", "action", "attach", "attr", "begin", "body", "command", "contact", "content", "tr", "desc", "duration", "end", "event", "from", "info", "ip", "keywords", "latitude", "longitude", "name", "pass", "path", "peer", "process", "program", "rcpt", "resolution", "service", "size", "spool", "status", "subject", "title", "topic", "type", "url", "user", "users", "window", "x", "y"]


      for (var i:int = 0; i < props.length; i++) {
        if (data.hasOwnProperty([props[i]])) {
          var s:String = data[props[i]] as String || "";

          for (var k:int = 0; k < keywords.length; k++) {
            if (s.toLowerCase().indexOf(keywords[k].toLowerCase()) != -1)
              matches++
          }

        }
      }

      if (matches == keywords.length)
        result = true;
      //return text.indexOf(keyword)!=-1;
      return result;
    }

    private function filterCommands(item:Object):Boolean
    {
      var result:Boolean = true;

      for (var criteria:* in filter) {
        if (criteria == "_id" && !(item._id == filter._id)) {
          result = false;
          break;
        }

        if (criteria == "target" && !(DBAgentDemo.getTarget(item.aid) == filter.target)) {
          result = false;
          break;
        }

        if (criteria == "agent" && !(item.aid == filter.agent)) {
          result = false;
          break;
        }

        if (criteria == "type" && !isInArray(item.type, filter.type)) {
          result = false;
          break;
        }

        if (criteria == "blo" && !(item.blo == filter.blo[0])) {
          result = false;
          break;
        }

        if (criteria == "rel" && !isInArray(item.rel, filter.rel)) {
          result = false;
          break
        }
        ;

        if (criteria == "aid" && !isInArray(item.aid, filter.aid)) {
          result = false;
          break;
        }

        if (criteria == "date" && !isInDateRange(item, filter)) {
          result = false;
          break;
        }
      }
      return result;

    }

    private function filterIps(item:Object):Boolean
    {
      var result:Boolean = true;

      for (var criteria:* in filter) {
        if (criteria == "_id" && !(item._id == filter._id)) {
          result = false;
          break;
        }

        if (criteria == "target" && !(DBAgentDemo.getTarget(item.aid) == filter.target)) {
          result = false;
          break;
        }

        if (criteria == "agent" && !(item.aid == filter.agent)) {
          result = false;
          break;
        }

        if (criteria == "type" && !isInArray(item.type, filter.type)) {
          result = false;
          break;
        }

        if (criteria == "blo" && !(item.blo == filter.blo[0])) {
          result = false;
          break;
        }

        if (criteria == "rel" && !isInArray(item.rel, filter.rel)) {
          result = false;
          break
        }
        ;

        if (criteria == "aid" && !isInArray(item.aid, filter.aid)) {
          result = false;
          break;
        }

        if (criteria == "date" && !isInDateRange(item, filter)) {
          result = false;
          break;
        }
      }
      return result;

    }

    private function isInArray(value:*, arr:Array):Boolean
    {
      var result:Boolean;

      for (var i:int = 0; i < arr.length; i++) {
        if (value == arr[i]) {
          result = true;
          break;
        }
      }
      return result;
    }

    private function isInDateRange(item:Object, filter:Object):Boolean
    {
      var result:Boolean = false;

      if (filter.date) {
        // TODO - How to get the correct actual time?
        var now:uint = uint(new Date().time / 1000);
        var from:uint;
        var to:Number;


        if (filter.from == 0 && filter.to == 0) {
          result = true;
          return result
        }
        ;

        //last 24 hours - default value
        if (!filter.from && !filter.to) {
          from = now - SECONDS_PER_DAY;

          if (item[filter.date] >= from) {
            result = true;
            return result
          }
          ;
        }

        //from only
        if (filter.from && !filter.to) {

          if (filter.from == "24h" && item[filter.date] >= now - SECONDS_PER_DAY) {
            result = true;
            return result
          }


          if (item[filter.date] >= filter.from) {
            result = true;
            return result
          }
          ;
        }

        //to only
        if (!filter.from && filter.to) {
          if (item[filter.date] <= filter.to) {
            result = true;
            return result
          }
          ;
        }

        //from and to
        if (filter.from && filter.to) {
          if (item[filter.date] <= filter.to && item[filter.date] >= filter.from) {
            result = true;
            return result
          }
          ;
        }


      }
      return result;
    }

    public function update(evidence:Evidence, property:Object, target:String, onResult:Function = null, onFault:Function = null):void
    {
    }

    public function destroy(evidence:Evidence, target:String, onResult:Function = null, onFault:Function = null):void
    {
    }

    public function destroy_all(params:Object, onResult:Function = null, onFault:Function = null):void
    {
    }

    public function agent_status(params:Object, onResult:Function = null, onFault:Function = null):void
    {
    }

    public function sync_start(params:Object, onResult:Function = null, onFault:Function = null):void
    {
    }

    public function sync_stop(params:Object, onResult:Function = null, onFault:Function = null):void
    {
    }

    public function info(filter:Object, onResult:Function = null, onFault:Function = null):void
    {
    }

    public function commands(filter:Object, onResult:Function = null, onFault:Function = null):void
    {

      this.filter = filter;
      command.filterFunction = filterCommands;
      command.refresh()

      if (onResult != null)
        onResult(new ResultEvent('evidence.commands', false, true, command));

    }

    public function ips(filter:Object, onResult:Function = null, onFault:Function = null):void
    {
      this.filter = filter;
      ip.filterFunction = filterIps;
      ip.refresh()

      if (onResult != null)
        onResult(new ResultEvent('evidence.ips', false, true, ip));
    }

    public function total(filter:Object, onResult:Function = null, onFault:Function = null):void
    {
      trace("total called")
      trace(ObjectUtil.toString(filter));

      var result:ArrayCollection = new ArrayCollection()
      var counts:Object = new Object()

      var addressbook:TypeCount = new TypeCount();
      addressbook.type = "addressbook";
      counts["addressbook"] = addressbook;

      var application:TypeCount = new TypeCount();
      application.type = "application";
      counts["application"] = application;

      var calendar:TypeCount = new TypeCount();
      calendar.type = "calendar";
      counts["calendar"] = calendar;
      
      var money:TypeCount = new TypeCount();
      money.type = "money";
      counts["money"] = money;

      var call:TypeCount = new TypeCount();
      call.type = "call";
      counts["call"] = call;

      var camera:TypeCount = new TypeCount();
      camera.type = "camera";
      counts["camera"] = camera;

      var chat:TypeCount = new TypeCount();
      chat.type = "chat";
      counts["chat"] = chat;

      var clipboard:TypeCount = new TypeCount();
      clipboard.type = "clipboard";
      counts["clipboard"] = clipboard;

      var device:TypeCount = new TypeCount();
      device.type = "device";
      counts["device"] = device;

      var file:TypeCount = new TypeCount();
      file.type = "file";
      counts["file"] = file;

      var keylog:TypeCount = new TypeCount();
      keylog.type = "keylog";
      counts["keylog"] = keylog;

      var message:TypeCount = new TypeCount();
      message.type = "message";
      counts["message"] = message;

      var mic:TypeCount = new TypeCount();
      mic.type = "mic";
      counts["mic"] = mic;

      var mouse:TypeCount = new TypeCount();
      mouse.type = "mouse";
      counts["mouse"] = mouse;

      var password:TypeCount = new TypeCount();
      password.type = "password";
      counts["password"] = password;

      var position:TypeCount = new TypeCount();
      position.type = "position";
      counts["position"] = position;

      var print:TypeCount = new TypeCount();
      print.type = "print";
      counts["print"] = print;

      var screenshot:TypeCount = new TypeCount();
      screenshot.type = "screenshot";
      counts["screenshot"] = screenshot;

      var url:TypeCount = new TypeCount();
      url.type = "url";
      counts["url"] = url;

      var total:TypeCount = new TypeCount();
      total.type = "total";
      counts["total"] = total;

      result.source = [addressbook, application, calendar, call, camera, chat, clipboard, device, file, keylog, message, mic, money, mouse, password, position, print, screenshot, url, total];

      var i:uint;
      var currentEvidence:Evidence;
      var currentTypeCount:TypeCount;

      //get current agent stuff
      if (filter.agent) {
        for (i = 0; i < evidence.source.length; i++) {
          currentEvidence = evidence.source[i] as Evidence;

          if (currentEvidence.aid == filter.agent) {
            counts[currentEvidence.type].count++
            total.count++
          }
        }
      }
      //get current target stuff
      else {
        for (i = 0; i < evidence.source.length; i++) {
          currentEvidence = evidence.source[i] as Evidence;

          if (DBAgentDemo.getTarget(currentEvidence.aid) == filter.target) {
            counts[currentEvidence.type].count++
            total.count++
          }
        }
      }


      if (onResult != null)
        onResult(new ResultEvent('evidence.total', false, true, result));
    }

    public function filesystem(targetId:String, agentId:String, filter:String, onResult:Function = null, onFault:Function = null):void
    {
    }

    public function show(id:String, target:String, onResult:Function = null, onFault:Function = null):void
    {
    }

    public function filter_all(onResult:Function = null, onFault:Function = null):void
    {
    }

    public function filter_destroy(filter:Filter, onResult:Function = null, onFault:Function = null):void
    {
    }

    public function filter_create(filter:Object, onResult:Function = null, onFault:Function = null):void
    {
    }

    public function translate(id:String, target:String, onResult:Function = null, onFault:Function = null):void
    {
    }

  }

}
