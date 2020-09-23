VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "National Weather Service U.S. Map Center"
   ClientHeight    =   6915
   ClientLeft      =   150
   ClientTop       =   540
   ClientWidth     =   10635
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6915
   ScaleWidth      =   10635
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   1035
      Top             =   855
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   660
      Left            =   15
      TabIndex        =   0
      Top             =   45
      Width           =   690
      ExtentX         =   1217
      ExtentY         =   1164
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.Menu MnuGraphicalForecasts 
      Caption         =   "Graphical Forecasts"
      Begin VB.Menu MnuWeatherWarnings 
         Caption         =   "Weather Warnings"
      End
      Begin VB.Menu MnuMesoscaleDiscussions 
         Caption         =   "Mesoscale Discussions"
      End
      Begin VB.Menu MnuTodaysConvectiveOutlooks 
         Caption         =   "Today's Convective Outlooks"
         Begin VB.Menu MnuCurrentConvectiveWatches 
            Caption         =   "Current Convective Watches"
         End
         Begin VB.Menu MnuCategoricalConvectiveOutlook 
            Caption         =   "Categorical Convective Outlook"
            Visible         =   0   'False
         End
         Begin VB.Menu MnuTornadoeConvectiveOutlook 
            Caption         =   "Tornadoe Convective Outlook"
         End
         Begin VB.Menu MnuHailConvectiveOutlook 
            Caption         =   "Hail Convective Outlook"
         End
         Begin VB.Menu MnuWindConvectiveOutlook 
            Caption         =   "Wind Convective Outlook"
         End
      End
      Begin VB.Menu MnuAviationForecasts 
         Caption         =   "Aviation Forecasts"
         Begin VB.Menu MnuClearAirTurbulence 
            Caption         =   "Clear Air Turbulence 3 Hour"
         End
         Begin VB.Menu MnuClearAirTurbulence12HourForcast 
            Caption         =   "Clear Air Turbulence 12 Hour"
         End
      End
      Begin VB.Menu MnuWeather 
         Caption         =   "Predominant Weather"
      End
      Begin VB.Menu MnuChanceOfPrecipitation 
         Caption         =   "Chance Of Precipitation"
      End
      Begin VB.Menu MnuTemperatureAndWind 
         Caption         =   "Temperature And Wind"
      End
      Begin VB.Menu MnuPrecipitationAmount 
         Caption         =   "Precipitation Amount"
      End
      Begin VB.Menu MnuPalmerDrought 
         Caption         =   "Palmer Drought"
      End
      Begin VB.Menu MnuDewPoint 
         Caption         =   "Dew Point"
      End
      Begin VB.Menu MnuSkyCover 
         Caption         =   "Sky Cover"
      End
      Begin VB.Menu MnuFireWeatherForecasts 
         Caption         =   "Fire Weather Forecasts"
      End
      Begin VB.Menu MnuSignificantRiverFloodOutlook 
         Caption         =   "Significant River Flood Outlook"
      End
      Begin VB.Menu Mnu24HourPrecipitationTotal 
         Caption         =   "24 Hour Precipitation Total"
      End
   End
   Begin VB.Menu MnuCurentWeather 
      Caption         =   "Curent Weather Data"
      Begin VB.Menu MnuSurfaceAnalysis 
         Caption         =   "Surface Analysis"
      End
      Begin VB.Menu MnuCurrentAIRSIGMETs 
         Caption         =   "Current AIR/SIGMETs"
      End
      Begin VB.Menu MnuRecentEarthQuakes 
         Caption         =   "Earthquake Activity"
      End
      Begin VB.Menu MnuElNiñoLaNiña 
         Caption         =   "El Niño/La Niña"
         Begin VB.Menu MnuDailySeaSurfaceTemperatures 
            Caption         =   "Daily Sea Surface Temperatures"
         End
         Begin VB.Menu MnuPacificSurfaceTempAnimation 
            Caption         =   "Pacific Surface Temp. Animation"
         End
      End
      Begin VB.Menu MnuSnowMonitoring 
         Caption         =   "Snow Monitoring"
         Begin VB.Menu MnuSnowDepth 
            Caption         =   "Snow Depth"
         End
         Begin VB.Menu MnuSnowWaterEquivalent 
            Caption         =   "Snow Water Equivalent"
         End
      End
      Begin VB.Menu MnuTopsoilMoistureMonitoring 
         Caption         =   "Topsoil Moisture Monitoring"
         Begin VB.Menu MnuUSDATopSoilMoistureShort 
            Caption         =   "USDA Top Soil Moisture Short"
         End
         Begin VB.Menu MnuUSDATopSoilMoistureShort5Year 
            Caption         =   "USDA Top Soil Moisture Short 5 Year"
         End
         Begin VB.Menu MnuUSDATopSoilMoistureShort10Year 
            Caption         =   "USDA Top Soil Moisture Short 10 Year"
         End
      End
      Begin VB.Menu MnuDroughtWatch 
         Caption         =   "Drought Watch"
      End
      Begin VB.Menu MnuVegetationHealth 
         Caption         =   "Vegetation Health"
      End
      Begin VB.Menu MnuChangeInVegetationHealth 
         Caption         =   "Change In Vegetation Health"
      End
      Begin VB.Menu MnuCurrentwaterresourcesconditions 
         Caption         =   "Current Water Resource Conditions"
      End
   End
   Begin VB.Menu MnuSatalightImages 
      Caption         =   "Satalight Images"
      Begin VB.Menu MnuSatellite 
         Caption         =   "North America Infared Satellite"
      End
      Begin VB.Menu MnuGeostationarySatalightImages 
         Caption         =   "Geostationary Satalight Images"
         Begin VB.Menu MnuWaterVapor 
            Caption         =   "Water Vapor"
            Index           =   1
            Begin VB.Menu MnuEastCONUS_US_WV 
               Caption         =   "East"
            End
            Begin VB.Menu MnuWestCONUS_US_WV 
               Caption         =   "West"
            End
            Begin VB.Menu MnuAlaskaCONUS_US_WV 
               Caption         =   "Alaska"
            End
            Begin VB.Menu MnuHawaiiCONUS_US_WV 
               Caption         =   "Hawaii"
            End
            Begin VB.Menu MnuCompositCONUS_US_WV 
               Caption         =   "Composit"
            End
         End
         Begin VB.Menu MnuInfared 
            Caption         =   "Infared"
            Begin VB.Menu MnuEastCONUS_US_IR 
               Caption         =   "East"
            End
            Begin VB.Menu MnuWestCONUS_US_IR 
               Caption         =   "West"
            End
            Begin VB.Menu MnuAlaskaCONUS_US_IR 
               Caption         =   "Alaska"
            End
            Begin VB.Menu MnuHawaiiCONUS_US_IR 
               Caption         =   "Hawaii"
            End
         End
      End
      Begin VB.Menu MnuGOES_East 
         Caption         =   "GOES-East"
         Begin VB.Menu MnuVisible1 
            Caption         =   "Visible"
            Begin VB.Menu MnuGOES_EastVIWesternAtlanticAndCaribbean 
               Caption         =   "Western Atlantic And Caribbean"
            End
            Begin VB.Menu MnuGOES_EastVIGulfofMexico 
               Caption         =   "Gulf Of Mexico"
            End
            Begin VB.Menu MnuGOES_EastVINorthwestAtlantic 
               Caption         =   "Northwest Atlantic "
            End
            Begin VB.Menu MnuGOES_EastVIEastPacific 
               Caption         =   "East Pacific"
            End
         End
         Begin VB.Menu MnuInfrared1 
            Caption         =   "Infrared"
            Begin VB.Menu MnuGOES_EastIRWesternAtlanticAndCaribbean 
               Caption         =   "Western Atlantic And Caribbean"
            End
            Begin VB.Menu MnuGOES_EastIRGulfOfMexico 
               Caption         =   "Gulf Of Mexico"
            End
            Begin VB.Menu MnuGOES_EastIRNorthwestAtlantic 
               Caption         =   "Northwest Atlantic"
            End
            Begin VB.Menu MnuGOES_EastIREastPacific 
               Caption         =   "East Pacific"
            End
         End
         Begin VB.Menu MnuShortwaveIR1 
            Caption         =   "Shortwave Infrared"
            Begin VB.Menu MnuGOES_EastSIRWesternAtlanticAndCaribbean 
               Caption         =   "Western Atlantic And Caribbean"
            End
            Begin VB.Menu MnuGOES_EastSIRGulfOfMexico 
               Caption         =   "Gulf Of Mexico"
            End
            Begin VB.Menu MnuGOES_EastSIRNorthwestAtlantic 
               Caption         =   "Northwest Atlantic"
            End
            Begin VB.Menu MnuGOES_EastSIREastPacific 
               Caption         =   "East Pacific"
            End
         End
         Begin VB.Menu MnuWaterVapor1 
            Caption         =   "Water Vapor"
            Begin VB.Menu MnuGOES_EastWVWesternAtlanticAndCaribbean 
               Caption         =   "Western Atlantic And Caribbean"
            End
            Begin VB.Menu MnuGOES_EastWVGulfOfMexico 
               Caption         =   "Gulf Of Mexico"
            End
            Begin VB.Menu MnuGOES_EastWVNorthwestAtlantic 
               Caption         =   "Northwest Atlantic"
            End
            Begin VB.Menu MnuGOES_EastWVEastPacific 
               Caption         =   "East Pacific"
            End
         End
      End
      Begin VB.Menu MnuGOES_West 
         Caption         =   "GOES-West"
         Begin VB.Menu MnuVisible2 
            Caption         =   "Visible"
            Begin VB.Menu MnuGOES_WestVICentralPacific 
               Caption         =   "Central Pacific"
            End
            Begin VB.Menu MnuGOES_WestVINorthEastPacific 
               Caption         =   "North East Pacific"
            End
         End
         Begin VB.Menu MnuInfrared2 
            Caption         =   "Infrared"
            Begin VB.Menu MnuGOES_WestIRCentralPacific 
               Caption         =   "Central Pacific"
            End
            Begin VB.Menu MnuGOES_WestIRNorthEastPacific 
               Caption         =   "North East Pacific"
            End
         End
         Begin VB.Menu MnuShortwaveInfrared 
            Caption         =   "Shortwave Infrared"
            Begin VB.Menu MnuGOES_WestSICentralPacific 
               Caption         =   "Central Pacific"
            End
            Begin VB.Menu MnuGOES_WestSINorthEastPacific 
               Caption         =   "North East Pacific"
            End
         End
         Begin VB.Menu MnuWaterVapor2 
            Caption         =   "Water Vapor"
            Begin VB.Menu MnuGOES_WestWVCentralPacific 
               Caption         =   "Central Pacific"
            End
            Begin VB.Menu MnuGOES_WestWVNorthEastPacific 
               Caption         =   "North East Pacific"
            End
         End
      End
      Begin VB.Menu MnuGOESSolar 
         Caption         =   "GOES-Solar"
         Begin VB.Menu MnuGOESSolarXrayImager 
            Caption         =   "GOES Solar X-ray Imager"
         End
         Begin VB.Menu MnuGOESSolarXrayFlux 
            Caption         =   "GOES Solar X-ray Flux"
         End
      End
   End
   Begin VB.Menu MnuRadarImages 
      Caption         =   "Radar Images"
      Begin VB.Menu MnuFronts 
         Caption         =   "Fronts"
      End
      Begin VB.Menu MnuDopplerRadar 
         Caption         =   "Doppler Radar"
         Begin VB.Menu MnuNationalDopplerRadar 
            Caption         =   "North America Doppler Radar"
         End
         Begin VB.Menu MnuAlaskaDopplerRadar 
            Caption         =   "Alaska Doppler Radar"
         End
         Begin VB.Menu MnuHawaiiDopplerRadar 
            Caption         =   "Hawaii Doppler Radar"
         End
         Begin VB.Menu MnuGuamDopplerRadar 
            Caption         =   "Guam Doppler Radar"
         End
         Begin VB.Menu MnuPuertoRicoDopplerRadar 
            Caption         =   "Puerto Rico Doppler Radar"
         End
      End
      Begin VB.Menu MnuNorthAmericaRadarSummary 
         Caption         =   "North America Radar Summary"
      End
      Begin VB.Menu MnuNWSRadarSummary 
         Caption         =   "NWS Radar Summary"
      End
   End
   Begin VB.Menu MnuJunkMaps 
      Caption         =   "Junk Map's/Un-Updated"
      Begin VB.Menu MnuEarthquakeShakeMap 
         Caption         =   "Earthquake Shake Map"
      End
      Begin VB.Menu MnuTotalPrecipitation 
         Caption         =   "Total Precipitation"
      End
      Begin VB.Menu MnuAverageTemperature 
         Caption         =   "Average Temperature"
      End
      Begin VB.Menu MnuExtremeMaximumTemperature 
         Caption         =   "Extreme Maximum Temperature"
      End
      Begin VB.Menu MnuExtremeMinimumTemperature 
         Caption         =   "Extreme Minimum Temperature"
      End
      Begin VB.Menu MnuDepartureofAverageTemperature 
         Caption         =   "Departure of Average Temperature from Normal "
      End
      Begin VB.Menu MnuExtremeApparentTemperature 
         Caption         =   "Extreme Apparent Temperature"
      End
      Begin VB.Menu MnuMinimumWindChillTemperature 
         Caption         =   "Minimum Wind Chill Temperature"
      End
      Begin VB.Menu MnuDroughtMonitor 
         Caption         =   "Drought Monitor"
      End
      Begin VB.Menu MnuDroughtMonitorLoop 
         Caption         =   "Drought Monitor Loop 6-week"
      End
      Begin VB.Menu MnuDroughtMonitorLoop12week 
         Caption         =   "Drought Monitor Loop 12-week"
      End
   End
   Begin VB.Menu MnuRefresh 
      Caption         =   "Refresh"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private CurMap As String
Private MyCounter As Integer
Private Sub Form_Load()
    If App.PrevInstance Then End
    Me.Caption = Me.Caption & " - " & App.Major & "." & App.Minor & "." & App.Revision
    MnuWeatherWarnings_Click
End Sub
Private Sub Form_Resize()
    AppActivate Me.Caption
    WebBrowser1.Left = Me.ScaleLeft
    WebBrowser1.Top = Me.ScaleTop
    WebBrowser1.Width = Me.Width + 100
    WebBrowser1.Height = Me.Height
End Sub
Private Sub GenerateMap(MapURL As String)
    On Local Error GoTo WriteError ' ERROR HANDLING
    Open App.Path & "\temp.htm" For Output As #1
    Print #1, "<head>"
    Print #1, "<META HTTP-EQUIV=" & Chr(34) & "Expires" & Chr(34) & " CONTENT=" & Chr(34) & "0" & Chr(34) & ">"
    Print #1, "<META HTTP-EQUIV=" & Chr(34) & "Pragma" & Chr(34) & " CONTENT=" & Chr(34) & "no-cache" & Chr(34) & ">"
    Print #1, "<title>" & MapURL & "</title>"
    'Print #1, "<META HTTP-EQUIV=" & Chr(34) & "Refresh" & Chr(34) & " CONTENT=" & Chr(34) & "300; URL=temp.htm" & Chr(34) & ">" 'Checks for new map every 5 Min. Replaced by timer because some times meta refresh fails.
    Print #1, "</head>"
    Print #1, "<body>"
    Print #1, "<p align=" & Chr(34) & "center" & Chr(34) & "><img border=" & Chr(34) & "0" & Chr(34) & " src=" & Chr(34) & MapURL & Chr(34) & "></p>"
    Print #1, "</body>"
    ' Thanks again to Even Toders string converter. Thanks Even !!!
    Close #1
    WebBrowser1.Navigate App.Path & "\temp.htm"
    Exit Sub
WriteError:
    MsgBox "There was an Error writing To the output file: " & Err.Description
End Sub
Private Sub Form_Unload(Cancel As Integer)
    On Error Resume Next
    Kill App.Path & "\temp.htm"
    End
End Sub

Private Sub MnuClearAirTurbulence_Click()
    GenerateMap "http://www.orbit.nesdis.noaa.gov/smcd/opdb/aviation/turb/tidaily/TIRUC3.GIF"
End Sub
Private Sub MnuClearAirTurbulence12HourForcast_Click()
    GenerateMap "http://www.orbit.nesdis.noaa.gov/smcd/opdb/aviation/turb/tidaily/TIEPLT.GIF"
End Sub
Private Sub MnuCurrentAIRSIGMETs_Click()
    GenerateMap "http://adds.aviationweather.gov/data/airmets/airmets_ALL.gif"
End Sub
Private Sub MnuGOESSolarXrayFlux_Click()
    GenerateMap "http://www.sec.noaa.gov/rt_plots/xray_5m_200501112316.gif"
End Sub
Private Sub MnuGOESSolarXrayImager_Click()
    GenerateMap "http://www.sec.noaa.gov/sxi/current_sxi_4MKcorona.png"
End Sub
Private Sub WebBrowser1_DownloadBegin()
    MyCounter = 0
End Sub
Private Sub Timer1_Timer()
    MyCounter = MyCounter + 1
    'Me.Caption = MyCounter 'Used to debug timer
    If MyCounter = 150 And CurMap = App.Path & "\WeatherWarnings.htm" Or MyCounter = 300 Then
        MyCounter = 0
        WebBrowser1.Refresh
        If Me.WindowState = 1 Then Me.WindowState = 2
        AppActivate Me.Caption
    End If
End Sub
Private Sub MnuRefresh_Click()
    MyCounter = 0
    WebBrowser1.Refresh
End Sub
Private Sub WebBrowser1_TitleChange(ByVal Text As String)
    CurMap = Text
End Sub
Private Sub MnuAverageTemperature_Click()
    GenerateMap "http://www.cpc.ncep.noaa.gov/products/analysis_monitoring/regional_monitoring/clravt.gif"
End Sub
Private Sub MnuDepartureofAverageTemperature_Click()
    GenerateMap "http://www.cpc.ncep.noaa.gov/products/analysis_monitoring/regional_monitoring/clrtanom.gif"
End Sub
Private Sub MnuDroughtMonitor_Click()
    GenerateMap "http://www.drought.unl.edu/dm/2005/drmon.gif"
End Sub
Private Sub MnuDroughtMonitorLoop_Click()
    GenerateMap "http://www.drought.unl.edu/dm/thumbnails/6_week.gif"
End Sub
Private Sub MnuDroughtMonitorLoop12week_Click()
    GenerateMap "http://www.drought.unl.edu/dm/thumbnails/12_week.gif"
End Sub
Private Sub MnuEarthquakeShakeMap_Click()
    GenerateMap "http://earthquake.usgs.gov/shakemap/images/usmap.gif"
End Sub
Private Sub MnuExtremeApparentTemperature_Click()
    GenerateMap "http://www.cpc.ncep.noaa.gov/products/analysis_monitoring/regional_monitoring/clreat.gif"
End Sub
Private Sub MnuExtremeMaximumTemperature_Click()
    GenerateMap "http://www.cpc.ncep.noaa.gov/products/analysis_monitoring/regional_monitoring/clrmax.gif"
End Sub
Private Sub MnuExtremeMinimumTemperature_Click()
    GenerateMap "http://www.cpc.ncep.noaa.gov/products/analysis_monitoring/regional_monitoring/clrmint.gif"
End Sub
Private Sub MnuMinimumWindChillTemperature_Click()
    GenerateMap "http://www.cpc.ncep.noaa.gov/products/analysis_monitoring/regional_monitoring/clrwchill.gif"
End Sub
Private Sub MnuNorthAmericaRadarSummary_Click()
    GenerateMap "http://www.intellicast.com/WeatherImages/RadarSummary/usa+bgwv.gif"
End Sub
Private Sub MnuNWSRadarSummary_Click()
    GenerateMap "http://aviationweather.gov/data/obs/radar/rcm_sm_tops.gif"
End Sub
Private Sub MnuPacificSurfaceTempAnimation_Click()
    GenerateMap "http://www.cpc.ncep.noaa.gov/products/analysis_monitoring/enso_update/sstanim.gif"
End Sub
Private Sub MnuPalmerDrought_Click()
    GenerateMap "http://www.cpc.noaa.gov/products/analysis_monitoring/cdus/palmer_drought/palmer_outlook.gif"
End Sub
Private Sub MnuRecentEarthQuakes_Click()
    GenerateMap "http://neic.usgs.gov/neis/qed/thirty.gif"
End Sub
Private Sub MnuSnowDepth_Click()
    GenerateMap "http://www.nohrsc.noaa.gov/snow_model/images/full/National/nsm_depth/200501/nsm_depth_2005011005_National.png"
End Sub
Private Sub MnuSnowWaterEquivalent_Click()
    GenerateMap "http://www.nohrsc.noaa.gov/snow_model/images/full/National/nsm_swe/200501/nsm_swe_2005011005_National.png"
End Sub
Private Sub MnuTotalPrecipitation_Click()
    GenerateMap "http://www.cpc.ncep.noaa.gov/products/analysis_monitoring/regional_monitoring/cltrain.gif"
End Sub
Private Sub MnuUSDATopSoilMoistureShort_Click()
    GenerateMap "http://www.cpc.ncep.noaa.gov/products/monitoring_and_data/soilmmap.gif"
End Sub
Private Sub MnuUSDATopSoilMoistureShort10Year_Click()
    GenerateMap "http://www.cpc.ncep.noaa.gov/products/monitoring_and_data/10yrcomp.gif"
End Sub
Private Sub MnuUSDATopSoilMoistureShort5Year_Click()
    GenerateMap "http://www.cpc.ncep.noaa.gov/products/monitoring_and_data/5yrcomp.gif"
End Sub
Private Sub Mnu24HourPrecipitationTotal_Click()
    GenerateMap "http://www.hpc.ncep.noaa.gov/qpf/fill_94qwbg.gif"
End Sub
Private Sub MnuAlaskaDopplerRadar_Click()
    GenerateMap "http://weather.noaa.gov/radar/images/DS.p19r0/AR.alaska/latest.gif"
End Sub
Private Sub MnuCategoricalConvectiveOutlook_Click()
    GenerateMap "http://www.spc.noaa.gov/products/outlook/day1otlk_0100.gif"
End Sub
Private Sub MnuCurrentConvectiveWatches_Click()
    GenerateMap "http://www.spc.noaa.gov/products/watch/validww.gif"
End Sub
Private Sub MnuCurrentwaterresourcesconditions_Click()
    WebBrowser1.Navigate App.Path & "\WaterWatch.htm"
End Sub
Private Sub MnuDroughtWatch_Click()
    WebBrowser1.Navigate App.Path & "\DroughtWatch.htm"
End Sub
Private Sub MnuFireWeatherForecasts_Click()
    GenerateMap "http://www.spc.noaa.gov/products/fire_wx/day1fireotlk.png"
End Sub
Private Sub MnuGOES_EastIREastPacific_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/EPAC/IR4/20.jpg"
End Sub
Private Sub MnuGOES_EastIRGulfOfMexico_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/GMEX/IR4/20.jpg"
End Sub
Private Sub MnuGOES_EastIRNorthwestAtlantic_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/NWATL/IR4/20.jpg"
End Sub
Private Sub MnuGOES_EastIRWesternAtlanticAndCaribbean_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/WATL/IR4/20.jpg"
End Sub
Private Sub MnuGOES_EastSIREastPacific_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/EPAC/IR2/20.jpg"
End Sub
Private Sub MnuGOES_EastSIRGulfOfMexico_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/GMEX/IR2/20.jpg"
End Sub
Private Sub MnuGOES_EastSIRNorthwestAtlantic_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/NWATL/IR2/20.jpg"
End Sub
Private Sub MnuGOES_EastSIRWesternAtlanticAndCaribbean_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/WATL/IR2/20.jpg"
End Sub
Private Sub MnuGOES_EastVIEastPacific_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/EPAC/VIS/20.jpg"
End Sub
Private Sub MnuGOES_EastVIGulfofMexico_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/GMEX/VIS/20.jpg"
End Sub
Private Sub MnuGOES_EastVINorthwestAtlantic_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/NWATL/VIS/20.jpg"
End Sub
Private Sub MnuGOES_EastVIWesternAtlanticandCaribbean_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/WATL/VIS/20.jpg"
End Sub
Private Sub MnuGOES_EastWVEastPacific_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/EPAC/WV/20.jpg"
End Sub
Private Sub MnuGOES_EastWVGulfOfMexico_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/GMEX/WV/20.jpg"
End Sub
Private Sub MnuGOES_EastWVNorthwestAtlantic_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/NWATL/WV/20.jpg"
End Sub
Private Sub MnuGOES_EastWVWesternAtlanticAndCaribbean_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/WATL/WV/20.jpg"
End Sub
Private Sub MnuGOES_WestIRCentralPacific_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/CPAC/IR4/20.jpg"
End Sub
Private Sub MnuGOES_WestIRNorthEastPacific_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/NEPAC/IR4/20.jpg"
End Sub
Private Sub MnuGOES_WestSICentralPacific_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/CPAC/IR2/20.jpg"
End Sub
Private Sub MnuGOES_WestSINorthEastPacific_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/NEPAC/IR2/20.jpg"
End Sub
Private Sub MnuGOES_WestVICentralPacific_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/CPAC/VIS/20.jpg"
End Sub
Private Sub MnuGOES_WestVINorthEastPacific_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/NEPAC/VIS/20.jpg"
End Sub
Private Sub MnuGOES_WestWVCentralPacific_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/CPAC/WV/20.jpg"
End Sub
Private Sub MnuGOES_WestWVNorthEastPacific_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/NEPAC/WV/20.jpg"
End Sub
Private Sub MnuGuamDopplerRadar_Click()
    GenerateMap "http://www.nws.noaa.gov/radar/images/DS.p19r0/SI.pgua/latest.gif"
End Sub
Private Sub MnuHailConvectiveOutlook_Click()
    GenerateMap "http://www.spc.noaa.gov/products/outlook/day1probotlk_0100_hail.gif"
End Sub
Private Sub MnuHawaiiDopplerRadar_Click()
    GenerateMap "http://weather.noaa.gov/radar/images/DS.p19r0/AR.hawaii/latest.gif"
End Sub
Private Sub MnuMesoscaleDiscussions_Click()
    GenerateMap "http://www.spc.noaa.gov/products/md/validmd.gif"
End Sub
Private Sub MnuNationalDopplerRadar_Click()
    GenerateMap "http://weather.noaa.gov/radar/images/DS.74rcm/AR.conus/latest.gif"
End Sub
Private Sub MnuPuertoRicoDopplerRadar_Click()
    GenerateMap "http://www.srh.noaa.gov/radar/images/DS.p19r0/SI.tjua/latest.gif"
End Sub
Private Sub MnuDailySeaSurfaceTemperatures_Click()
    GenerateMap "http://www.ssd.noaa.gov/PS/TROP/DATA/RT/SST/ATL/20.jpg"
End Sub
Private Sub MnuAlaskaCONUS_US_IR_Click()
    GenerateMap "http://www.goes.noaa.gov/GIFS/ALIR.JPG"
End Sub
Private Sub MnuAlaskaCONUS_US_WV_Click()
    GenerateMap "http://www.goes.noaa.gov/GIFS/ALWV.JPG"
End Sub
Private Sub MnuChanceOfPrecipitation_Click()
    GenerateMap "http://weather.gov/forecasts/graphical/images/conus/PoP121_conus.png"
End Sub
Private Sub MnuChangeInVegetationHealth_Click()
    GenerateMap "http://www.orbit.nesdis.noaa.gov/smcd/emb/vci/gifs/USA_DIFF_VTI_wk.gif"
End Sub
Private Sub MnuCompositCONUS_US_WV_Click()
    GenerateMap "http://www.goes.noaa.gov/GIFS/NHWV.JPG"
End Sub
Private Sub MnuDewPoint_Click()
    GenerateMap "http://weather.gov/forecasts/graphical/images/conus/Td3_conus.png"
End Sub
Private Sub MnuEastCONUS_US_IR_Click()
    GenerateMap "http://www.goes.noaa.gov/GIFS/ECIR.JPG"
End Sub
Private Sub MnuEastCONUS_US_WV_Click()
    GenerateMap "http://www.goes.noaa.gov/GIFS/ECWV.JPG"
End Sub
Private Sub MnuFronts_Click()
    GenerateMap "http://www.wunderground.com/data/640x480/2xus_sf.gif"
End Sub
Private Sub MnuHawaiiCONUS_US_IR_Click()
    GenerateMap "http://www.goes.noaa.gov/GIFS/HAIR.JPG"
End Sub
Private Sub MnuHawaiiCONUS_US_WV_Click()
    GenerateMap "http://www.goes.noaa.gov/GIFS/HAWV.JPG"
End Sub
Private Sub MnuPrecipitationAmount_Click()
    GenerateMap "http://weather.gov/forecasts/graphical/images/conus/QPF2_conus.png"
End Sub
Private Sub MnuSatellite_Click()
    GenerateMap "http://weather.gov/satellite_images/national.jpg"
End Sub
Private Sub MnuSignificantRiverFloodOutlook_Click()
    GenerateMap "http://www.hpc.ncep.noaa.gov/nationalfloodoutlook/finalfop.gif"
End Sub
Private Sub MnuSkyCover_Click()
    GenerateMap "http://weather.gov/forecasts/graphical/images/conus/Sky3_conus.png"
End Sub
Private Sub MnuSurfaceAnalysis_Click()
    GenerateMap "http://www.hpc.ncep.noaa.gov/sfc/90fbw.gif"
End Sub
Private Sub MnuTemperatureAndWind_Click()
    GenerateMap "http://weather.gov/forecasts/graphical/images/conus/T3_conus.png"
End Sub
Private Sub MnuTornadoeConvectiveOutlook_Click()
    GenerateMap "http://www.spc.noaa.gov/products/outlook/day1probotlk_0100_torn.gif"
End Sub
Private Sub MnuVegetationHealth_Click()
    GenerateMap "http://www.orbit.nesdis.noaa.gov/smcd/emb/vci/gifs/usacurntcd.gif"
End Sub
Private Sub MnuWeather_Click()
    GenerateMap "http://weather.gov/forecasts/graphical/images/conus/Wx3_conus.png"
End Sub
Private Sub MnuWeatherWarnings_Click()
    WebBrowser1.Navigate App.Path & "\WeatherWarnings.htm"
End Sub
Private Sub MnuWestCONUS_US_IR_Click()
    GenerateMap "http://www.goes.noaa.gov/GIFS/WCIR.JPG"
End Sub
Private Sub MnuWestCONUS_US_WV_Click()
    GenerateMap "http://www.goes.noaa.gov/GIFS/WCWV.JPG"
End Sub
Private Sub MnuWindConvectiveOutlook_Click()
    GenerateMap "http://www.spc.noaa.gov/products/outlook/day1probotlk_0100_wind.gif"
End Sub

