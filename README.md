# GAC_com.yftech.yfmycar.apk

Full Java-readable decompilation of **`com.yftech.yfmycar.apk`**, the the "My Car" vehicle-control screen — windows, doors, seats, mirrors, lights and tailgate from the [yftech-apks](https://github.com/ammisaidkaidi/yftech-apks) collection.

> Source APK: [com.yftech.yfmycar.apk](https://github.com/ammisaidkaidi/yftech-apks/blob/main/com.yftech.yfmycar.apk)  
> SHA-256: `69fac434784b9bae0329f740539fa08465dfcdd3d953a90c0488d6419989ebb9`  
> Size: 22.3 MB  
> Decompiled with **jadx 1.5.0** (Java sources) + **apktool 3.0.3** (smali / resources)  
> Generated: 2026-10-18

---

## 1. What this app is, what it does, and what it is for

`com.yftech.yfmycar` is the **"My Car" vehicle-control screen** of the YF Tech (GAC) head-unit — the touchscreen where the driver opens and closes the windows, sunroof, sliding doors and tailgate, folds the mirrors, moves and heats/ventilates the seats, turns the steering wheel heater on, and picks the ambient-lighting mood. It is a modern single-activity Android app (AndroidX + **Data Binding** + **ViewModel/LiveData** + RxJava 2) built around `MyCarActivity` and `GlobalCarViewModel`, with fragments for each subsystem (`view/fragment/control/`, `view/fragment/seat/`, `view/fragment/light/`). It has **no Application class, no service and no receiver** in its own manifest: it is a pure client of the car services, and it bundles the **complete `com.yftech.vehicle.sdk` + `com.yftech.vehicle.internal.adapter` framework** (32 + 29 classes, ~17,000 lines) so it can talk to `ICarWindow`, `ICarDoor`, `ICarSeat`, `ICarLight`, `ICarMisc`, `ICarPower`, `ICarInfo`, `ICarConfig`, `ICarTire`, `ICarFragrance`, `ICarTBox`, `ICarSwc`, `ICarDashBoard`, `ICarEvDevice` and more.

**Purpose / why it exists on the device:**

Physical switches can only cover so many combinations; a touchscreen can. `yfmycar` is the digital replacement for the switch panel: it renders a live 3-D-ish car diagram (`layoutCockpit`) and lets the driver tap a door, window or seat to actuate it, while showing the real state read back from the vehicle (open/closed, error, reversing, gear not in P, etc.). Because it must be safe, it **refuses to act unless the car is parked** (`TipGearNotP` binding) and it gates window/sunroof movement on the gear position and door state. It is also the app that renders the **GAC logo / branding conditionally** (`CarConfig.isGACLogoPresent()`) and supports **RTL / Arabic** (`isArLanguage()`), matching the export markets served by `gacota.yftech.com`.

**How it works (runtime flow):**

1. `MyCarActivity extends VDBBaseActivity<ActivityMainBinding>` — the app's own ViewModel + Data Binding base. On create it grabs the application-scoped `GlobalCarViewModel`, binds it to the root layout, to `layoutOpenCloseControl` (the open/close button panel) and to `layoutCockpit` (the car diagram), and observes `globalCarViewModel.topIndex` to swap fragments.
2. `ManagerUtil.initAllManager()` starts the subsystem managers: `SeatsManager` (seat position, heating, ventilation), `CarDoorControl` (door + tailgate + sliding-door state), `CarMirrorControl` (mirror fold/adjust), `CarInfoControl` (speed, gear, power), `MyCarWindowManager` (window/sunroof actuation + listeners) and `LightManager` (ambient/atmosphere lamps, light show).
3. `GlobalCarViewModel` exposes `LiveData` fields fed by EventBus-style events in `view/bean/`: `CarDoorStatusEvent`, `CarWindowEvent`, `WindowControlStatus`, `WindowErrorEvent`, `SkyLightEvent`, `CarTailgateEvent`, `CarLightEvent`, `DriveModeEvent`, `GearPositionEvent`, `PowerEvent`, `SpeedEvent`, `AirSeatEvent`, `WhichCarSeat`, `FragmentsIndex`. `SafetyLiveData` / `NonNullLiveData` are hardened LiveData subclasses.
4. Fragments: `control/{FrontLeftWindowFragment, FrontRightWindowFragment, RearLeftSlidingDoorFragment, RearRightSlidingDoorFragment, SkyLightFragment, TailgateFragment}`, `seat/{FrontSeatFragment, LeftRearviewMirrorFragment, RightRearviewMirrorFragment, SteeringWheelFragment}` and `light/{AtmosphereLampFragment, LightShowFragment}`.
5. Custom widgets in `view/widgets/` implement the gestures and animations: `AngleTouchRelativeLayout` / `AngleLeftTouchRelativeLayout` (angular drag on the car diagram), `VerticalAnimWindowTouchView` / `HorizontalAnimWindowTouch` (drag-to-open window animation), `WindowReversingTipView` (anti-pinch reversing warning), `TailgateOpenView` / `TailgateBitmapView`, `SlideImageView`, `SeatVentilationHeatingView`, `FontSeatPositionView`, `ColorfulBitmap`, `BtSwitcher` / `Switcher`, `RelativeRadioGroup`, `WindowAnimCallBack`.
6. `CarConfigControl` decides which screens exist for this vehicle: `isCockpitConfigShow()` (fragment indices 6–9), `isAllWindowOpenShow()` (window config LEFT_FRONT / LEFT_AND_RIGHT_FRONT / FOUR_DOOR_WINDOWS), `isGACLogoPresent()`, `isArLanguage()`.
7. `view/utils/ReflectUtil` + `VDBUtil` provide reflection and Data-Binding helpers; `LogUtil` tags builds with a timestamp (`YFMyCar_202506191631`).

**Notable findings:**

- **This APK bundles the entire YF Tech vehicle framework** — `com.yftech.vehicle.internal.adapter` (32 interfaces: `ICarWindow`, `ICarDoor`, `ICarSeat`, `ICarLight`, `ICarMisc`, `ICarPower`, `ICarInfo`, `ICarConfig`, `ICarTire`, `ICarFragrance`, `ICarTBox`, `ICarSwc`, `ICarDashBoard`, `ICarEvDevice`, `ICarBsp`, `ICarDMS`, `ICarMoto`, `ICarIcm`, `ICarKey`, `ICanSignals`, `IMpuAvm`, `IMpuVersion`, `IHostConfig`, `IDemo` …) plus `com.yftech.vehicle.sdk` (29 managers) and `com.yftech.vehicle.internal` (the `CarManager` / `ICarService` / `SignalReceiver` core). If you want to understand the car-side API of this whole head-unit, read these packages first — they are duplicated (in part) inside `settings`, `multimedia` and `media.service`.
- Project-specific implementations are bundled too: `internal/project/Ihu23Project`, `Ihu12DashBoard`, `internal/config/Ihu23ICarConfig`, `Ihu23IHostConfig`, `sdk/config/Ihu23CarConfig`, `sdk/Ihu23ProjectManager` — i.e. this build is tuned for the **IHU23** (and IHU12) head-unit generations.
- **Safety gating is explicit**: `TipGearNotPBinding` ("gear not in P") blocks window/tailgate actions unless parked, and `WindowReversingTipView` implements the anti-pinch reversing warning.
- Only **9 permissions, all of them `com.yftech.permission.*`** — no Android runtime permissions at all. It needs no storage, no camera, no internet, no location. This is the cleanest, most locked-down APK in the collection.
- `android:name` is **absent from `<application>`** — there is no custom Application class; the app relies entirely on the framework's default and on the process-wide car services.
- `allowBackup=true`, no `sharedUserId`, no `persistent` — a normal (if system-privileged) app.
- Only 4 URLs, all of them RxJava documentation links. No native libraries, no SQL, no crypto. Zero network code in the app itself.
- Reflection targets are only bundled-library internals (`android.util.Log`, `libcore.icu.ICU`, `android.view.GhostView`, `com.android.internal.view.menu.MenuBuilder`, `android.content.res.ThemedResourceCache`).
- Build tag `YFMyCar_202506191631` (2025-06-19) — the most recently built APK in the collection.
- RTL/Arabic support (`isArLanguage()`) and GAC branding toggle confirm this build targets export markets as well as domestic China.

## 2. APK metadata

| Property | Value |
|---|---|
| Package name | `com.yftech.yfmycar` |
| Version name / code | `1.0` / `1` |
| minSdk / targetSdk / maxSdk | `26` / `28` / `None` |
| sharedUserId | `None` |
| `<application>` attributes | `label=@string/app_name`, `icon=@mipmap/ic_launcher`, `theme=@style/AppTheme`, `allowBackup=true` |
| Java classes decompiled | **1620** files / 1620 top-level types |
| Smali files | **3953** |
| Total Java lines | ~270,763 |
| Total methods | ~55,274 |
| Permissions requested | **9** |
| Declared (custom) permissions | **0** |
| Activities / Services / Receivers / Providers | 1 / 0 / 0 / 0 |

## 3. Repository layout

```
.
├── README.md                  <- this file (full class/function catalogue + analysis)
├── sources/                   <- jadx: decompiled JAVA sources (.java)  **start here**
│   └── <package path>/<Class>.java
├── resources/                 <- jadx: decoded manifest + resources + assets
│   ├── AndroidManifest.xml
│   ├── res/                   <- layouts, drawables, values (near-original form)
│   └── assets/                <- raw asset files (config .properties, etc.)
├── smali/                     <- apktool: disassembled Dalvik bytecode (.smali)
│   └── <package path>/<Class>.smali
├── smali_classes2..N/         <- apktool: extra dex files (when present)
├── original/                  <- apktool: files that could not be decoded (META-INF, …)
├── AndroidManifest.apktool.xml<- apktool copy of the manifest (raw attribute order)
└── apktool.yml                <- apktool build metadata
```

`sources/` is the Java-readable tree — this is what you want to read. `smali/` is the same code in Dalvik assembly (useful when jadx output is ambiguous).

## 4. Permissions

### Requested permissions

| Permission |
|---|
| `com.yftech.permission.service.main.audio` |
| `com.yftech.permission.service.car` |
| `com.yftech.permission.test` |
| `com.yftech.permission.service.main.screen` |
| `com.yftech.permission.service.main.input` |
| `com.yftech.permission.service.main.audio.effect` |
| `com.yftech.permission.service.upgrade.upgrade` |
| `com.yftech.permission.service.transfer.phonelink` |
| `com.yftech.permission.service.vehicle.COMMON` |

## 5. Declared components

### Activities (1)

| Class | Exported | Enabled | Guarded by | Intent actions |
|---|---|---|---|---|
| `com.yftech.yfmycar.view.MyCarActivity` | true | — | — | `android.intent.action.MAIN` |

### Services (0)

_none_

### Broadcast receivers (0)

_none_

### Content providers (0)

_none_

## 6. Package map

| Package | Classes | Methods | Lines |
|---|---:|---:|---:|
| `io.reactivex.internal.operators.flowable` | 157 | 5194 | 28,128 |
| `io.reactivex.internal.operators.observable` | 144 | 3799 | 21,248 |
| `androidx.appcompat.widget` | 71 | 4516 | 20,391 |
| `io.reactivex` | 44 | 2513 | 12,967 |
| `androidx.fragment.app` | 23 | 2310 | 9,605 |
| `com.yftech.vehicle.internal.adapter` | 32 | 2825 | 8,878 |
| `com.yftech.vehicle.sdk` | 29 | 2714 | 8,333 |
| `androidx.appcompat.app` | 18 | 1693 | 7,556 |
| `androidx.constraintlayout.solver.widgets` | 19 | 1391 | 6,976 |
| `io.reactivex.internal.operators.maybe` | 73 | 1091 | 6,863 |
| `androidx.core.app` | 26 | 1404 | 6,742 |
| `androidx.appcompat.view.menu` | 26 | 1304 | 5,646 |
| `androidx.constraintlayout.widget` | 9 | 843 | 5,142 |
| `androidx.core.view` | 37 | 1101 | 4,833 |
| `io.reactivex.internal.operators.single` | 52 | 596 | 4,190 |
| `androidx.vectordrawable.graphics.drawable` | 9 | 687 | 3,546 |
| `com.yftech.yfmycar.databinding` | 18 | 591 | 3,511 |
| `io.reactivex.internal.operators.parallel` | 16 | 647 | 3,393 |
| `io.reactivex.internal.operators.completable` | 44 | 478 | 3,346 |
| `io.reactivex.internal.operators.mixed` | 19 | 572 | 3,336 |
| `androidx.core.widget` | 16 | 735 | 3,198 |
| `com.yftech.yfmycar` | 4 | 44 | 3,156 |
| `androidx.viewpager.widget` | 4 | 691 | 3,064 |
| `androidx.databinding` | 41 | 720 | 3,028 |
| `io.reactivex.processors` | 8 | 574 | 2,821 |
| `androidx.collection` | 10 | 748 | 2,788 |
| `io.reactivex.subjects` | 10 | 560 | 2,763 |
| `androidx.appcompat.graphics.drawable` | 5 | 545 | 2,663 |
| `com.yftech.yfmycar.view.widgets` | 14 | 449 | 2,540 |
| `io.reactivex.internal.schedulers` | 19 | 365 | 2,240 |
| `androidx.core.graphics` | 13 | 336 | 2,234 |
| `androidx.coordinatorlayout.widget` | 3 | 533 | 2,211 |
| `androidx.constraintlayout.solver` | 8 | 454 | 2,147 |
| `androidx.core.view.accessibility` | 6 | 541 | 2,133 |
| `androidx.databinding.adapters` | 39 | 343 | 2,014 |
| `androidx.core.graphics.drawable` | 10 | 415 | 1,924 |
| `androidx.versionedparcelable` | 11 | 520 | 1,836 |
| `androidx.drawerlayout.widget` | 1 | 421 | 1,730 |
| `io.reactivex.internal.observers` | 27 | 350 | 1,728 |
| `io.reactivex.internal.util` | 25 | 366 | 1,723 |
| `com.yftech.yfmycar.view.manager` | 9 | 286 | 1,710 |
| `androidx.customview.widget` | 3 | 458 | 1,682 |
| `androidx.appcompat` | 1 | 13 | 1,669 |
| `androidx.lifecycle` | 29 | 347 | 1,655 |
| `androidx.swiperefreshlayout.widget` | 3 | 350 | 1,575 |
| `io.reactivex.observers` | 14 | 362 | 1,495 |
| `io.reactivex.internal.subscribers` | 22 | 290 | 1,483 |
| `org.greenrobot.eventbus` | 18 | 303 | 1,388 |
| `androidx.appcompat.view` | 9 | 263 | 1,377 |
| `androidx.core.text` | 7 | 275 | 1,324 |
| `androidx.slidingpanelayout.widget` | 1 | 257 | 1,204 |
| `com.yftech.yfmycar.view.fragment.control` | 6 | 180 | 1,180 |
| `androidx.core.content.res` | 8 | 226 | 1,145 |
| `com.yftech.vehicle.internal` | 6 | 227 | 1,134 |
| `androidx.core.os` | 15 | 250 | 1,116 |
| `com.yftech.vehicle.internal.project` | 3 | 175 | 1,048 |
| `androidx.loader.content` | 4 | 209 | 962 |
| `androidx.core.content` | 7 | 182 | 897 |
| `io.reactivex.internal.functions` | 2 | 205 | 864 |
| `com.yftech.vehicle.internal.config` | 2 | 409 | 849 |
| `com.yftech.vehicle.sdk.config` | 2 | 356 | 844 |
| `androidx.core.util` | 10 | 196 | 814 |
| `io.reactivex.internal.subscriptions` | 10 | 189 | 809 |
| `androidx.annotation` | 51 | 30 | 807 |
| `io.reactivex.subscribers` | 6 | 159 | 781 |
| `androidx.core.provider` | 3 | 129 | 779 |
| `androidx.documentfile.provider` | 5 | 165 | 770 |
| `com.yftech.yfmycar.view.fragment.seat` | 4 | 72 | 700 |
| `io.reactivex.plugins` | 1 | 162 | 698 |
| `org.greenrobot.eventbus.util` | 8 | 117 | 623 |
| `androidx.core.text.util` | 2 | 129 | 576 |
| `com.yftech.yfmycar.view.base` | 4 | 104 | 566 |
| `androidx.cursoradapter.widget` | 4 | 121 | 542 |
| `io.reactivex.internal.disposables` | 8 | 114 | 529 |
| `androidx.loader.app` | 2 | 114 | 526 |
| `androidx.print` | 2 | 86 | 510 |
| `io.reactivex.internal.queue` | 3 | 132 | 453 |
| `com.yftech.yfmycar.view.bean` | 14 | 70 | 451 |
| `io.reactivex.disposables` | 9 | 94 | 427 |
| `io.reactivex.parallel` | 4 | 68 | 427 |
| `io.reactivex.schedulers` | 4 | 75 | 399 |
| `androidx.arch.core.internal` | 2 | 75 | 380 |
| `com.yftech.yfmycar.view.utils` | 4 | 78 | 374 |
| `androidx.core.view.inputmethod` | 3 | 65 | 355 |
| `androidx.legacy.app` | 1 | 71 | 349 |
| `androidx.core.content.pm` | 5 | 57 | 330 |
| `io.reactivex.exceptions` | 6 | 68 | 311 |
| `com.yftech.yfmycar.view.fragment.light` | 2 | 43 | 309 |
| `androidx.localbroadcastmanager.content` | 1 | 49 | 274 |
| `androidx.core.net` | 3 | 52 | 243 |
| `androidx.vectordrawable` | 1 | 11 | 237 |
| `androidx.fragment` | 1 | 11 | 237 |
| `androidx.coordinatorlayout` | 1 | 11 | 237 |
| `androidx.legacy.coreui` | 1 | 11 | 237 |
| `com.yftech.yfmycar.view` | 1 | 38 | 227 |
| `com.yftech.yfmycar.view.vm` | 5 | 50 | 225 |
| `androidx.loader` | 1 | 11 | 209 |
| `androidx.asynclayoutinflater` | 1 | 11 | 209 |
| `androidx.viewpager` | 1 | 11 | 209 |
| `androidx.swiperefreshlayout` | 1 | 11 | 209 |
| `androidx.drawerlayout` | 1 | 11 | 209 |
| `androidx.slidingpanelayout` | 1 | 11 | 209 |
| `androidx.customview` | 1 | 11 | 209 |
| `androidx.legacy.coreutils` | 1 | 11 | 209 |
| `androidx.core` | 1 | 11 | 209 |
| `android.support.v4.os` | 2 | 37 | 199 |
| `androidx.core.hardware.fingerprint` | 1 | 40 | 186 |
| `io.reactivex.android.schedulers` | 2 | 35 | 184 |
| `androidx.asynclayoutinflater.view` | 1 | 25 | 162 |
| `androidx.arch.core.executor` | 3 | 27 | 159 |
| `io.reactivex.functions` | 18 | 18 | 159 |
| `io.reactivex.internal.fuseable` | 15 | 17 | 150 |
| `org.greenrobot.eventbus.meta` | 5 | 27 | 138 |
| `android.support.v4.app` | 1 | 24 | 134 |
| `androidx.appcompat.content.res` | 1 | 20 | 122 |
| `io.reactivex.flowables` | 2 | 22 | 116 |
| `androidx.core.internal.view` | 3 | 24 | 115 |
| `androidx.core.accessibilityservice` | 1 | 20 | 114 |
| `androidx.core.view.animation` | 2 | 27 | 113 |
| `androidx.databinding.library.baseAdapters` | 4 | 15 | 111 |
| `io.reactivex.annotations` | 8 | 2 | 109 |
| `io.reactivex.observables` | 2 | 22 | 108 |
| `io.reactivex.android.plugins` | 1 | 25 | 85 |
| `androidx.interpolator.view.animation` | 4 | 10 | 76 |
| `androidx.customview.view` | 1 | 16 | 71 |
| `androidx.core.hardware.display` | 1 | 15 | 66 |
| `androidx.core.database` | 2 | 13 | 57 |
| `androidx.legacy.content` | 1 | 8 | 55 |
| `androidx.legacy.widget` | 1 | 14 | 53 |
| `io.reactivex.android` | 2 | 11 | 50 |
| `com.yftech.vehicle.internal.utils` | 2 | 6 | 37 |
| `org.reactivestreams` | 4 | 7 | 35 |
| `androidx.appcompat.text` | 1 | 4 | 31 |
| `androidx.databinding.library` | 2 | 2 | 28 |
| `com.yftech.yfmycar.generated.callback` | 1 | 3 | 25 |
| `androidx.core.math` | 1 | 4 | 20 |
| `android.support.v4.graphics.drawable` | 1 | 2 | 18 |
| `androidx.core.database.sqlite` | 1 | 3 | 18 |
| `com.yftech.yfmycar.view.callback` | 1 | 3 | 11 |
| `androidx.cursoradapter` | 1 | 1 | 8 |
| `androidx.arch.core` | 1 | 1 | 8 |
| `androidx.documentfile` | 1 | 1 | 8 |
| `androidx.localbroadcastmanager` | 1 | 1 | 8 |
| `androidx.lifecycle.viewmodel` | 1 | 1 | 8 |
| `androidx.lifecycle.livedata` | 1 | 1 | 8 |
| `androidx.lifecycle.livedata.core` | 1 | 1 | 8 |
| `androidx.interpolator` | 1 | 1 | 8 |
| `androidx.arch.core.util` | 1 | 1 | 7 |
| `android.databinding.layouts` | 1 | 0 | 6 |
| `?` | 1 | 0 | 6 |
| **TOTAL** | **1620** | **55,274** | **270,763** |

## 7. Class and function catalogue

Every decompiled class with its declared functions. Methods are listed by name; see the `.java` files under `sources/` for full signatures and bodies.

### Package `com.yftech.yfmycar`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BR` | class | — | 8 | 0 |
| `BuildConfig` | class | — | 13 | 0 |
| `DataBinderMapperImpl` | class | DataBinderMapper | 173 | 44 |
| `R` | class | — | 2,962 | 0 |

<details>
<summary><b>Function list for <code>com.yftech.yfmycar</code></b> (click to expand)</summary>

- **`DataBinderMapperImpl`** — 22 function(s): `getDataBinder()`, `if()`, `RuntimeException()`, `switch()`, `ActivityMainBindingImpl()`, `ActivityMainBindingLdrtlImpl()`, `IllegalArgumentException()`, `FragmentLeftRearviewMirrorBindingImpl()`, `FragmentLeftRearviewMirrorBindingLdrtlImpl()`, `FragmentRightRearviewMirrorBindingLdrtlImpl()`, `FragmentRightRearviewMirrorBindingImpl()`, `LayoutCockpitBindingLdrtlImpl()`, `LayoutCockpitBindingImpl()`, `LayoutOpenCloseControlBindingLdrtlImpl()`, `LayoutOpenCloseControlBindingImpl()`, `TipGearNotPBindingImpl()`, `TipGearNotPBindingLdrtlImpl()`, `getLayoutId()`, `convertBrIdToString()`, `collectDependencies()`, `InnerBrLookup()`, `InnerLayoutIdLookup()`

</details>

### Package `com.yftech.yfmycar.databinding`  (18 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ActivityMainBinding` | class | ViewDataBinding | 103 | 18 |
| `ActivityMainBindingImpl` | class | ActivityMainBinding implements OnClickListener.Listener | 407 | 67 |
| `ActivityMainBindingLdrtlImpl` | class | ActivityMainBinding implements OnClickListener.Listener | 329 | 66 |
| `FragmentLeftRearviewMirrorBinding` | class | ViewDataBinding | 84 | 14 |
| `FragmentLeftRearviewMirrorBindingImpl` | class | FragmentLeftRearviewMirrorBinding | 102 | 19 |
| `FragmentLeftRearviewMirrorBindingLdrtlImpl` | class | FragmentLeftRearviewMirrorBinding | 104 | 19 |
| `FragmentRightRearviewMirrorBinding` | class | ViewDataBinding | 84 | 14 |
| `FragmentRightRearviewMirrorBindingImpl` | class | FragmentRightRearviewMirrorBinding | 102 | 19 |
| `FragmentRightRearviewMirrorBindingLdrtlImpl` | class | FragmentRightRearviewMirrorBinding | 104 | 19 |
| `LayoutCockpitBinding` | class | ViewDataBinding | 99 | 16 |
| `LayoutCockpitBindingImpl` | class | LayoutCockpitBinding implements OnClickListener.Listener | 325 | 53 |
| `LayoutCockpitBindingLdrtlImpl` | class | LayoutCockpitBinding implements OnClickListener.Listener | 325 | 53 |
| `LayoutOpenCloseControlBinding` | class | ViewDataBinding | 144 | 16 |
| `LayoutOpenCloseControlBindingImpl` | class | LayoutOpenCloseControlBinding implements OnClickListener.Listener | 485 | 75 |
| `LayoutOpenCloseControlBindingLdrtlImpl` | class | LayoutOpenCloseControlBinding implements OnClickListener.Listener | 485 | 75 |
| `TipGearNotPBinding` | class | ViewDataBinding | 59 | 14 |
| `TipGearNotPBindingImpl` | class | TipGearNotPBinding implements OnClickListener.Listener | 85 | 17 |
| `TipGearNotPBindingLdrtlImpl` | class | TipGearNotPBinding implements OnClickListener.Listener | 85 | 17 |

<details>
<summary><b>Function list for <code>com.yftech.yfmycar.databinding</code></b> (click to expand)</summary>

- **`ActivityMainBinding`** — 8 function(s): `setGlobalCarViewModel()`, `ActivityMainBinding()`, `super()`, `setContainedBinding()`, `getGlobalCarViewModel()`, `inflate()`, `return()`, `bind()`
- **`ActivityMainBindingImpl`** — 23 function(s): `ActivityMainBindingImpl()`, `this()`, `super()`, `setRootTag()`, `invalidateAll()`, `synchronized()`, `requestRebind()`, `hasPendingBindings()`, `if()`, `setVariable()`, `setGlobalCarViewModel()`, `notifyPropertyChanged()`, `setLifecycleOwner()`, `onFieldChange()`, `switch()`, `onChangeGlobalCarViewModelTopIndex()`, `onChangeGlobalCarViewModelPowerMode()`, `onChangeLayoutCockpit()`, `onChangeLayoutOpenCloseControl()`, `executeBindings()`, `updateLiveDataRegistration()`, `executeBindingsOn()`, `_internalCallbackOnClick()`
- **`ActivityMainBindingLdrtlImpl`** — 23 function(s): `ActivityMainBindingLdrtlImpl()`, `this()`, `super()`, `setRootTag()`, `invalidateAll()`, `synchronized()`, `requestRebind()`, `hasPendingBindings()`, `if()`, `setVariable()`, `setGlobalCarViewModel()`, `notifyPropertyChanged()`, `setLifecycleOwner()`, `onFieldChange()`, `switch()`, `onChangeGlobalCarViewModelTopIndex()`, `onChangeGlobalCarViewModelPowerMode()`, `onChangeLayoutCockpit()`, `onChangeLayoutOpenCloseControl()`, `executeBindings()`, `updateLiveDataRegistration()`, `executeBindingsOn()`, `_internalCallbackOnClick()`
- **`FragmentLeftRearviewMirrorBinding`** — 5 function(s): `FragmentLeftRearviewMirrorBinding()`, `super()`, `inflate()`, `return()`, `bind()`
- **`FragmentLeftRearviewMirrorBindingImpl`** — 15 function(s): `onFieldChange()`, `setVariable()`, `FragmentLeftRearviewMirrorBindingImpl()`, `this()`, `super()`, `setContainedBinding()`, `setRootTag()`, `invalidateAll()`, `synchronized()`, `requestRebind()`, `hasPendingBindings()`, `if()`, `setLifecycleOwner()`, `executeBindings()`, `executeBindingsOn()`
- **`FragmentLeftRearviewMirrorBindingLdrtlImpl`** — 15 function(s): `onFieldChange()`, `setVariable()`, `FragmentLeftRearviewMirrorBindingLdrtlImpl()`, `this()`, `super()`, `setContainedBinding()`, `setRootTag()`, `invalidateAll()`, `synchronized()`, `requestRebind()`, `hasPendingBindings()`, `if()`, `setLifecycleOwner()`, `executeBindings()`, `executeBindingsOn()`
- **`FragmentRightRearviewMirrorBinding`** — 5 function(s): `FragmentRightRearviewMirrorBinding()`, `super()`, `inflate()`, `return()`, `bind()`
- **`FragmentRightRearviewMirrorBindingImpl`** — 15 function(s): `onFieldChange()`, `setVariable()`, `FragmentRightRearviewMirrorBindingImpl()`, `this()`, `super()`, `setContainedBinding()`, `setRootTag()`, `invalidateAll()`, `synchronized()`, `requestRebind()`, `hasPendingBindings()`, `if()`, `setLifecycleOwner()`, `executeBindings()`, `executeBindingsOn()`
- **`FragmentRightRearviewMirrorBindingLdrtlImpl`** — 15 function(s): `onFieldChange()`, `setVariable()`, `FragmentRightRearviewMirrorBindingLdrtlImpl()`, `this()`, `super()`, `setContainedBinding()`, `setRootTag()`, `invalidateAll()`, `synchronized()`, `requestRebind()`, `hasPendingBindings()`, `if()`, `setLifecycleOwner()`, `executeBindings()`, `executeBindingsOn()`
- **`LayoutCockpitBinding`** — 7 function(s): `setGlobalCarViewModel()`, `LayoutCockpitBinding()`, `super()`, `getGlobalCarViewModel()`, `inflate()`, `return()`, `bind()`
- **`LayoutCockpitBindingImpl`** — 18 function(s): `LayoutCockpitBindingImpl()`, `this()`, `super()`, `setRootTag()`, `invalidateAll()`, `synchronized()`, `requestRebind()`, `hasPendingBindings()`, `setVariable()`, `if()`, `setGlobalCarViewModel()`, `notifyPropertyChanged()`, `onFieldChange()`, `onChangeGlobalCarViewModelCockpitIndex()`, `executeBindings()`, `updateLiveDataRegistration()`, `_internalCallbackOnClick()`, `switch()`
- **`LayoutCockpitBindingLdrtlImpl`** — 18 function(s): `LayoutCockpitBindingLdrtlImpl()`, `this()`, `super()`, `setRootTag()`, `invalidateAll()`, `synchronized()`, `requestRebind()`, `hasPendingBindings()`, `setVariable()`, `if()`, `setGlobalCarViewModel()`, `notifyPropertyChanged()`, `onFieldChange()`, `onChangeGlobalCarViewModelCockpitIndex()`, `executeBindings()`, `updateLiveDataRegistration()`, `_internalCallbackOnClick()`, `switch()`
- **`LayoutOpenCloseControlBinding`** — 7 function(s): `setGlobalCarViewModel()`, `LayoutOpenCloseControlBinding()`, `super()`, `getGlobalCarViewModel()`, `inflate()`, `return()`, `bind()`
- **`LayoutOpenCloseControlBindingImpl`** — 18 function(s): `LayoutOpenCloseControlBindingImpl()`, `this()`, `super()`, `setRootTag()`, `invalidateAll()`, `synchronized()`, `requestRebind()`, `hasPendingBindings()`, `setVariable()`, `if()`, `setGlobalCarViewModel()`, `notifyPropertyChanged()`, `onFieldChange()`, `onChangeGlobalCarViewModelOpenCloseControlIndex()`, `executeBindings()`, `updateLiveDataRegistration()`, `_internalCallbackOnClick()`, `switch()`
- **`LayoutOpenCloseControlBindingLdrtlImpl`** — 18 function(s): `LayoutOpenCloseControlBindingLdrtlImpl()`, `this()`, `super()`, `setRootTag()`, `invalidateAll()`, `synchronized()`, `requestRebind()`, `hasPendingBindings()`, `setVariable()`, `if()`, `setGlobalCarViewModel()`, `notifyPropertyChanged()`, `onFieldChange()`, `onChangeGlobalCarViewModelOpenCloseControlIndex()`, `executeBindings()`, `updateLiveDataRegistration()`, `_internalCallbackOnClick()`, `switch()`
- **`TipGearNotPBinding`** — 5 function(s): `TipGearNotPBinding()`, `super()`, `inflate()`, `return()`, `bind()`
- **`TipGearNotPBindingImpl`** — 13 function(s): `_internalCallbackOnClick()`, `onFieldChange()`, `setVariable()`, `TipGearNotPBindingImpl()`, `this()`, `super()`, `setRootTag()`, `invalidateAll()`, `synchronized()`, `requestRebind()`, `hasPendingBindings()`, `executeBindings()`, `if()`
- **`TipGearNotPBindingLdrtlImpl`** — 13 function(s): `_internalCallbackOnClick()`, `onFieldChange()`, `setVariable()`, `TipGearNotPBindingLdrtlImpl()`, `this()`, `super()`, `setRootTag()`, `invalidateAll()`, `synchronized()`, `requestRebind()`, `hasPendingBindings()`, `executeBindings()`, `if()`

</details>

### Package `com.yftech.yfmycar.generated.callback`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `OnClickListener` | class | View.OnClickListener | 25 | 3 |

<details>
<summary><b>Function list for <code>com.yftech.yfmycar.generated.callback</code></b> (click to expand)</summary>

- **`OnClickListener`** — 3 function(s): `_internalCallbackOnClick()`, `OnClickListener()`, `onClick()`

</details>

### Package `com.yftech.yfmycar.view`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `MyCarActivity` | class | VDBBaseActivity<ActivityMainBinding> | 227 | 38 |

<details>
<summary><b>Function list for <code>com.yftech.yfmycar.view</code></b> (click to expand)</summary>

- **`MyCarActivity`** — 13 function(s): `registerEventBus()`, `onCreate()`, `onChanged()`, `onIntent()`, `onClick()`, `if()`, `onDestroy()`, `switchFragment()`, `switch()`, `showFragment()`, `onNewIntent()`, `onPause()`, `for()`

</details>

### Package `com.yftech.yfmycar.view.base`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BaseActivity` | class | AppCompatActivity | 156 | 32 |
| `BaseFragment` | class | Fragment implements View.OnClickListener | 225 | 43 |
| `GlobalCarViewModel` | class | ViewModel | 153 | 25 |
| `VDBBaseActivity` | class | ViewDataBinding> extends BaseActivity | 32 | 4 |

<details>
<summary><b>Function list for <code>com.yftech.yfmycar.view.base</code></b> (click to expand)</summary>

- **`BaseActivity`** — 22 function(s): `registerEventBus()`, `onCreate()`, `if()`, `finish()`, `isBroughtToFront()`, `return()`, `onStart()`, `onResume()`, `onPause()`, `onStop()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `onBackPressed()`, `onDestroy()`, `getFactory()`, `ActivityViewModelFactory()`, `getFragmentScopeViewModel()`, `getActivityScopeViewModel()`, `getApplicationScopeViewModel()`, `showFragment()`, `for()`, `createFragment()`
- **`BaseFragment`** — 24 function(s): `doWorkAfterTimeOut()`, `onBindView()`, `onClick()`, `setFragmentIndex()`, `setLayout()`, `onCreateView()`, `if()`, `ClassCastException()`, `showErrorTip()`, `onHiddenChanged()`, `isShowErrorTip()`, `switch()`, `onCarWindowErrorEvent()`, `showTip()`, `showShortToast()`, `showLongToast()`, `onResume()`, `onPause()`, `onDestroyView()`, `onDestroy()`, `stopCarRestTimer()`, `startCarRestTimer()`, `run()`, `restartCarRestTimer()`
- **`GlobalCarViewModel`** — 14 function(s): `isArLanguage()`, `setTopIndex()`, `setOpenCloseControlIndex()`, `setCockpitIndex()`, `setLampIndex()`, `initCurrentIndex()`, `if()`, `while()`, `setCurrentIndex()`, `switch()`, `getCarModelImg()`, `getCarCockpitlImg()`, `getCarLampImg()`, `controlCarWindowAll()`
- **`VDBBaseActivity`** — 4 function(s): `onCreate()`, `setContentView()`, `onDestroy()`, `if()`

</details>

### Package `com.yftech.yfmycar.view.bean`  (14 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AirSeatEvent` | class | Parcelable | 92 | 17 |
| `CarDoorStatusEvent` | class | — | 30 | 5 |
| `CarLightEvent` | class | — | 15 | 2 |
| `CarTailgateEvent` | class | — | 48 | 9 |
| `CarWindowEvent` | class | — | 66 | 13 |
| `DriveModeEvent` | class | — | 24 | 4 |
| `FragmentsIndex` | class | — | 17 | 0 |
| `GearPositionEvent` | class | — | 17 | 2 |
| `PowerEvent` | class | — | 17 | 2 |
| `SkyLightEvent` | class | — | 44 | 8 |
| `SpeedEvent` | class | — | 15 | 2 |
| `WhichCarSeat` | class | — | 15 | 0 |
| `WindowControlStatus` | class | — | 16 | 0 |
| `WindowErrorEvent` | class | — | 35 | 6 |

<details>
<summary><b>Function list for <code>com.yftech.yfmycar.view.bean</code></b> (click to expand)</summary>

- **`AirSeatEvent`** — 15 function(s): `createFromParcel()`, `AirSeatEvent()`, `newArray()`, `describeContents()`, `getSeatType()`, `setSeatType()`, `getVentHeatAuto()`, `setVentHeatAuto()`, `getLevel()`, `setLevel()`, `isAutoEnable()`, `setAutoEnable()`, `writeToParcel()`, `readFromParcel()`, `toString()`
- **`CarDoorStatusEvent`** — 5 function(s): `getWhichCarWindow()`, `setWhichCarWindow()`, `getDoorState()`, `setDoorState()`, `toString()`
- **`CarLightEvent`** — 2 function(s): `isEnable()`, `setEnable()`
- **`CarTailgateEvent`** — 9 function(s): `getChangeType()`, `setChangeType()`, `getState()`, `setState()`, `getPercent()`, `setPercent()`, `getMemoryPercent()`, `setMemoryPercent()`, `toString()`
- **`CarWindowEvent`** — 13 function(s): `getCarWindowOperationStateFL()`, `setCarWindowOperationStateFL()`, `getCarWindowOperationStateFR()`, `setCarWindowOperationStateFR()`, `getCarWindowOperationStateRL()`, `setCarWindowOperationStateRL()`, `getCarWindowOperationStateRR()`, `setCarWindowOperationStateRR()`, `getWhichCarWindow()`, `setWhichCarWindow()`, `getPercent()`, `setPercent()`, `toString()`
- **`DriveModeEvent`** — 3 function(s): `DriveModeEvent()`, `getMode()`, `setMode()`
- **`GearPositionEvent`** — 2 function(s): `getGearPosition()`, `setGearPosition()`
- **`PowerEvent`** — 2 function(s): `getPowerMode()`, `setPowerMode()`
- **`SkyLightEvent`** — 8 function(s): `getPercentSky()`, `setPercentSky()`, `getOpenOpertionSky()`, `setOpenOpertionSky()`, `isTiltUp()`, `setTiltUp()`, `getWhichWindow()`, `setWhichWindow()`
- **`SpeedEvent`** — 2 function(s): `getSpeed()`, `setSpeed()`
- **`WindowErrorEvent`** — 5 function(s): `WindowErrorEvent()`, `getWhichFragment()`, `setWhichFragment()`, `isError()`, `setError()`

</details>

### Package `com.yftech.yfmycar.view.callback`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `WindowAnimCallBack` | class | — | 11 | 3 |

<details>
<summary><b>Function list for <code>com.yftech.yfmycar.view.callback</code></b> (click to expand)</summary>

- **`WindowAnimCallBack`** — 3 function(s): `doAnimationStartEnd()`, `doAnimationUpdate()`, `doDownUpVisible()`

</details>

### Package `com.yftech.yfmycar.view.fragment.control`  (6 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `FrontLeftWindowFragment` | class | BaseFragment implements View.OnClickListener | 150 | 23 |
| `FrontRightWindowFragment` | class | BaseFragment implements View.OnClickListener | 150 | 23 |
| `RearLeftSlidingDoorFragment` | class | BaseFragment implements View.OnClickListener | 139 | 20 |
| `RearRightSlidingDoorFragment` | class | BaseFragment implements View.OnClickListener | 148 | 23 |
| `SkyLightFragment` | class | BaseFragment implements View.OnClickListener | 308 | 43 |
| `TailgateFragment` | class | BaseFragment implements View.OnClickListener | 285 | 48 |

<details>
<summary><b>Function list for <code>com.yftech.yfmycar.view.fragment.control</code></b> (click to expand)</summary>

- **`FrontLeftWindowFragment`** — 12 function(s): `setFragmentIndex()`, `setLayout()`, `onBindView()`, `onLongClick()`, `doAnimationStartEnd()`, `doAnimationUpdate()`, `doDownUpVisible()`, `initWindowPercent()`, `if()`, `onHiddenChanged()`, `onCarWindowEvent()`, `onClick()`
- **`FrontRightWindowFragment`** — 12 function(s): `setFragmentIndex()`, `setLayout()`, `onBindView()`, `onLongClick()`, `doAnimationStartEnd()`, `doAnimationUpdate()`, `doDownUpVisible()`, `initWindowPercent()`, `if()`, `onHiddenChanged()`, `onCarWindowEvent()`, `onClick()`
- **`RearLeftSlidingDoorFragment`** — 11 function(s): `setFragmentIndex()`, `setLayout()`, `onBindView()`, `onLongClick()`, `doAnimationStartEnd()`, `doAnimationUpdate()`, `doDownUpVisible()`, `initWindowPercent()`, `if()`, `onClick()`, `onCarWindowEvent()`
- **`RearRightSlidingDoorFragment`** — 12 function(s): `setFragmentIndex()`, `setLayout()`, `onBindView()`, `onLongClick()`, `doAnimationStartEnd()`, `doAnimationUpdate()`, `doDownUpVisible()`, `initWindowPercent()`, `if()`, `onHiddenChanged()`, `onClick()`, `onCarWindowEvent()`
- **`SkyLightFragment`** — 16 function(s): `handleMessage()`, `if()`, `setFragmentIndex()`, `setLayout()`, `onBindView()`, `onClick()`, `onLongClick()`, `doAnimationStartEnd()`, `doAnimationUpdate()`, `doDownUpVisible()`, `onCheckedChanged()`, `initUiData()`, `initTipupUI()`, `onHiddenChanged()`, `onEvent()`, `switch()`
- **`TailgateFragment`** — 16 function(s): `setFragmentIndex()`, `setLayout()`, `onBindView()`, `if()`, `onClick()`, `isMoving()`, `onUiBack()`, `onMemoryChange()`, `onTip()`, `onFinish()`, `initButton()`, `showTip()`, `onHiddenChanged()`, `showLongToast()`, `TailgateEvent()`, `onFragmentEvent()`

</details>

### Package `com.yftech.yfmycar.view.fragment.light`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AtmosphereLampFragment` | class | BaseFragment | 284 | 40 |
| `LightShowFragment` | class | BaseFragment | 25 | 3 |

<details>
<summary><b>Function list for <code>com.yftech.yfmycar.view.fragment.light</code></b> (click to expand)</summary>

- **`AtmosphereLampFragment`** — 18 function(s): `handleMessage()`, `setFragmentIndex()`, `setLayout()`, `getCarLampImg()`, `onBindView()`, `onClick()`, `onCheckedChanged()`, `onTouch()`, `onProgressChanged()`, `if()`, `onStartTrackingTouch()`, `onStopTrackingTouch()`, `initUi()`, `onHiddenChanged()`, `followCarColor()`, `switch()`, `onEvent()`, `driveModeEvent()`
- **`LightShowFragment`** — 3 function(s): `onBindView()`, `setFragmentIndex()`, `setLayout()`

</details>

### Package `com.yftech.yfmycar.view.fragment.seat`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `FrontSeatFragment` | class | BaseFragment | 137 | 22 |
| `LeftRearviewMirrorFragment` | class | BaseFragment implements View.OnClickListener, View.OnTouchListener | 256 | 22 |
| `RightRearviewMirrorFragment` | class | BaseFragment implements View.OnClickListener, View.OnTouchListener | 261 | 23 |
| `SteeringWheelFragment` | class | BaseFragment implements View.OnClickListener | 46 | 5 |

<details>
<summary><b>Function list for <code>com.yftech.yfmycar.view.fragment.seat</code></b> (click to expand)</summary>

- **`FrontSeatFragment`** — 9 function(s): `newInstance()`, `setFragmentIndex()`, `setLayout()`, `onBindView()`, `if()`, `onCheckedChanged()`, `onDestroy()`, `onAirSeatEventMainThread()`, `onPowerEvent()`
- **`LeftRearviewMirrorFragment`** — 12 function(s): `run()`, `onClick()`, `setFragmentIndex()`, `setLayout()`, `onBindView()`, `onChanged()`, `onLongClick()`, `onPause()`, `onHiddenChanged()`, `if()`, `onTouch()`, `switch()`
- **`RightRearviewMirrorFragment`** — 12 function(s): `run()`, `if()`, `onClick()`, `setFragmentIndex()`, `setLayout()`, `onBindView()`, `onChanged()`, `onLongClick()`, `onPause()`, `onHiddenChanged()`, `onTouch()`, `switch()`
- **`SteeringWheelFragment`** — 5 function(s): `setFragmentIndex()`, `setLayout()`, `onBindView()`, `onClick()`, `if()`

</details>

### Package `com.yftech.yfmycar.view.manager`  (9 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CarConfigControl` | class | — | 153 | 42 |
| `CarDoorControl` | class | — | 245 | 43 |
| `CarInfoControl` | class | — | 132 | 19 |
| `CarMirrorControl` | class | — | 49 | 9 |
| `EventBusCompat` | class | — | 38 | 9 |
| `LightManager` | class | — | 187 | 36 |
| `ManagerUtil` | class | — | 31 | 2 |
| `MyCarWindowManager` | class | — | 446 | 71 |
| `SeatsManager` | class | — | 429 | 55 |

<details>
<summary><b>Function list for <code>com.yftech.yfmycar.view.manager</code></b> (click to expand)</summary>

- **`CarConfigControl`** — 22 function(s): `CarConfigControl()`, `isArLanguage()`, `isGACLogoPresent()`, `isCockpitConfigShow()`, `for()`, `if()`, `isAllWindowOpenShow()`, `isAllWindowCloseShow()`, `isRoofControlPresent()`, `isPlgmfunccfgPresent()`, `getWindowConfig()`, `isIalPresent()`, `isRearviewMirrorAdjustmentPresent()`, `isSeatVisible()`, `isLeftHandDriveVehicles()`, `getLightShowConfig()`, `getAtmosphereLampConfig()`, `getFragmentIndexConfig()`, `isRightLeftSeatNameNeedReverse()`, `isOpenCloseControlConfigShow()`, `switch()`, `getFragmentConfigVisible()`
- **`CarDoorControl`** — 36 function(s): `onHoodDoorStateChanged()`, `onDriverDoorStateChanged()`, `onPassengerDoorStateChanged()`, `onRearLeftDoorStateChanged()`, `onRearRightDoorStateChanged()`, `onSlidingDoorStateLChanged()`, `onSlidingDoorStateRChanged()`, `onTrunkDoorStateChanged()`, `onRemoteUnlockModeChanged()`, `onAutoUnlockChanged()`, `onPEPSAutoTrunkOpenChanged()`, `onPSDDoorSpeedLChanged()`, `onPSDDoorSpeedRChanged()`, `onSlidingDoorModeAutoStateChanged()`, `onTailDoorPercentChanged()`, `onTailDoorModeStateChanged()`, `onTailDoorTravelPercentChanged()`, `onTailDoorStateChanged()`, `getInstance()`, `if()`, `synchronized()`, `init()`, `unInit()`, `getTailgateTravelPercent()`, `getTailDoorPercent()`, `saveTailDoorPercent()`, `clearTailDoorMemory()`, `getTailgateStatus()`, `controlTailgatePercent()`, `isSlidingDoorModeAutoEnabled()`, `controlSlidingDoorLeft()`, `controlSlidingDoorRight()`, `getSlidingDoorOperationL()`, `getSlidingDoorOperationR()`, `getSlidingDoorStateL()`, `getSlidingDoorStateR()`
- **`CarInfoControl`** — 13 function(s): `getInstance()`, `if()`, `synchronized()`, `init()`, `onPowerModeChanged()`, `onVehicleSpeedChanged()`, `onGearPositionChanged()`, `onPowerStateChanged()`, `getPowerModel()`, `getVehicleSpeed()`, `getGear()`, `isPlgmfunccfgPresent()`, `unInit()`
- **`CarMirrorControl`** — 8 function(s): `onRearviewMirrorStateLChanged()`, `onRearviewMirrorStateRChanged()`, `getInstance()`, `if()`, `synchronized()`, `init()`, `unInit()`, `setRearViewMirrorCmd()`
- **`EventBusCompat`** — 7 function(s): `register()`, `if()`, `unregister()`, `post()`, `postSticky()`, `removeStickyEvent()`, `return()`
- **`LightManager`** — 34 function(s): `onAtmosphereLampBrightnessChanged()`, `onAtmosphereLampColorChanged()`, `onAtmosphereLampMusicModeEnableStateChanged()`, `onAtmosphereLampWorkModeChanged()`, `onBrakeLampStateChanged()`, `onILBCStateChanged()`, `onIHBCEnableStateChanged()`, `onHeadLightDelayEnableStateChanged()`, `onLowLightStateChanged()`, `onTopLightStateChanged()`, `getInstance()`, `if()`, `synchronized()`, `isArLanguage()`, `LightManager()`, `init()`, `uninit()`, `setAtmosphereLampStateEnabled()`, `getAtmosphereLampBrightness()`, `setAtmosphereLampBrightness()`, `getAtmosphereLampColor()`, `setAtmosphereLampColor()`, `getAtmosphereLampMusicModeEnableState()`, `setAtmosphereLampMusicModeEnabled()`, `getAtmosphereLampWorkMode()`, `setAtmosphereLampDriveModeEnabled()`, `setAtmosphereLampMode()`, `getHeadLightDelayEnableState()`, `getIHBCEnableState()`, `isBrakeLampEnabled()`, `isILBCEnabled()`, `isLowLightEnabled()`, `isSmallLightEnabled()`, `isTopLightEnabled()`
- **`ManagerUtil`** — 2 function(s): `initAllManager()`, `unInitAllManager()`
- **`MyCarWindowManager`** — 50 function(s): `onWindowOpenPrecisePercentFLChanged()`, `onWindowOpenPrecisePercentFRChanged()`, `onWindowOpenPrecisePercentRLChanged()`, `onWindowOpenPrecisePercentRRChanged()`, `onWindowStateFLChanged()`, `onWindowOpenPercentFLChanged()`, `onWindowOperationStateFLChanged()`, `onWindowOverheatStateFLChanged()`, `onWindowStateFRChanged()`, `onWindowOpenPercentFRChanged()`, `onWindowOperationStateFRChanged()`, `onWindowOverheatStateFRChanged()`, `onWindowStateRLChanged()`, `onWindowOpenPercentRLChanged()`, `onWindowOperationStateRLChanged()`, `onWindowOverheatStateRLChanged()`, `onWindowStateRRChanged()`, `onWindowOpenPercentRRChanged()`, `onWindowOperationStateRRChanged()`, `onWindowOverheatStateRRChanged()`, `onWindowRoofOpenPercentChanged()`, `onWindowRoofOpenOpertionChanged()`, `onWindowRoofShadeOpenPercentChanged()`, `onWindowRoofShadeOpenOpertionChanged()`, `getInstance()`, `if()`, `synchronized()`, `registerListener()`, `unregisterListener()`, `getWindowConfig()`, `controlCarWindowAll()`, `getWindowOpenPrecisePercent()`, `switch()`, `getWindowOperationState()`, `getWindowState()`, `controlCarWindow()`, `setWindowOpenPercentEnableState()`, `getWindowStateError()`, `controlCarWindowFrontLeft()`, `controlCarWindowFrontRight()`, `controlCarWindowRearLeft()`, `controlCarWindowRearRight()`, `controlSkyLightPercent()`, `getWindowRoofOpenOpertion()`, `getWindowRoofShadeOpenState()`, `setWindowRoofShadeOpenState()`, `getWindowRoofOpenPercent()`, `controlSkyLightOpenClose()`, `controlSunshade()`, `controlTiltUp()`
- **`SeatsManager`** — 41 function(s): `onDriveModeChanged()`, `onEspStateChanged()`, `onHdcStateChanged()`, `onHeatLevelFLChanged()`, `onHeatLevelFRChanged()`, `onHeatLevelRLChanged()`, `onHeatLevelRRChanged()`, `onVentLevelFLChanged()`, `onVentLevelFRChanged()`, `onVentLevelRLChanged()`, `onVentLevelRRChanged()`, `onHeatVentAutoModeFLStateChanged()`, `onHeatVentAutoModeFRStateChanged()`, `onHeatVentAutoModeRLStateChanged()`, `onHeatVentAutoModeRRStateChanged()`, `getInstance()`, `if()`, `synchronized()`, `SeatsManager()`, `init()`, `isA88()`, `controlSeatAction()`, `isSeatControlPresent()`, `getVehicleType()`, `getVentilationHeatConfigShow()`, `getVentilationHeatConfig()`, `switch()`, `isInvalidValue()`, `getHeatLevel()`, `getVentLevel()`, `isVentLevelEnable()`, `isHeatLevelEnable()`, `isVentLevelError()`, `isHeatLevelError()`, `isHeatVentAutoModeEnabled()`, `setHeatLevel()`, `setVentLevel()`, `setHeatVentOff()`, `setHeatVentMode()`, `setHeatVentAutoModeEnabled()`, `uninit()`

</details>

### Package `com.yftech.yfmycar.view.utils`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `LogUtil` | class | — | 33 | 6 |
| `ReflectUtil` | class | — | 201 | 33 |
| `UiHandler` | class | — | 55 | 15 |
| `VDBUtil` | class | — | 85 | 24 |

<details>
<summary><b>Function list for <code>com.yftech.yfmycar.view.utils</code></b> (click to expand)</summary>

- **`LogUtil`** — 6 function(s): `setTag()`, `i()`, `d()`, `w()`, `e()`, `v()`
- **`ReflectUtil`** — 12 function(s): `newInstance()`, `if()`, `for()`, `InvalidParameterException()`, `getFieldValue()`, `getConstValue()`, `getMethodValue()`, `getStaticMethodValue()`, `setFieldValue()`, `setMethodValue()`, `findMethod()`, `invokeStaticMethod()`
- **`UiHandler`** — 10 function(s): `SingletonHolder()`, `getInstance()`, `UiHandler()`, `getUiHandler()`, `isUIThread()`, `runOnUiThread()`, `if()`, `post()`, `postDelayed()`, `removeCallbacks()`
- **`VDBUtil`** — 10 function(s): `createViewDataBindingFromGenericSuperclass()`, `return()`, `while()`, `if()`, `for()`, `IllegalStateException()`, `createViewDataBinding()`, `NullPointerException()`, `RuntimeException()`, `unbindAdapter()`

</details>

### Package `com.yftech.yfmycar.view.vm`  (5 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ActivityViewModel` | class | ViewModel | 14 | 1 |
| `ActivityViewModelFactory` | class | ViewModelProvider.AndroidViewModelFactory | 38 | 9 |
| `AppViewModelStore` | class | — | 27 | 4 |
| `NonNullLiveData` | class | SafetyLiveData<T> | 23 | 7 |
| `SafetyLiveData` | class | MutableLiveData<T> | 123 | 29 |

<details>
<summary><b>Function list for <code>com.yftech.yfmycar.view.vm</code></b> (click to expand)</summary>

- **`ActivityViewModel`** — 1 function(s): `ActivityViewModel()`
- **`ActivityViewModelFactory`** — 6 function(s): `ActivityViewModelFactory()`, `super()`, `create()`, `if()`, `RuntimeException()`, `return()`
- **`AppViewModelStore`** — 4 function(s): `SingletonHolder()`, `getViewModelStore()`, `getApplicationScopeViewModel()`, `return()`
- **`NonNullLiveData`** — 7 function(s): `NonNullLiveData()`, `super()`, `getValue()`, `return()`, `toggle()`, `if()`, `setValue()`
- **`SafetyLiveData`** — 17 function(s): `beforeSetValue()`, `onGetValueDelayed()`, `SafetyLiveData()`, `this()`, `setValue()`, `safeSetValue()`, `postValue()`, `run()`, `observe()`, `if()`, `realSetValue()`, `notifyBeforeSetValue()`, `while()`, `observeForever()`, `removeObserver()`, `notifyObserver()`, `setSetPropertyValueCallback()`

</details>

### Package `com.yftech.yfmycar.view.widgets`  (14 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AngleLeftTouchRelativeLayout` | class | RelativeLayout | 110 | 21 |
| `AngleTouchRelativeLayout` | class | RelativeLayout | 147 | 24 |
| `BtSwitcher` | class | Switcher | 76 | 13 |
| `ColorfulBitmap` | class | View | 110 | 21 |
| `FontSeatPositionView` | class | FrameLayout implements View.OnClickListener, View.OnTouchListener | 145 | 23 |
| `HorizontalAnimWindowTouch` | class | RelativeLayout | 297 | 60 |
| `RelativeRadioGroup` | class | RelativeLayout implements CompoundButton.OnCheckedChangeListener | 105 | 29 |
| `SeatVentilationHeatingView` | class | FrameLayout implements View.OnClickListener | 462 | 67 |
| `SlideImageView` | class | AppCompatImageView implements View.OnTouchListener | 171 | 26 |
| `Switcher` | class | Switch | 50 | 13 |
| `TailgateBitmapView` | class | View | 69 | 10 |
| `TailgateOpenView` | class | View implements View.OnClickListener | 528 | 102 |
| `VerticalAnimWindowTouchView` | class | RelativeLayout | 226 | 30 |
| `WindowReversingTipView` | class | FrameLayout | 44 | 10 |

<details>
<summary><b>Function list for <code>com.yftech.yfmycar.view.widgets</code></b> (click to expand)</summary>

- **`AngleLeftTouchRelativeLayout`** — 13 function(s): `onSpecialTypeClick()`, `onInterceptTouchEvent()`, `AngleLeftTouchRelativeLayout()`, `super()`, `onSizeChanged()`, `onTouchEvent()`, `if()`, `doOnSpecialTypeClick()`, `switch()`, `for()`, `setOnSpecialTypeClickListener()`, `touchOnWhichPart()`, `onLayout()`
- **`AngleTouchRelativeLayout`** — 14 function(s): `onSpecialTypeClick()`, `onInterceptTouchEvent()`, `AngleTouchRelativeLayout()`, `super()`, `if()`, `for()`, `onSizeChanged()`, `onTouchEvent()`, `doOnSpecialTypeClick()`, `setAngles()`, `switch()`, `setOnSpecialTypeClickListener()`, `touchOnWhichPart()`, `onLayout()`
- **`BtSwitcher`** — 5 function(s): `BtSwitcher()`, `super()`, `dispatchTouchEvent()`, `switch()`, `if()`
- **`ColorfulBitmap`** — 9 function(s): `ColorfulBitmap()`, `super()`, `init()`, `invalidate()`, `getCarLampImg()`, `onSizeChanged()`, `onDraw()`, `makeTintBitmap()`, `if()`
- **`FontSeatPositionView`** — 9 function(s): `onClick()`, `FontSeatPositionView()`, `super()`, `run()`, `if()`, `initSeatFront()`, `onTouch()`, `switch()`, `doControlSeatAction()`
- **`HorizontalAnimWindowTouch`** — 22 function(s): `HorizontalAnimWindowTouch()`, `super()`, `handleMessage()`, `if()`, `initUI()`, `onMeasure()`, `init()`, `addView()`, `onTouch()`, `switch()`, `resetMargins()`, `setPercent()`, `resetViewMargin()`, `moveTwentyPercent()`, `setWindowAnimCallBack()`, `initSkyLightPercent()`, `initSunBlind()`, `setGravity()`, `setOutlineProvider()`, `setClipToOutline()`, `RoundViewOutlineProvider()`, `getOutline()`
- **`RelativeRadioGroup`** — 11 function(s): `RelativeRadioGroup()`, `super()`, `onLayout()`, `for()`, `if()`, `onCheckedChanged()`, `setCheck()`, `check()`, `clearCheck()`, `getCheckedRadioButtonId()`, `setOnCheckedChangeListener()`
- **`SeatVentilationHeatingView`** — 22 function(s): `valueOfSeatName()`, `switch()`, `setSeatType()`, `SeatVentilationHeatingView()`, `super()`, `handleMessage()`, `if()`, `init()`, `initUI()`, `findViewById()`, `onCheckedChanged()`, `onSpecialTypeClick()`, `initSeatStatus()`, `onClick()`, `setHeatLevel()`, `setVentLevel()`, `setHeatVentOff()`, `setCoolHotLevelUI()`, `onAirSeatEvent()`, `onAirSeat()`, `getHeatLevelByValue()`, `getVentLevelByValue()`
- **`SlideImageView`** — 12 function(s): `onDoorFromRightToLeft()`, `SlideImageView()`, `super()`, `initAnim()`, `setOnTouchListener()`, `setOnDoorStatusChangeListener()`, `onTouch()`, `if()`, `switch()`, `setLayoutParams()`, `onAnimationUpdate()`, `startAnim()`
- **`Switcher`** — 5 function(s): `Switcher()`, `super()`, `onTouchEvent()`, `if()`, `setChecked()`
- **`TailgateBitmapView`** — 7 function(s): `TailgateBitmapView()`, `super()`, `initPaint()`, `onSizeChanged()`, `onDraw()`, `setMoveAngle()`, `invalidate()`
- **`TailgateOpenView`** — 33 function(s): `isMoving()`, `onFinish()`, `onMemoryChange()`, `onTip()`, `onUiBack()`, `onClick()`, `TailgateOpenView()`, `super()`, `handleMessage()`, `if()`, `setClickable()`, `initMemoryOpenAngle()`, `initAnim()`, `initPaint()`, `onAnimationUpdate()`, `onAnimationRepeat()`, `onAnimationStart()`, `onAnimationEnd()`, `onAnimationCancel()`, `onSizeChanged()`, `onDraw()`, `updateMemory()`, `invalidate()`, `onTouchEvent()`, `switch()`, `isClickPoint()`, `return()`, `startAnim()`, `setMoveAngle()`, `isNeedMove()`, `startMoveAnim()`, `onUiBackMessageDelayed()`, `setOnTailGateStatusChangeListener()`
- **`VerticalAnimWindowTouchView`** — 11 function(s): `VerticalAnimWindowTouchView()`, `super()`, `handleMessage()`, `if()`, `initUI()`, `onMeasure()`, `addView()`, `onTouch()`, `switch()`, `initWindowPercent()`, `setWindowAnimCallBack()`
- **`WindowReversingTipView`** — 5 function(s): `WindowReversingTipView()`, `super()`, `initVdbData()`, `findViewById()`, `onClick()`

</details>

### Package `android.databinding.layouts`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `DataBindingInfo` | class | — | 6 | 0 |

<details>
<summary><b>Function list for <code>android.databinding.layouts</code></b> (click to expand)</summary>


</details>

### Package `android.support.v4.app`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `INotificationSideChannel` | class | IInterface | 134 | 24 |

<details>
<summary><b>Function list for <code>android.support.v4.app</code></b> (click to expand)</summary>

- **`INotificationSideChannel`** — 13 function(s): `cancel()`, `cancelAll()`, `notify()`, `asBinder()`, `Stub()`, `attachInterface()`, `asInterface()`, `if()`, `return()`, `Proxy()`, `onTransact()`, `switch()`, `getInterfaceDescriptor()`

</details>

### Package `android.support.v4.graphics.drawable`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `IconCompatParcelizer` | class | androidx.core.graphics.drawable.IconCompatParcelizer | 18 | 2 |

<details>
<summary><b>Function list for <code>android.support.v4.graphics.drawable</code></b> (click to expand)</summary>

- **`IconCompatParcelizer`** — 2 function(s): `read()`, `write()`

</details>

### Package `android.support.v4.os`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `IResultReceiver` | class | IInterface | 90 | 18 |
| `ResultReceiver` | class | Parcelable | 109 | 19 |

<details>
<summary><b>Function list for <code>android.support.v4.os</code></b> (click to expand)</summary>

- **`IResultReceiver`** — 10 function(s): `send()`, `asBinder()`, `Stub()`, `attachInterface()`, `asInterface()`, `if()`, `return()`, `Proxy()`, `onTransact()`, `getInterfaceDescriptor()`
- **`ResultReceiver`** — 12 function(s): `createFromParcel()`, `ResultReceiver()`, `newArray()`, `describeContents()`, `onReceiveResult()`, `MyRunnable()`, `run()`, `MyResultReceiver()`, `send()`, `if()`, `writeToParcel()`, `synchronized()`

</details>

### Package `androidx.annotation`  (51 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AnimRes` | class | — | 15 | 0 |
| `AnimatorRes` | class | — | 15 | 0 |
| `AnyRes` | class | — | 15 | 0 |
| `AnyThread` | class | — | 15 | 0 |
| `ArrayRes` | class | — | 15 | 0 |
| `AttrRes` | class | — | 15 | 0 |
| `BinderThread` | class | — | 15 | 0 |
| `BoolRes` | class | — | 15 | 0 |
| `CallSuper` | class | — | 15 | 0 |
| `CheckResult` | class | — | 16 | 1 |
| `ColorInt` | class | — | 13 | 0 |
| `ColorLong` | class | — | 13 | 0 |
| `ColorRes` | class | — | 15 | 0 |
| `DimenRes` | class | — | 15 | 0 |
| `Dimension` | class | — | 20 | 1 |
| `DrawableRes` | class | — | 15 | 0 |
| `FloatRange` | class | — | 20 | 4 |
| `FontRes` | class | — | 15 | 0 |
| `FractionRes` | class | — | 15 | 0 |
| `GuardedBy` | class | — | 14 | 1 |
| `HalfFloat` | class | — | 13 | 0 |
| `IdRes` | class | — | 15 | 0 |
| `IntDef` | class | — | 16 | 2 |
| `IntRange` | class | — | 16 | 2 |
| `IntegerRes` | class | — | 15 | 0 |
| `InterpolatorRes` | class | — | 15 | 0 |
| `Keep` | class | — | 13 | 0 |
| `LayoutRes` | class | — | 15 | 0 |
| `LongDef` | class | — | 16 | 2 |
| `MainThread` | class | — | 15 | 0 |
| `MenuRes` | class | — | 15 | 0 |
| `NavigationRes` | class | — | 15 | 0 |
| `NonNull` | class | — | 15 | 0 |
| `Nullable` | class | — | 15 | 0 |
| `PluralsRes` | class | — | 15 | 0 |
| `Px` | class | — | 16 | 0 |
| `RawRes` | class | — | 15 | 0 |
| `RequiresApi` | class | — | 18 | 2 |
| `RequiresFeature` | class | — | 16 | 2 |
| `RequiresPermission` | class | — | 33 | 6 |
| `RestrictTo` | class | — | 24 | 1 |
| `Size` | class | — | 20 | 4 |
| `StringDef` | class | — | 14 | 1 |
| `StringRes` | class | — | 15 | 0 |
| `StyleRes` | class | — | 15 | 0 |
| `StyleableRes` | class | — | 15 | 0 |
| `TransitionRes` | class | — | 15 | 0 |
| `UiThread` | class | — | 15 | 0 |
| `VisibleForTesting` | class | — | 16 | 1 |
| `WorkerThread` | class | — | 15 | 0 |
| `XmlRes` | class | — | 15 | 0 |

<details>
<summary><b>Function list for <code>androidx.annotation</code></b> (click to expand)</summary>

- **`CheckResult`** — 1 function(s): `suggest()`
- **`Dimension`** — 1 function(s): `unit()`
- **`FloatRange`** — 4 function(s): `from()`, `fromInclusive()`, `to()`, `toInclusive()`
- **`GuardedBy`** — 1 function(s): `value()`
- **`IntDef`** — 2 function(s): `flag()`, `value()`
- **`IntRange`** — 2 function(s): `from()`, `to()`
- **`LongDef`** — 2 function(s): `flag()`, `value()`
- **`RequiresApi`** — 2 function(s): `api()`, `value()`
- **`RequiresFeature`** — 2 function(s): `enforcement()`, `name()`
- **`RequiresPermission`** — 4 function(s): `value()`, `allOf()`, `anyOf()`, `conditional()`
- **`RestrictTo`** — 1 function(s): `value()`
- **`Size`** — 4 function(s): `max()`, `min()`, `multiple()`, `value()`
- **`StringDef`** — 1 function(s): `value()`
- **`VisibleForTesting`** — 1 function(s): `otherwise()`

</details>

### Package `androidx.appcompat`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 1,669 | 13 |

<details>
<summary><b>Function list for <code>androidx.appcompat</code></b> (click to expand)</summary>

- **`R`** — 13 function(s): `R()`, `anim()`, `attr()`, `bool()`, `color()`, `dimen()`, `drawable()`, `id()`, `integer()`, `layout()`, `string()`, `style()`, `styleable()`

</details>

### Package `androidx.appcompat.app`  (18 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ActionBar` | class | ViewGroup.MarginLayoutParams | 392 | 116 |
| `ActionBarDrawerToggle` | class | DrawerLayout.DrawerListener | 355 | 89 |
| `ActionBarDrawerToggleHoneycomb` | class | — | 93 | 12 |
| `AlertController` | class | Handler | 850 | 159 |
| `AlertDialog` | class | AppCompatDialog implements DialogInterface | 423 | 76 |
| `AppCompatActivity` | class | FragmentActivity implements AppCompatCallback, TaskStackBuilder.SupportParentable, Acti... | 343 | 93 |
| `AppCompatCallback` | class | — | 15 | 3 |
| `AppCompatDelegate` | class | — | 143 | 39 |
| `AppCompatDelegateImpl` | class | AppCompatDelegate implements MenuBuilder.Callback, LayoutInflater.Factory2 | 2,124 | 476 |
| `AppCompatDialog` | class | Dialog implements AppCompatCallback | 155 | 44 |
| `AppCompatDialogFragment` | class | DialogFragment | 36 | 5 |
| `AppCompatViewInflater` | class | View.OnClickListener | 401 | 90 |
| `NavItemSelectedListener` | class | AdapterView.OnItemSelectedListener | 26 | 4 |
| `ResourcesFlusher` | class | — | 193 | 32 |
| `ToolbarActionBar` | class | ActionBar | 554 | 130 |
| `TwilightCalculator` | class | — | 60 | 6 |
| `TwilightManager` | class | — | 124 | 16 |
| `WindowDecorActionBar` | class | ActionBar implements ActionBarOverlayLayout.ActionBarVisibilityCallback | 1,269 | 303 |

<details>
<summary><b>Function list for <code>androidx.appcompat.app</code></b> (click to expand)</summary>

- **`ActionBar`** — 84 function(s): `onMenuVisibilityChanged()`, `onNavigationItemSelected()`, `getContentDescription()`, `getCustomView()`, `getIcon()`, `getPosition()`, `getTag()`, `getText()`, `select()`, `setContentDescription()`, `setCustomView()`, `setIcon()`, `setTabListener()`, `setTag()`, `setText()`, `onTabReselected()`, `onTabSelected()`, `onTabUnselected()`, `addOnMenuVisibilityListener()`, `addTab()`, `closeOptionsMenu()`, `collapseActionView()`, `dispatchMenuVisibilityChanged()`, `getDisplayOptions()`, `getElevation()`, `getHeight()`, `getHideOffset()`, `getNavigationItemCount()`, `getNavigationMode()`, `getSelectedNavigationIndex()`, `getSelectedTab()`, `getSubtitle()`, `getTabAt()`, `getTabCount()`, `getThemedContext()`, `getTitle()`, `hide()`, `invalidateOptionsMenu()`, `isHideOnContentScrollEnabled()`, `isShowing()`, `isTitleTruncated()`, `newTab()`, `onConfigurationChanged()`, `onDestroy()`, `onKeyShortcut()`, `onMenuKeyEvent()`, `openOptionsMenu()`, `removeAllTabs()`, `removeOnMenuVisibilityListener()`, `removeTab()`, `removeTabAt()`, `requestFocus()`, `selectTab()`, `setBackgroundDrawable()`, `setDefaultDisplayHomeAsUpEnabled()`, `setDisplayHomeAsUpEnabled()`, `setDisplayOptions()`, `setDisplayShowCustomEnabled()`, `setDisplayShowHomeEnabled()`, `setDisplayShowTitleEnabled()`, `setDisplayUseLogoEnabled()`, `setHomeActionContentDescription()`, `setHomeAsUpIndicator()`, `setHomeButtonEnabled()`, `setListNavigationCallbacks()`, `setLogo()`, `setNavigationMode()`, `setSelectedNavigationItem()`, `setShowHideAnimationEnabled()`, `setSplitBackgroundDrawable()`, `setStackedBackgroundDrawable()`, `setSubtitle()`, `setTitle()`, `setWindowTitle()`, `show()`, `startActionMode()`, `setHideOnContentScrollEnabled()`, `if()`, `UnsupportedOperationException()`, `setHideOffset()`, `setElevation()`, `LayoutParams()`, `super()`, `this()`
- **`ActionBarDrawerToggle`** — 31 function(s): `getActionBarThemedContext()`, `getThemeUpIndicator()`, `isNavigationVisible()`, `setActionBarDescription()`, `setActionBarUpIndicator()`, `getDrawerToggleDelegate()`, `onDrawerStateChanged()`, `ActionBarDrawerToggle()`, `this()`, `if()`, `onClick()`, `syncState()`, `setPosition()`, `onConfigurationChanged()`, `onOptionsItemSelected()`, `toggle()`, `setHomeAsUpIndicator()`, `isDrawerIndicatorEnabled()`, `setDrawerIndicatorEnabled()`, `getDrawerArrowDrawable()`, `setDrawerArrowDrawable()`, `setDrawerSlideAnimationEnabled()`, `isDrawerSlideAnimationEnabled()`, `onDrawerSlide()`, `onDrawerOpened()`, `onDrawerClosed()`, `getToolbarNavigationClickListener()`, `setToolbarNavigationClickListener()`, `FrameworkActionBarDelegate()`, `return()`, `ToolbarCompatDelegate()`
- **`ActionBarDrawerToggleHoneycomb`** — 6 function(s): `setActionBarUpIndicator()`, `if()`, `setActionBarDescription()`, `getThemeUpIndicator()`, `SetIndicatorInfo()`, `ActionBarDrawerToggleHoneycomb()`
- **`AlertController`** — 54 function(s): `onClick()`, `if()`, `ButtonHandler()`, `handleMessage()`, `switch()`, `shouldCenterSingleButton()`, `AlertController()`, `canTextInput()`, `while()`, `installContent()`, `setupView()`, `selectContentView()`, `setTitle()`, `setCustomTitle()`, `setMessage()`, `setView()`, `setButtonPanelLayoutHint()`, `setButton()`, `IllegalArgumentException()`, `setIcon()`, `getIconAttributeResId()`, `getListView()`, `getButton()`, `onKeyDown()`, `onKeyUp()`, `resolvePanel()`, `return()`, `setupCustomContent()`, `setupContent()`, `setupButtons()`, `setupTitle()`, `setScrollIndicators()`, `onScrollChange()`, `run()`, `onScrollStateChanged()`, `onScroll()`, `manageScrollIndicators()`, `centerButton()`, `RecycleListView()`, `this()`, `super()`, `setHasDecor()`, `setPadding()`, `onPrepareListView()`, `AlertParams()`, `apply()`, `createListView()`, `getView()`, `bindView()`, `newView()`, `onItemClick()`, `getItemId()`, `hasStableIds()`, `CheckedItemAdapter()`
- **`AlertDialog`** — 40 function(s): `AlertDialog()`, `this()`, `super()`, `setCancelable()`, `setOnCancelListener()`, `resolveDialogTheme()`, `if()`, `getButton()`, `getListView()`, `setTitle()`, `setCustomTitle()`, `setMessage()`, `setView()`, `setButtonPanelLayoutHint()`, `setButton()`, `setIcon()`, `setIconAttribute()`, `getContext()`, `onCreate()`, `onKeyDown()`, `onKeyUp()`, `Builder()`, `setPositiveButton()`, `setPositiveButtonIcon()`, `setNegativeButton()`, `setNegativeButtonIcon()`, `setNeutralButton()`, `setNeutralButtonIcon()`, `setOnDismissListener()`, `setOnKeyListener()`, `setItems()`, `setAdapter()`, `setCursor()`, `setMultiChoiceItems()`, `setSingleChoiceItems()`, `setOnItemSelectedListener()`, `setInverseBackgroundForced()`, `setRecycleOnMeasureEnabled()`, `create()`, `show()`
- **`AppCompatActivity`** — 50 function(s): `onPrepareSupportNavigateUpTaskStack()`, `onSupportActionModeFinished()`, `onSupportActionModeStarted()`, `onSupportContentChanged()`, `onWindowStartingSupportActionMode()`, `setSupportProgress()`, `setSupportProgressBarIndeterminate()`, `setSupportProgressBarIndeterminateVisibility()`, `setSupportProgressBarVisibility()`, `onCreate()`, `if()`, `onApplyThemeResource()`, `setTheme()`, `onPostCreate()`, `getDelegate()`, `getSupportActionBar()`, `setSupportActionBar()`, `getMenuInflater()`, `setContentView()`, `addContentView()`, `onConfigurationChanged()`, `onPostResume()`, `onStart()`, `onStop()`, `findViewById()`, `return()`, `onMenuItemSelected()`, `onSupportNavigateUp()`, `onDestroy()`, `onTitleChanged()`, `supportRequestWindowFeature()`, `supportInvalidateOptionsMenu()`, `invalidateOptionsMenu()`, `startSupportActionMode()`, `onCreateSupportNavigateUpTaskStack()`, `finish()`, `supportNavigateUpTo()`, `getSupportParentActivityIntent()`, `supportShouldUpRecreateTask()`, `onContentChanged()`, `getDrawerToggleDelegate()`, `onMenuOpened()`, `onPanelClosed()`, `onSaveInstanceState()`, `dispatchKeyEvent()`, `getResources()`, `performMenuItemShortcut()`, `onKeyDown()`, `openOptionsMenu()`, `closeOptionsMenu()`
- **`AppCompatCallback`** — 3 function(s): `onSupportActionModeFinished()`, `onSupportActionModeStarted()`, `onWindowStartingSupportActionMode()`
- **`AppCompatDelegate`** — 33 function(s): `addContentView()`, `applyDayNight()`, `createView()`, `findViewById()`, `getDrawerToggleDelegate()`, `getMenuInflater()`, `getSupportActionBar()`, `hasWindowFeature()`, `installViewFactory()`, `invalidateOptionsMenu()`, `isHandleNativeActionModesEnabled()`, `onConfigurationChanged()`, `onCreate()`, `onDestroy()`, `onPostCreate()`, `onPostResume()`, `onSaveInstanceState()`, `onStart()`, `onStop()`, `requestWindowFeature()`, `setContentView()`, `setHandleNativeActionModesEnabled()`, `setLocalNightMode()`, `setSupportActionBar()`, `setTitle()`, `startSupportActionMode()`, `create()`, `AppCompatDelegateImpl()`, `setDefaultNightMode()`, `switch()`, `getDefaultNightMode()`, `setCompatVectorFromResourcesEnabled()`, `isCompatVectorFromResourcesEnabled()`
- **`AppCompatDelegateImpl`** — 142 function(s): `run()`, `if()`, `onSubDecorInstalled()`, `uncaughtException()`, `shouldWrapException()`, `AppCompatDelegateImpl()`, `IllegalStateException()`, `onCreate()`, `onPostCreate()`, `ensureSubDecor()`, `getSupportActionBar()`, `initWindowDecorActionBar()`, `peekSupportActionBar()`, `getWindowCallback()`, `setSupportActionBar()`, `invalidateOptionsMenu()`, `getActionBarThemedContext()`, `getMenuInflater()`, `findViewById()`, `return()`, `onConfigurationChanged()`, `applyDayNight()`, `onStart()`, `onStop()`, `onPostResume()`, `setContentView()`, `addContentView()`, `onSaveInstanceState()`, `onDestroy()`, `applyFixedSizeWindow()`, `invalidatePanelMenu()`, `createSubDecor()`, `requestWindowFeature()`, `onApplyWindowInsets()`, `onFitSystemWindows()`, `IllegalArgumentException()`, `while()`, `onAttachedFromWindow()`, `onDetachedFromWindow()`, `switch()`, `throwFeatureRequestIfSubDecorInstalled()`, `hasWindowFeature()`, `setTitle()`, `getTitle()`, `onPanelClosed()`, `closePanel()`, `onMenuOpened()`, `onMenuItemSelected()`, `onMenuModeChange()`, `reopenMenu()`, `startSupportActionMode()`, `startSupportActionModeFromWindow()`, `endOnGoingFadeAnimation()`, `onAnimationStart()`, `onAnimationEnd()`, `shouldAnimateActionModeView()`, `setHandleNativeActionModesEnabled()`, `isHandleNativeActionModesEnabled()`, `onBackPressed()`, `onKeyShortcut()`, `preparePanel()`, `dispatchKeyEvent()`, `onKeyUp()`, `onKeyUpPanel()`, `onKeyDown()`, `onKeyDownPanel()`, `createView()`, `shouldInheritContext()`, `installViewFactory()`, `onCreateView()`, `openPanel()`, `initializePanelDecor()`, `initializePanelMenu()`, `initializePanelContent()`, `checkCloseActionMenu()`, `callOnPanelClosed()`, `findMenuPanel()`, `for()`, `getPanelState()`, `performPanelShortcut()`, `doInvalidatePanelMenu()`, `updateStatusGuard()`, `AndroidRuntimeException()`, `sanitizeWindowFeatureId()`, `getSubDecor()`, `dismissPopups()`, `ensureAutoNightModeManager()`, `setLocalNightMode()`, `mapNightMode()`, `getNightMode()`, `updateForNightMode()`, `getAutoNightModeManager()`, `shouldRecreateOnNightModeChange()`, `ActionModeCallbackWrapperV9()`, `onCreateActionMode()`, `onPrepareActionMode()`, `onActionItemClicked()`, `onDestroyActionMode()`, `PanelMenuPresenterCallback()`, `onCloseMenu()`, `onOpenSubMenu()`, `ActionMenuPresenterCallback()`, `PanelFeatureState()`, `hasPanelItems()`, `clearMenuPresenters()`, `setStyle()`, `setMenu()`, `getListMenuView()`, `onRestoreInstanceState()`, `applyFrozenState()`, `createFromParcel()`, `newArray()`, `describeContents()`, `SavedState()`, `writeToParcel()`, `readFromParcel()`, `ListMenuDecorView()`, `super()`, `onInterceptTouchEvent()`, `setBackgroundResource()`, `setBackgroundDrawable()`, `isOutOfBounds()`, `onContentChanged()`, `AppCompatWindowCallback()`, `dispatchKeyShortcutEvent()`, `onCreatePanelMenu()`, `onPreparePanel()`, `onWindowStartingActionMode()`, `startAsSupportActionMode()`, `onProvideKeyboardShortcuts()`, `AutoNightModeManager()`, `getApplyableNightMode()`, `dispatchTimeChanged()`, `setup()`, `cleanup()`, `onReceive()`, `getDrawerToggleDelegate()`, `ActionBarDrawableToggleImpl()`, `getThemeUpIndicator()`, `isNavigationVisible()`, `setActionBarUpIndicator()`, `setActionBarDescription()`
- **`AppCompatDialog`** — 21 function(s): `onSupportActionModeFinished()`, `onSupportActionModeStarted()`, `onWindowStartingSupportActionMode()`, `AppCompatDialog()`, `this()`, `super()`, `superDispatchKeyEvent()`, `getDelegate()`, `onCreate()`, `getSupportActionBar()`, `setContentView()`, `findViewById()`, `return()`, `setTitle()`, `addContentView()`, `onStop()`, `supportRequestWindowFeature()`, `invalidateOptionsMenu()`, `if()`, `getThemeResId()`, `dispatchKeyEvent()`
- **`AppCompatDialogFragment`** — 5 function(s): `onCreateDialog()`, `AppCompatDialog()`, `setupDialog()`, `if()`, `switch()`
- **`AppCompatViewInflater`** — 40 function(s): `createView()`, `if()`, `switch()`, `verifyNotNull()`, `checkOnClickListener()`, `createTextView()`, `AppCompatTextView()`, `createImageView()`, `AppCompatImageView()`, `createButton()`, `AppCompatButton()`, `createEditText()`, `AppCompatEditText()`, `createSpinner()`, `AppCompatSpinner()`, `createImageButton()`, `AppCompatImageButton()`, `createCheckBox()`, `AppCompatCheckBox()`, `createRadioButton()`, `AppCompatRadioButton()`, `createCheckedTextView()`, `AppCompatCheckedTextView()`, `createAutoCompleteTextView()`, `AppCompatAutoCompleteTextView()`, `createMultiAutoCompleteTextView()`, `AppCompatMultiAutoCompleteTextView()`, `createRatingBar()`, `AppCompatRatingBar()`, `createSeekBar()`, `AppCompatSeekBar()`, `IllegalStateException()`, `createViewFromTag()`, `createViewByPrefix()`, `for()`, `themifyContext()`, `DeclaredOnClickListener()`, `onClick()`, `resolveMethod()`, `while()`
- **`NavItemSelectedListener`** — 4 function(s): `onNothingSelected()`, `NavItemSelectedListener()`, `onItemSelected()`, `if()`
- **`ResourcesFlusher`** — 7 function(s): `flush()`, `if()`, `flushNougats()`, `flushMarshmallows()`, `flushLollipops()`, `flushThemedResourcesCache()`, `ResourcesFlusher()`
- **`ToolbarActionBar`** — 81 function(s): `run()`, `onMenuItemClick()`, `getNavigationItemCount()`, `getNavigationMode()`, `getSelectedNavigationIndex()`, `getTabCount()`, `setDefaultDisplayHomeAsUpEnabled()`, `setHomeButtonEnabled()`, `setShowHideAnimationEnabled()`, `setSplitBackgroundDrawable()`, `setStackedBackgroundDrawable()`, `ToolbarActionBar()`, `getWrappedWindowCallback()`, `setCustomView()`, `if()`, `setIcon()`, `setLogo()`, `setElevation()`, `getElevation()`, `getThemedContext()`, `isTitleTruncated()`, `setHomeAsUpIndicator()`, `setHomeActionContentDescription()`, `onConfigurationChanged()`, `setListNavigationCallbacks()`, `setSelectedNavigationItem()`, `IllegalStateException()`, `setTitle()`, `setWindowTitle()`, `requestFocus()`, `setSubtitle()`, `setDisplayOptions()`, `setDisplayUseLogoEnabled()`, `setDisplayShowHomeEnabled()`, `setDisplayHomeAsUpEnabled()`, `setDisplayShowTitleEnabled()`, `setDisplayShowCustomEnabled()`, `setBackgroundDrawable()`, `getCustomView()`, `getTitle()`, `getSubtitle()`, `setNavigationMode()`, `IllegalArgumentException()`, `getDisplayOptions()`, `newTab()`, `UnsupportedOperationException()`, `addTab()`, `removeTab()`, `removeTabAt()`, `removeAllTabs()`, `selectTab()`, `getSelectedTab()`, `getTabAt()`, `getHeight()`, `show()`, `hide()`, `isShowing()`, `openOptionsMenu()`, `closeOptionsMenu()`, `invalidateOptionsMenu()`, `collapseActionView()`, `populateOptionsMenu()`, `onMenuKeyEvent()`, `onKeyShortcut()`, `onDestroy()`, `addOnMenuVisibilityListener()`, `removeOnMenuVisibilityListener()`, `dispatchMenuVisibilityChanged()`, `for()`, `ToolbarCallbackWrapper()`, `super()`, `onPreparePanel()`, `onCreatePanelView()`, `View()`, `getMenu()`, `ActionMenuPresenterCallback()`, `onOpenSubMenu()`, `onCloseMenu()`, `onMenuItemSelected()`, `MenuBuilderCallback()`, `onMenuModeChange()`
- **`TwilightCalculator`** — 3 function(s): `getInstance()`, `if()`, `calculateTwilight()`
- **`TwilightManager`** — 11 function(s): `getInstance()`, `if()`, `setInstance()`, `TwilightManager()`, `isNight()`, `updateState()`, `getLastKnownLocation()`, `return()`, `getLastKnownLocationForProvider()`, `isStateValid()`, `TwilightState()`
- **`WindowDecorActionBar`** — 119 function(s): `onAnimationEnd()`, `if()`, `onAnimationUpdate()`, `checkShowingFlags()`, `return()`, `onContentScrollStopped()`, `setSplitBackgroundDrawable()`, `WindowDecorActionBar()`, `init()`, `IllegalStateException()`, `setHomeButtonEnabled()`, `setHasEmbeddedTabs()`, `setHideOnContentScrollEnabled()`, `setElevation()`, `getDecorToolbar()`, `getElevation()`, `onConfigurationChanged()`, `ensureTabsExist()`, `completeDeferredDestroyActionMode()`, `onWindowVisibilityChanged()`, `setShowHideAnimationEnabled()`, `addOnMenuVisibilityListener()`, `removeOnMenuVisibilityListener()`, `dispatchMenuVisibilityChanged()`, `for()`, `setCustomView()`, `setDisplayUseLogoEnabled()`, `setDisplayOptions()`, `setDisplayShowHomeEnabled()`, `setDisplayHomeAsUpEnabled()`, `setDisplayShowTitleEnabled()`, `setDisplayShowCustomEnabled()`, `setTitle()`, `setSubtitle()`, `setSelectedNavigationItem()`, `switch()`, `selectTab()`, `removeAllTabs()`, `cleanupTabs()`, `setWindowTitle()`, `requestFocus()`, `setBackgroundDrawable()`, `setStackedBackgroundDrawable()`, `getCustomView()`, `getTitle()`, `getSubtitle()`, `getNavigationMode()`, `getDisplayOptions()`, `startActionMode()`, `animateToMode()`, `configureTab()`, `while()`, `addTab()`, `newTab()`, `TabImpl()`, `removeTab()`, `removeTabAt()`, `getSelectedTab()`, `getHeight()`, `enableContentAnimations()`, `show()`, `updateVisibility()`, `showForActionMode()`, `showForSystem()`, `hide()`, `hideForActionMode()`, `hideForSystem()`, `isHideOnContentScrollEnabled()`, `getHideOffset()`, `setHideOffset()`, `doShow()`, `doHide()`, `isShowing()`, `shouldAnimateContextView()`, `getThemedContext()`, `isTitleTruncated()`, `setHomeAsUpIndicator()`, `setHomeActionContentDescription()`, `onContentScrollStarted()`, `collapseActionView()`, `onCloseMenu()`, `onCloseSubMenu()`, `ActionModeImpl()`, `getMenuInflater()`, `SupportMenuInflater()`, `getMenu()`, `finish()`, `invalidate()`, `dispatchOnCreate()`, `setTitleOptionalHint()`, `isTitleOptional()`, `onMenuItemSelected()`, `onSubMenuSelected()`, `MenuPopupHelper()`, `onMenuModeChange()`, `getTag()`, `setTag()`, `getCallback()`, `setTabListener()`, `getIcon()`, `getPosition()`, `setPosition()`, `getText()`, `setIcon()`, `setText()`, `select()`, `setContentDescription()`, `getContentDescription()`, `setListNavigationCallbacks()`, `getSelectedNavigationIndex()`, `getNavigationItemCount()`, `getTabCount()`, `setNavigationMode()`, `getTabAt()`, `hasIcon()`, `setLogo()`, `hasLogo()`, `setDefaultDisplayHomeAsUpEnabled()`, `onKeyShortcut()`

</details>

### Package `androidx.appcompat.content.res`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AppCompatResources` | class | — | 122 | 20 |

<details>
<summary><b>Function list for <code>androidx.appcompat.content.res</code></b> (click to expand)</summary>

- **`AppCompatResources`** — 11 function(s): `AppCompatResources()`, `getColorStateList()`, `if()`, `addColorStateListToCache()`, `getDrawable()`, `inflateColorStateList()`, `getCachedColorStateList()`, `synchronized()`, `isColorInt()`, `getTypedValue()`, `ColorStateListCacheEntry()`

</details>

### Package `androidx.appcompat.graphics.drawable`  (5 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AnimatedStateListDrawableCompat` | class | StateListDrawable | 811 | 130 |
| `DrawableContainer` | class | Drawable implements Drawable.Callback | 1,101 | 252 |
| `DrawableWrapper` | class | Drawable implements Drawable.Callback | 196 | 41 |
| `DrawerArrowDrawable` | class | Drawable | 261 | 60 |
| `StateListDrawable` | class | DrawableContainer | 294 | 62 |

<details>
<summary><b>Function list for <code>androidx.appcompat.graphics.drawable</code></b> (click to expand)</summary>

- **`AnimatedStateListDrawableCompat`** — 52 function(s): `isStateful()`, `AnimatedStateListDrawableCompat()`, `this()`, `super()`, `setConstantState()`, `onStateChange()`, `jumpToCurrentState()`, `create()`, `if()`, `XmlPullParserException()`, `createFromXmlInner()`, `inflate()`, `setVisible()`, `updateStateFromTypedArray()`, `updateDensity()`, `inflateChildElements()`, `init()`, `addState()`, `IllegalArgumentException()`, `addTransition()`, `selectDrawable()`, `selectTransition()`, `canReverse()`, `reverse()`, `start()`, `stop()`, `Transition()`, `AnimatableTransition()`, `AnimationDrawableTransition()`, `AnimatedVectorDrawableTransition()`, `setDither()`, `while()`, `parseItem()`, `parseTransition()`, `mutate()`, `cloneConstantState()`, `AnimatedStateListState()`, `clearMutated()`, `generateTransitionKey()`, `addStateSet()`, `indexOfKeyframe()`, `getKeyframeIdAt()`, `indexOfTransition()`, `return()`, `isTransitionReversed()`, `transitionHasReversibleFlag()`, `newDrawable()`, `FrameInterpolator()`, `updateFrames()`, `for()`, `getTotalDuration()`, `getInterpolation()`
- **`DrawableContainer`** — 81 function(s): `draw()`, `if()`, `getChangingConfigurations()`, `needsMirroring()`, `getPadding()`, `getOutline()`, `setAlpha()`, `animate()`, `getAlpha()`, `setDither()`, `setColorFilter()`, `setTintList()`, `setTintMode()`, `setEnterFadeDuration()`, `setExitFadeDuration()`, `onBoundsChange()`, `isStateful()`, `setAutoMirrored()`, `isAutoMirrored()`, `jumpToCurrentState()`, `invalidateSelf()`, `setHotspot()`, `setHotspotBounds()`, `getHotspotBounds()`, `onStateChange()`, `onLevelChange()`, `onLayoutDirectionChanged()`, `getIntrinsicWidth()`, `getIntrinsicHeight()`, `getMinimumWidth()`, `getMinimumHeight()`, `invalidateDrawable()`, `getCallback()`, `scheduleDrawable()`, `unscheduleDrawable()`, `setVisible()`, `getOpacity()`, `setCurrentIndex()`, `selectDrawable()`, `getCurrentIndex()`, `initializeDrawableForDisplay()`, `run()`, `unscheduleSelf()`, `scheduleSelf()`, `getCurrent()`, `updateDensity()`, `applyTheme()`, `canApplyTheme()`, `getConstantState()`, `mutate()`, `setConstantState()`, `cloneConstantState()`, `clearMutated()`, `DrawableContainerState()`, `for()`, `addChild()`, `growArray()`, `invalidateCache()`, `getCapacity()`, `createAllFutures()`, `prepareDrawable()`, `getChildCount()`, `getChild()`, `setLayoutDirection()`, `setVariablePadding()`, `getConstantPadding()`, `setConstantSize()`, `isConstantSize()`, `getConstantWidth()`, `computeConstantSize()`, `getConstantHeight()`, `getConstantMinimumWidth()`, `getConstantMinimumHeight()`, `getEnterFadeDuration()`, `getExitFadeDuration()`, `while()`, `canConstantState()`, `BlockInvalidateCallback()`, `wrap()`, `unwrap()`, `resolveDensity()`
- **`DrawableWrapper`** — 39 function(s): `DrawableWrapper()`, `setWrappedDrawable()`, `draw()`, `onBoundsChange()`, `setChangingConfigurations()`, `getChangingConfigurations()`, `setDither()`, `setFilterBitmap()`, `setAlpha()`, `setColorFilter()`, `isStateful()`, `setState()`, `getState()`, `jumpToCurrentState()`, `getCurrent()`, `setVisible()`, `getOpacity()`, `getTransparentRegion()`, `getIntrinsicWidth()`, `getIntrinsicHeight()`, `getMinimumWidth()`, `getMinimumHeight()`, `getPadding()`, `invalidateDrawable()`, `invalidateSelf()`, `scheduleDrawable()`, `scheduleSelf()`, `unscheduleDrawable()`, `unscheduleSelf()`, `onLevelChange()`, `setAutoMirrored()`, `isAutoMirrored()`, `setTint()`, `setTintList()`, `setTintMode()`, `setHotspot()`, `setHotspotBounds()`, `getWrappedDrawable()`, `if()`
- **`DrawerArrowDrawable`** — 31 function(s): `lerp()`, `getOpacity()`, `DrawerArrowDrawable()`, `setColor()`, `setBarThickness()`, `setSpinEnabled()`, `setGapSize()`, `setArrowHeadLength()`, `if()`, `invalidateSelf()`, `getArrowHeadLength()`, `setArrowShaftLength()`, `getArrowShaftLength()`, `getBarLength()`, `setBarLength()`, `getColor()`, `getBarThickness()`, `getGapSize()`, `setDirection()`, `isSpinEnabled()`, `getDirection()`, `setVerticalMirror()`, `draw()`, `switch()`, `setAlpha()`, `setColorFilter()`, `getIntrinsicHeight()`, `getIntrinsicWidth()`, `getProgress()`, `setProgress()`, `getPaint()`
- **`StateListDrawable`** — 31 function(s): `isStateful()`, `this()`, `addState()`, `if()`, `onStateChange()`, `selectDrawable()`, `inflate()`, `setVisible()`, `updateStateFromTypedArray()`, `updateDensity()`, `inflateChildElements()`, `while()`, `extractStateSet()`, `for()`, `getStateListState()`, `getStateCount()`, `getStateSet()`, `getStateDrawable()`, `getStateDrawableIndex()`, `mutate()`, `cloneConstantState()`, `StateListState()`, `clearMutated()`, `super()`, `addStateSet()`, `indexOfStateSet()`, `newDrawable()`, `StateListDrawable()`, `growArray()`, `applyTheme()`, `setConstantState()`

</details>

### Package `androidx.appcompat.text`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AllCapsTransformationMethod` | class | TransformationMethod | 31 | 4 |

<details>
<summary><b>Function list for <code>androidx.appcompat.text</code></b> (click to expand)</summary>

- **`AllCapsTransformationMethod`** — 4 function(s): `onFocusChanged()`, `AllCapsTransformationMethod()`, `getTransformation()`, `if()`

</details>

### Package `androidx.appcompat.view`  (9 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ActionBarPolicy` | class | — | 84 | 18 |
| `ActionMode` | class | — | 74 | 22 |
| `CollapsibleActionView` | class | — | 9 | 2 |
| `ContextThemeWrapper` | class | ContextWrapper | 122 | 36 |
| `StandaloneActionMode` | class | ActionMode implements MenuBuilder.Callback | 146 | 29 |
| `SupportActionModeWrapper` | class | android.view.ActionMode | 170 | 28 |
| `SupportMenuInflater` | class | MenuInflater | 489 | 73 |
| `ViewPropertyAnimatorCompatSet` | class | — | 124 | 27 |
| `WindowCallbackWrapper` | class | Window.Callback | 159 | 28 |

<details>
<summary><b>Function list for <code>androidx.appcompat.view</code></b> (click to expand)</summary>

- **`ActionBarPolicy`** — 10 function(s): `get()`, `ActionBarPolicy()`, `getMaxActionButtons()`, `if()`, `showsOverflowMenuButton()`, `getEmbeddedMenuWidthLimit()`, `hasEmbeddedTabs()`, `getTabContainerHeight()`, `enableHomeButtonByDefault()`, `getStackedTabMaxWidth()`
- **`ActionMode`** — 20 function(s): `onActionItemClicked()`, `onCreateActionMode()`, `onDestroyActionMode()`, `onPrepareActionMode()`, `finish()`, `getCustomView()`, `getMenu()`, `getMenuInflater()`, `getSubtitle()`, `getTitle()`, `invalidate()`, `isTitleOptional()`, `isUiFocusable()`, `setCustomView()`, `setSubtitle()`, `setTitle()`, `setTag()`, `getTag()`, `setTitleOptionalHint()`, `getTitleOptionalHint()`
- **`CollapsibleActionView`** — 2 function(s): `onActionViewCollapsed()`, `onActionViewExpanded()`
- **`ContextThemeWrapper`** — 16 function(s): `ContextThemeWrapper()`, `super()`, `attachBaseContext()`, `applyOverrideConfiguration()`, `if()`, `IllegalStateException()`, `getResources()`, `getResourcesInternal()`, `setTheme()`, `initializeTheme()`, `getThemeResId()`, `getTheme()`, `getSystemService()`, `getBaseContext()`, `onApplyThemeResource()`, `getAssets()`
- **`StandaloneActionMode`** — 22 function(s): `onCloseMenu()`, `onCloseSubMenu()`, `StandaloneActionMode()`, `setTitle()`, `setSubtitle()`, `setTitleOptionalHint()`, `isTitleOptional()`, `setCustomView()`, `invalidate()`, `finish()`, `if()`, `getMenu()`, `getTitle()`, `getSubtitle()`, `getCustomView()`, `getMenuInflater()`, `SupportMenuInflater()`, `onMenuItemSelected()`, `onSubMenuSelected()`, `MenuPopupHelper()`, `onMenuModeChange()`, `isUiFocusable()`
- **`SupportActionModeWrapper`** — 25 function(s): `SupportActionModeWrapper()`, `getTag()`, `setTag()`, `setTitle()`, `setSubtitle()`, `invalidate()`, `finish()`, `getMenu()`, `getTitle()`, `getSubtitle()`, `getCustomView()`, `setCustomView()`, `getMenuInflater()`, `getTitleOptionalHint()`, `setTitleOptionalHint()`, `isTitleOptional()`, `CallbackWrapper()`, `onCreateActionMode()`, `onPrepareActionMode()`, `onActionItemClicked()`, `onDestroyActionMode()`, `getMenuWrapper()`, `if()`, `getActionModeWrapper()`, `for()`
- **`SupportMenuInflater`** — 25 function(s): `SupportMenuInflater()`, `super()`, `inflate()`, `if()`, `parseMenu()`, `InflateException()`, `switch()`, `while()`, `RuntimeException()`, `getRealOwner()`, `findRealOwner()`, `return()`, `InflatedOnMenuItemClickListener()`, `onMenuItemClick()`, `MenuState()`, `resetGroup()`, `readGroup()`, `readItem()`, `getShortcut()`, `setItem()`, `IllegalStateException()`, `addItem()`, `addSubMenuItem()`, `hasAddedItem()`, `newInstance()`
- **`ViewPropertyAnimatorCompatSet`** — 13 function(s): `onAnimationStart()`, `if()`, `onEnd()`, `onAnimationEnd()`, `play()`, `playSequentially()`, `start()`, `while()`, `onAnimationsEnded()`, `cancel()`, `setDuration()`, `setInterpolator()`, `setListener()`
- **`WindowCallbackWrapper`** — 26 function(s): `WindowCallbackWrapper()`, `if()`, `IllegalArgumentException()`, `dispatchKeyEvent()`, `dispatchKeyShortcutEvent()`, `dispatchTouchEvent()`, `dispatchTrackballEvent()`, `dispatchGenericMotionEvent()`, `dispatchPopulateAccessibilityEvent()`, `onCreatePanelView()`, `onCreatePanelMenu()`, `onPreparePanel()`, `onMenuOpened()`, `onMenuItemSelected()`, `onWindowAttributesChanged()`, `onContentChanged()`, `onWindowFocusChanged()`, `onAttachedToWindow()`, `onDetachedFromWindow()`, `onPanelClosed()`, `onSearchRequested()`, `onWindowStartingActionMode()`, `onActionModeStarted()`, `onActionModeFinished()`, `onProvideKeyboardShortcuts()`, `onPointerCaptureChanged()`

</details>

### Package `androidx.appcompat.view.menu`  (26 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ActionMenuItem` | class | SupportMenuItem | 407 | 81 |
| `ActionMenuItemView` | class | AppCompatTextView implements MenuView.ItemView, View.OnClickListener, ActionMenuView.Ac... | 267 | 65 |
| `BaseMenuPresenter` | class | MenuPresenter | 172 | 37 |
| `BaseMenuWrapper` | class | BaseWrapper<T> | 97 | 21 |
| `BaseWrapper` | class | — | 19 | 4 |
| `CascadingMenuPopup` | class | MenuPopup implements MenuPresenter, View.OnKeyListener, PopupWindow.OnDismissListener | 563 | 103 |
| `ExpandedMenuView` | class | ListView implements MenuBuilder.ItemInvoker, MenuView, AdapterView.OnItemClickListener | 63 | 16 |
| `ListMenuItemView` | class | LinearLayout implements MenuView.ItemView, AbsListView.SelectionBoundsAdjuster | 291 | 75 |
| `ListMenuPresenter` | class | MenuPresenter, AdapterView.OnItemClickListener | 247 | 54 |
| `MenuAdapter` | class | BaseAdapter | 102 | 19 |
| `MenuBuilder` | class | SupportMenu | 970 | 266 |
| `MenuDialogHelper` | class | DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismi... | 111 | 19 |
| `MenuHelper` | class | — | 11 | 2 |
| `MenuItemImpl` | class | SupportMenuItem | 703 | 150 |
| `MenuItemWrapperICS` | class | BaseMenuWrapper<SupportMenuItem> implements MenuItem | 439 | 113 |
| `MenuItemWrapperJB` | class | MenuItemWrapperICS | 74 | 14 |
| `MenuPopup` | class | ShowableListMenu, MenuPresenter, AdapterView.OnItemClickListener | 130 | 32 |
| `MenuPopupHelper` | class | MenuHelper | 202 | 45 |
| `MenuPresenter` | class | — | 43 | 14 |
| `MenuView` | class | — | 37 | 12 |
| `MenuWrapperFactory` | class | — | 34 | 9 |
| `MenuWrapperICS` | class | BaseMenuWrapper<SupportMenu> implements Menu | 151 | 46 |
| `ShowableListMenu` | class | — | 17 | 4 |
| `StandardMenuPopup` | class | MenuPopup implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, Me... | 284 | 52 |
| `SubMenuBuilder` | class | MenuBuilder implements SubMenu | 135 | 29 |
| `SubMenuWrapperICS` | class | MenuWrapperICS implements SubMenu | 77 | 22 |

<details>
<summary><b>Function list for <code>androidx.appcompat.view.menu</code></b> (click to expand)</summary>

- **`ActionMenuItem`** — 57 function(s): `collapseActionView()`, `expandActionView()`, `getActionView()`, `getMenuInfo()`, `getSubMenu()`, `getSupportActionProvider()`, `hasSubMenu()`, `isActionViewExpanded()`, `setShowAsAction()`, `ActionMenuItem()`, `getAlphabeticShortcut()`, `getAlphabeticModifiers()`, `getGroupId()`, `getIcon()`, `getIntent()`, `getItemId()`, `getNumericShortcut()`, `getNumericModifiers()`, `getOrder()`, `getTitle()`, `getTitleCondensed()`, `isCheckable()`, `return()`, `isChecked()`, `isEnabled()`, `isVisible()`, `setAlphabeticShortcut()`, `setCheckable()`, `setExclusiveCheckable()`, `setChecked()`, `setEnabled()`, `setIcon()`, `applyIconTint()`, `setIntent()`, `setNumericShortcut()`, `setOnMenuItemClickListener()`, `setShortcut()`, `setTitle()`, `setTitleCondensed()`, `setVisible()`, `invoke()`, `if()`, `setActionView()`, `UnsupportedOperationException()`, `setActionProvider()`, `getActionProvider()`, `setSupportActionProvider()`, `setShowAsActionFlags()`, `setOnActionExpandListener()`, `setContentDescription()`, `getContentDescription()`, `setTooltipText()`, `getTooltipText()`, `setIconTintList()`, `getIconTintList()`, `setIconTintMode()`, `getIconTintMode()`
- **`ActionMenuItemView`** — 38 function(s): `getPopup()`, `prefersCondensedTitle()`, `setCheckable()`, `setChecked()`, `setShortcut()`, `showsIcon()`, `ActionMenuItemView()`, `this()`, `super()`, `setOnClickListener()`, `setSaveEnabled()`, `onConfigurationChanged()`, `updateTextButtonVisibility()`, `shouldAllowTextWithIcon()`, `setPadding()`, `getItemData()`, `initialize()`, `setIcon()`, `setTitle()`, `setId()`, `setVisibility()`, `setEnabled()`, `if()`, `onTouchEvent()`, `onClick()`, `setItemInvoker()`, `setPopupCallback()`, `setExpandedFormat()`, `setText()`, `setContentDescription()`, `setCompoundDrawables()`, `hasText()`, `needsDividerBefore()`, `needsDividerAfter()`, `onMeasure()`, `ActionMenuItemForwardingListener()`, `onForwardingStarted()`, `onRestoreInstanceState()`
- **`BaseMenuPresenter`** — 23 function(s): `bindItemView()`, `collapseItemActionView()`, `expandItemActionView()`, `flagActionItems()`, `shouldIncludeItem()`, `BaseMenuPresenter()`, `initForMenu()`, `getMenuView()`, `if()`, `updateMenuView()`, `for()`, `addItemView()`, `while()`, `filterLeftoverView()`, `setCallback()`, `getCallback()`, `createItemView()`, `return()`, `getItemView()`, `onCloseMenu()`, `onSubMenuSelected()`, `getId()`, `setId()`
- **`BaseMenuWrapper`** — 9 function(s): `BaseMenuWrapper()`, `super()`, `getMenuItemWrapper()`, `if()`, `getSubMenuWrapper()`, `internalClear()`, `internalRemoveGroup()`, `while()`, `internalRemoveItem()`
- **`BaseWrapper`** — 4 function(s): `BaseWrapper()`, `if()`, `IllegalArgumentException()`, `getWrappedObject()`
- **`CascadingMenuPopup`** — 41 function(s): `onGlobalLayout()`, `if()`, `while()`, `onViewAttachedToWindow()`, `onViewDetachedFromWindow()`, `onItemHoverExit()`, `onItemHoverEnter()`, `run()`, `closeMenuOnSubMenuOpened()`, `flagActionItems()`, `onRestoreInstanceState()`, `onSaveInstanceState()`, `CascadingMenuPopup()`, `setForceShowIcon()`, `createPopupWindow()`, `show()`, `showMenu()`, `dismiss()`, `for()`, `onKey()`, `getInitialMenuPosition()`, `getNextMenuPosition()`, `addMenu()`, `findMenuItemForSubmenu()`, `findParentViewForSubmenu()`, `isShowing()`, `onDismiss()`, `updateMenuView()`, `toMenuAdapter()`, `setCallback()`, `onSubMenuSelected()`, `findIndexOfAddedMenu()`, `onCloseMenu()`, `setGravity()`, `setAnchorView()`, `setOnDismissListener()`, `getListView()`, `setHorizontalOffset()`, `setVerticalOffset()`, `setShowTitle()`, `CascadingMenuInfo()`
- **`ExpandedMenuView`** — 13 function(s): `ExpandedMenuView()`, `this()`, `super()`, `setOnItemClickListener()`, `if()`, `setBackgroundDrawable()`, `setDivider()`, `initialize()`, `onDetachedFromWindow()`, `setChildrenDrawingCacheEnabled()`, `invokeItem()`, `onItemClick()`, `getWindowAnimations()`
- **`ListMenuItemView`** — 28 function(s): `prefersCondensedTitle()`, `ListMenuItemView()`, `this()`, `super()`, `onFinishInflate()`, `if()`, `initialize()`, `setVisibility()`, `setTitle()`, `setCheckable()`, `setShortcut()`, `setIcon()`, `setEnabled()`, `setSubMenuArrowVisible()`, `setContentDescription()`, `addContentView()`, `addView()`, `setForceShowIcon()`, `getItemData()`, `insertRadioButton()`, `insertCheckBox()`, `setChecked()`, `insertIconView()`, `onMeasure()`, `showsIcon()`, `getInflater()`, `setGroupDividerEnabled()`, `adjustListItemSelectionBounds()`
- **`ListMenuPresenter`** — 31 function(s): `collapseItemActionView()`, `expandItemActionView()`, `flagActionItems()`, `ListMenuPresenter()`, `this()`, `initForMenu()`, `if()`, `getMenuView()`, `getAdapter()`, `updateMenuView()`, `setCallback()`, `onSubMenuSelected()`, `MenuDialogHelper()`, `onCloseMenu()`, `getItemIndexOffset()`, `setItemIndexOffset()`, `onItemClick()`, `saveHierarchyState()`, `restoreHierarchyState()`, `setId()`, `getId()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `getItemId()`, `MenuAdapter()`, `findExpandedIndex()`, `getCount()`, `getItem()`, `getView()`, `for()`, `notifyDataSetChanged()`
- **`MenuAdapter`** — 12 function(s): `getItemId()`, `MenuAdapter()`, `findExpandedIndex()`, `getForceShowIcon()`, `setForceShowIcon()`, `getCount()`, `if()`, `getAdapterMenu()`, `getItem()`, `getView()`, `for()`, `notifyDataSetChanged()`
- **`MenuBuilder`** — 89 function(s): `onMenuItemSelected()`, `onMenuModeChange()`, `invokeItem()`, `getActionViewStatesKey()`, `getRootMenu()`, `MenuBuilder()`, `setShortcutsVisibleInner()`, `setDefaultShowAsAction()`, `addMenuPresenter()`, `removeMenuPresenter()`, `while()`, `if()`, `dispatchPresenterUpdate()`, `stopDispatchingItemsChanged()`, `startDispatchingItemsChanged()`, `dispatchSubMenuSelected()`, `dispatchSaveInstanceState()`, `dispatchRestoreInstanceState()`, `savePresenterStates()`, `restorePresenterStates()`, `saveActionViewStates()`, `for()`, `restoreActionViewStates()`, `setCallback()`, `addInternal()`, `onItemsChanged()`, `createNewMenuItem()`, `MenuItemImpl()`, `add()`, `addSubMenu()`, `setGroupDividerEnabled()`, `isGroupDividerEnabled()`, `addIntentOptions()`, `removeGroup()`, `removeItem()`, `removeItemAtInt()`, `removeItemAt()`, `clearAll()`, `clear()`, `clearHeader()`, `collapseItemActionView()`, `setExclusiveItemChecked()`, `setGroupCheckable()`, `setGroupVisible()`, `setGroupEnabled()`, `hasVisibleItems()`, `findItem()`, `findItemIndex()`, `findGroupIndex()`, `size()`, `getItem()`, `isShortcutKey()`, `findItemWithShortcutForKey()`, `setQwertyMode()`, `getOrdering()`, `IllegalArgumentException()`, `return()`, `isQwertyMode()`, `setShortcutsVisible()`, `isShortcutsVisible()`, `getResources()`, `getContext()`, `dispatchMenuItemSelected()`, `changeMenuMode()`, `findInsertIndex()`, `performShortcut()`, `close()`, `findItemsWithShortcutForKey()`, `performIdentifierAction()`, `performItemAction()`, `onItemVisibleChanged()`, `onItemActionRequestChanged()`, `getVisibleItems()`, `flagActionItems()`, `getActionItems()`, `getNonActionItems()`, `setHeaderInternal()`, `setHeaderTitleInt()`, `setHeaderIconInt()`, `setHeaderViewInt()`, `getHeaderTitle()`, `getHeaderIcon()`, `getHeaderView()`, `setCurrentMenuInfo()`, `setOptionalIconsVisible()`, `getOptionalIconsVisible()`, `expandItemActionView()`, `getExpandedItem()`, `setOverrideVisibleItems()`
- **`MenuDialogHelper`** — 10 function(s): `MenuDialogHelper()`, `show()`, `if()`, `onKey()`, `setPresenterCallback()`, `dismiss()`, `onDismiss()`, `onCloseMenu()`, `onOpenSubMenu()`, `onClick()`
- **`MenuHelper`** — 2 function(s): `dismiss()`, `setPresenterCallback()`
- **`MenuItemImpl`** — 83 function(s): `MenuItemImpl()`, `invoke()`, `if()`, `isEnabled()`, `return()`, `setEnabled()`, `getGroupId()`, `getItemId()`, `getOrder()`, `getOrdering()`, `getIntent()`, `setIntent()`, `getCallback()`, `setCallback()`, `getAlphabeticShortcut()`, `setAlphabeticShortcut()`, `getAlphabeticModifiers()`, `getNumericShortcut()`, `getNumericModifiers()`, `setNumericShortcut()`, `setShortcut()`, `getShortcut()`, `getShortcutLabel()`, `appendModifier()`, `shouldShowShortcut()`, `getSubMenu()`, `hasSubMenu()`, `setSubMenu()`, `getTitle()`, `getTitleForItemView()`, `getTitleCondensed()`, `setTitle()`, `setTitleCondensed()`, `getIcon()`, `applyIconTintIfNecessary()`, `setIcon()`, `setIconTintList()`, `getIconTintList()`, `setIconTintMode()`, `getIconTintMode()`, `isCheckable()`, `setCheckable()`, `setExclusiveCheckable()`, `isExclusiveCheckable()`, `isChecked()`, `setChecked()`, `setCheckedInt()`, `isVisible()`, `setVisibleInt()`, `setVisible()`, `setOnMenuItemClickListener()`, `toString()`, `setMenuInfo()`, `getMenuInfo()`, `actionFormatChanged()`, `shouldShowIcon()`, `isActionButton()`, `requestsActionButton()`, `requiresActionButton()`, `setIsActionButton()`, `showsTextAsAction()`, `setShowAsAction()`, `switch()`, `IllegalArgumentException()`, `setActionView()`, `getActionView()`, `setActionProvider()`, `UnsupportedOperationException()`, `getActionProvider()`, `getSupportActionProvider()`, `setSupportActionProvider()`, `onActionProviderVisibilityChanged()`, `setShowAsActionFlags()`, `expandActionView()`, `collapseActionView()`, `hasCollapsibleActionView()`, `setActionViewExpanded()`, `isActionViewExpanded()`, `setOnActionExpandListener()`, `setContentDescription()`, `getContentDescription()`, `setTooltipText()`, `getTooltipText()`
- **`MenuItemWrapperICS`** — 69 function(s): `MenuItemWrapperICS()`, `super()`, `getItemId()`, `return()`, `getGroupId()`, `getOrder()`, `setTitle()`, `getTitle()`, `setTitleCondensed()`, `getTitleCondensed()`, `setIcon()`, `getIcon()`, `setIntent()`, `getIntent()`, `setShortcut()`, `setNumericShortcut()`, `getNumericShortcut()`, `getNumericModifiers()`, `setAlphabeticShortcut()`, `getAlphabeticShortcut()`, `getAlphabeticModifiers()`, `setCheckable()`, `isCheckable()`, `setChecked()`, `isChecked()`, `setVisible()`, `isVisible()`, `setEnabled()`, `isEnabled()`, `hasSubMenu()`, `getSubMenu()`, `getSubMenuWrapper()`, `setOnMenuItemClickListener()`, `getMenuInfo()`, `setShowAsAction()`, `setShowAsActionFlags()`, `setActionView()`, `if()`, `getActionView()`, `setActionProvider()`, `getActionProvider()`, `expandActionView()`, `collapseActionView()`, `isActionViewExpanded()`, `setOnActionExpandListener()`, `setContentDescription()`, `getContentDescription()`, `setTooltipText()`, `getTooltipText()`, `setIconTintList()`, `getIconTintList()`, `setIconTintMode()`, `getIconTintMode()`, `setExclusiveCheckable()`, `createActionProviderWrapper()`, `ActionProviderWrapper()`, `OnMenuItemClickListenerWrapper()`, `onMenuItemClick()`, `OnActionExpandListenerWrapper()`, `onMenuItemActionExpand()`, `onMenuItemActionCollapse()`, `onCreateActionView()`, `onPerformDefaultAction()`, `onPrepareSubMenu()`, `CollapsibleActionViewWrapper()`, `addView()`, `onActionViewExpanded()`, `onActionViewCollapsed()`, `getWrappedView()`
- **`MenuItemWrapperJB`** — 11 function(s): `MenuItemWrapperJB()`, `super()`, `createActionProviderWrapper()`, `ActionProviderWrapperJB()`, `onCreateActionView()`, `overridesItemVisibility()`, `isVisible()`, `refreshVisibility()`, `setVisibilityListener()`, `if()`, `onActionProviderVisibilityChanged()`
- **`MenuPopup`** — 24 function(s): `addMenu()`, `closeMenuOnSubMenuOpened()`, `collapseItemActionView()`, `expandItemActionView()`, `getId()`, `initForMenu()`, `setAnchorView()`, `setForceShowIcon()`, `setGravity()`, `setHorizontalOffset()`, `setOnDismissListener()`, `setShowTitle()`, `setVerticalOffset()`, `setEpicenterBounds()`, `getEpicenterBounds()`, `getMenuView()`, `UnsupportedOperationException()`, `onItemClick()`, `toMenuAdapter()`, `measureIndividualMenuWidth()`, `for()`, `if()`, `return()`, `shouldPreserveIconSpacing()`
- **`MenuPopupHelper`** — 19 function(s): `MenuPopupHelper()`, `this()`, `onDismiss()`, `setOnDismissListener()`, `setAnchorView()`, `setForceShowIcon()`, `if()`, `setGravity()`, `getGravity()`, `show()`, `IllegalStateException()`, `getPopup()`, `tryShow()`, `showPopup()`, `createPopup()`, `dismiss()`, `isShowing()`, `setPresenterCallback()`, `getListView()`
- **`MenuPresenter`** — 13 function(s): `onCloseMenu()`, `onOpenSubMenu()`, `collapseItemActionView()`, `expandItemActionView()`, `flagActionItems()`, `getId()`, `getMenuView()`, `initForMenu()`, `onRestoreInstanceState()`, `onSaveInstanceState()`, `onSubMenuSelected()`, `setCallback()`, `updateMenuView()`
- **`MenuView`** — 11 function(s): `getItemData()`, `initialize()`, `prefersCondensedTitle()`, `setCheckable()`, `setChecked()`, `setEnabled()`, `setIcon()`, `setShortcut()`, `setTitle()`, `showsIcon()`, `getWindowAnimations()`
- **`MenuWrapperFactory`** — 9 function(s): `MenuWrapperFactory()`, `wrapSupportMenu()`, `MenuWrapperICS()`, `wrapSupportMenuItem()`, `if()`, `MenuItemWrapperJB()`, `MenuItemWrapperICS()`, `wrapSupportSubMenu()`, `SubMenuWrapperICS()`
- **`MenuWrapperICS`** — 28 function(s): `MenuWrapperICS()`, `super()`, `add()`, `getMenuItemWrapper()`, `addSubMenu()`, `getSubMenuWrapper()`, `addIntentOptions()`, `if()`, `for()`, `removeItem()`, `internalRemoveItem()`, `removeGroup()`, `internalRemoveGroup()`, `clear()`, `internalClear()`, `setGroupCheckable()`, `setGroupVisible()`, `setGroupEnabled()`, `hasVisibleItems()`, `return()`, `findItem()`, `size()`, `getItem()`, `close()`, `performShortcut()`, `isShortcutKey()`, `performIdentifierAction()`, `setQwertyMode()`
- **`ShowableListMenu`** — 4 function(s): `dismiss()`, `getListView()`, `isShowing()`, `show()`
- **`StandardMenuPopup`** — 28 function(s): `onGlobalLayout()`, `if()`, `onViewAttachedToWindow()`, `onViewDetachedFromWindow()`, `addMenu()`, `flagActionItems()`, `onRestoreInstanceState()`, `onSaveInstanceState()`, `StandardMenuPopup()`, `setForceShowIcon()`, `setGravity()`, `tryShow()`, `show()`, `IllegalStateException()`, `dismiss()`, `isShowing()`, `onDismiss()`, `updateMenuView()`, `setCallback()`, `onSubMenuSelected()`, `onCloseMenu()`, `setAnchorView()`, `onKey()`, `setOnDismissListener()`, `getListView()`, `setHorizontalOffset()`, `setVerticalOffset()`, `setShowTitle()`
- **`SubMenuBuilder`** — 22 function(s): `SubMenuBuilder()`, `super()`, `setQwertyMode()`, `isQwertyMode()`, `setShortcutsVisible()`, `isShortcutsVisible()`, `getParentMenu()`, `getItem()`, `setCallback()`, `getRootMenu()`, `dispatchMenuItemSelected()`, `setIcon()`, `setHeaderIcon()`, `return()`, `setHeaderTitle()`, `setHeaderView()`, `expandItemActionView()`, `collapseItemActionView()`, `getActionViewStatesKey()`, `if()`, `setGroupDividerEnabled()`, `isGroupDividerEnabled()`
- **`SubMenuWrapperICS`** — 11 function(s): `SubMenuWrapperICS()`, `super()`, `getWrappedObject()`, `return()`, `setHeaderTitle()`, `setHeaderIcon()`, `setHeaderView()`, `clearHeader()`, `setIcon()`, `getItem()`, `getMenuItemWrapper()`

</details>

### Package `androidx.appcompat.widget`  (71 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AbsActionBarView` | class | ViewGroup | 257 | 60 |
| `ActionBarBackgroundDrawable` | class | Drawable | 60 | 12 |
| `ActionBarContainer` | class | FrameLayout | 293 | 77 |
| `ActionBarContextView` | class | AbsActionBarView | 377 | 81 |
| `ActionBarOverlayLayout` | class | ViewGroup implements DecorContentParent, NestedScrollingParent | 639 | 177 |
| `ActionMenuPresenter` | class | BaseMenuPresenter implements ActionProvider.SubUiVisibilityListener | 740 | 149 |
| `ActionMenuView` | class | LinearLayoutCompat implements MenuBuilder.ItemInvoker, MenuView | 755 | 136 |
| `ActivityChooserModel` | class | DataSetObservable | 557 | 128 |
| `ActivityChooserView` | class | ViewGroup implements ActivityChooserModel.ActivityChooserModelClient | 589 | 128 |
| `AlertDialogLayout` | class | LinearLayoutCompat | 206 | 41 |
| `AppCompatAutoCompleteTextView` | class | AutoCompleteTextView implements TintableBackgroundView | 134 | 29 |
| `AppCompatBackgroundHelper` | class | — | 155 | 37 |
| `AppCompatButton` | class | Button implements TintableBackgroundView, AutoSizeableTextView | 253 | 55 |
| `AppCompatCheckBox` | class | CheckBox implements TintableCompoundButton | 92 | 19 |
| `AppCompatCheckedTextView` | class | CheckedTextView | 68 | 15 |
| `AppCompatCompoundButtonHelper` | class | — | 113 | 23 |
| `AppCompatDrawableManager` | class | LruCache<Integer, PorterDuffColorFilter> | 587 | 137 |
| `AppCompatEditText` | class | EditText implements TintableBackgroundView | 133 | 27 |
| `AppCompatHintHelper` | class | — | 31 | 6 |
| `AppCompatImageButton` | class | ImageButton implements TintableBackgroundView, TintableImageSourceView | 172 | 37 |
| `AppCompatImageHelper` | class | — | 163 | 36 |
| `AppCompatImageView` | class | ImageView implements TintableBackgroundView, TintableImageSourceView | 173 | 38 |
| `AppCompatMultiAutoCompleteTextView` | class | MultiAutoCompleteTextView implements TintableBackgroundView | 127 | 28 |
| `AppCompatPopupWindow` | class | PopupWindow | 75 | 18 |
| `AppCompatProgressBarHelper` | class | — | 108 | 18 |
| `AppCompatRadioButton` | class | RadioButton implements TintableCompoundButton | 92 | 19 |
| `AppCompatRatingBar` | class | RatingBar | 37 | 9 |
| `AppCompatSeekBar` | class | SeekBar | 45 | 9 |
| `AppCompatSeekBarHelper` | class | AppCompatProgressBarHelper | 152 | 34 |
| `AppCompatSpinner` | class | Spinner implements TintableBackgroundView | 650 | 150 |
| `AppCompatTextHelper` | class | — | 368 | 83 |
| `AppCompatTextView` | class | TextView implements TintableBackgroundView, AutoSizeableTextView | 324 | 70 |
| `AppCompatTextViewAutoSizeHelper` | class | — | 460 | 104 |
| `ButtonBarLayout` | class | LinearLayout | 120 | 33 |
| `ContentFrameLayout` | class | FrameLayout | 224 | 54 |
| `DecorContentParent` | class | — | 54 | 20 |
| `DecorToolbar` | class | — | 135 | 57 |
| `DialogTitle` | class | TextView | 52 | 13 |
| `DrawableUtils` | class | — | 192 | 43 |
| `DropDownListView` | class | ListView | 500 | 117 |
| `FitWindowsFrameLayout` | class | FrameLayout implements FitWindowsViewGroup | 36 | 7 |
| `FitWindowsLinearLayout` | class | LinearLayout implements FitWindowsViewGroup | 36 | 7 |
| `FitWindowsViewGroup` | class | — | 17 | 2 |
| `ForwardingListener` | class | View.OnTouchListener, View.OnAttachStateChangeListener | 202 | 38 |
| `LinearLayoutCompat` | class | ViewGroup | 1,413 | 267 |
| `ListPopupWindow` | class | ShowableListMenu | 836 | 168 |
| `MenuItemHoverListener` | class | — | 15 | 2 |
| `MenuPopupWindow` | class | ListPopupWindow implements MenuItemHoverListener | 216 | 33 |
| `PopupMenu` | class | — | 150 | 30 |
| `ResourcesWrapper` | class | Resources | 256 | 47 |
| `RtlSpacingHelper` | class | — | 82 | 16 |
| `ScrollingTabContainerView` | class | HorizontalScrollView implements AdapterView.OnItemSelectedListener | 529 | 134 |
| `SearchView` | class | LinearLayoutCompat implements CollapsibleActionView | 1,329 | 317 |
| `ShareActionProvider` | class | ActionProvider | 155 | 30 |
| `SuggestionsAdapter` | class | ResourceCursorAdapter implements View.OnClickListener | 509 | 100 |
| `SwitchCompat` | class | CompoundButton | 921 | 207 |
| `ThemeUtils` | class | — | 76 | 11 |
| `ThemedSpinnerAdapter` | class | SpinnerAdapter | 53 | 8 |
| `TintContextWrapper` | class | ContextWrapper | 92 | 18 |
| `TintInfo` | class | — | 21 | 1 |
| `TintResources` | class | ResourcesWrapper | 29 | 4 |
| `TintTypedArray` | class | — | 193 | 45 |
| `Toolbar` | class | ViewGroup | 1,735 | 431 |
| `ToolbarWidgetWrapper` | class | DecorToolbar | 619 | 147 |
| `TooltipCompat` | class | — | 21 | 3 |
| `TooltipCompatHandler` | class | View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener | 182 | 42 |
| `TooltipPopup` | class | — | 140 | 21 |
| `VectorEnabledTintResources` | class | Resources | 49 | 9 |
| `ViewStubCompat` | class | View | 138 | 34 |
| `ViewUtils` | class | — | 67 | 9 |
| `WithHint` | class | — | 12 | 1 |

<details>
<summary><b>Function list for <code>androidx.appcompat.widget</code></b> (click to expand)</summary>

- **`AbsActionBarView`** — 34 function(s): `next()`, `this()`, `AbsActionBarView()`, `super()`, `if()`, `onConfigurationChanged()`, `setContentHeight()`, `onTouchEvent()`, `onHoverEvent()`, `requestLayout()`, `getContentHeight()`, `getAnimatedVisibility()`, `getVisibility()`, `setupAnimatorToVisibility()`, `setAlpha()`, `animateToVisibility()`, `setVisibility()`, `showOverflowMenu()`, `postShowOverflowMenu()`, `post()`, `run()`, `hideOverflowMenu()`, `isOverflowMenuShowing()`, `isOverflowMenuShowPending()`, `isOverflowReserved()`, `canShowOverflowMenu()`, `dismissPopupMenus()`, `measureChildView()`, `positionChild()`, `VisibilityAnimListener()`, `withFinalVisibility()`, `onAnimationStart()`, `onAnimationEnd()`, `onAnimationCancel()`
- **`ActionBarBackgroundDrawable`** — 7 function(s): `getOpacity()`, `setAlpha()`, `setColorFilter()`, `ActionBarBackgroundDrawable()`, `draw()`, `if()`, `getOutline()`
- **`ActionBarContainer`** — 31 function(s): `startActionModeForChild()`, `ActionBarContainer()`, `this()`, `super()`, `if()`, `setWillNotDraw()`, `onFinishInflate()`, `setPrimaryBackground()`, `unscheduleDrawable()`, `invalidate()`, `setStackedBackground()`, `setSplitBackground()`, `setVisibility()`, `verifyDrawable()`, `return()`, `drawableStateChanged()`, `jumpDrawablesToCurrentState()`, `setTransitioning()`, `setDescendantFocusability()`, `onInterceptTouchEvent()`, `onTouchEvent()`, `onHoverEvent()`, `setTabContainer()`, `removeView()`, `addView()`, `getTabContainer()`, `isCollapsed()`, `getMeasuredHeightWithMargins()`, `onMeasure()`, `setMeasuredDimension()`, `onLayout()`
- **`ActionBarContextView`** — 35 function(s): `shouldDelayChildPressedState()`, `ActionBarContextView()`, `this()`, `super()`, `onDetachedFromWindow()`, `if()`, `setContentHeight()`, `setCustomView()`, `removeView()`, `addView()`, `requestLayout()`, `setTitle()`, `initTitle()`, `setSubtitle()`, `getTitle()`, `getSubtitle()`, `initForMode()`, `onClick()`, `closeMode()`, `killMode()`, `removeAllViews()`, `showOverflowMenu()`, `hideOverflowMenu()`, `isOverflowMenuShowing()`, `generateDefaultLayoutParams()`, `generateLayoutParams()`, `onMeasure()`, `IllegalStateException()`, `for()`, `setMeasuredDimension()`, `onLayout()`, `positionChild()`, `onInitializeAccessibilityEvent()`, `setTitleOptional()`, `isTitleOptional()`
- **`ActionBarOverlayLayout`** — 82 function(s): `enableContentAnimations()`, `hideForSystem()`, `onContentScrollStarted()`, `onContentScrollStopped()`, `onWindowVisibilityChanged()`, `showForSystem()`, `onNestedPreFling()`, `onNestedPreScroll()`, `setShowingForActionMode()`, `setUiOptions()`, `shouldDelayChildPressedState()`, `ActionBarOverlayLayout()`, `this()`, `super()`, `onAnimationEnd()`, `onAnimationCancel()`, `run()`, `init()`, `setWillNotDraw()`, `onDetachedFromWindow()`, `haltActionBarHideOffsetAnimations()`, `setActionBarVisibilityCallback()`, `if()`, `onWindowSystemUiVisibilityChanged()`, `setOverlayMode()`, `isInOverlayMode()`, `setHasNonEmbeddedTabs()`, `onConfigurationChanged()`, `pullChildren()`, `applyInsets()`, `fitSystemWindows()`, `requestLayout()`, `generateDefaultLayoutParams()`, `LayoutParams()`, `generateLayoutParams()`, `checkLayoutParams()`, `onMeasure()`, `measureChildWithMargins()`, `setMeasuredDimension()`, `onLayout()`, `getPaddingRight()`, `getPaddingBottom()`, `for()`, `draw()`, `onStartNestedScroll()`, `onNestedScrollAccepted()`, `onNestedScroll()`, `setActionBarHideOffset()`, `onStopNestedScroll()`, `postRemoveActionBarHideOffset()`, `postAddActionBarHideOffset()`, `onNestedFling()`, `addActionBarHideOffset()`, `removeActionBarHideOffset()`, `getNestedScrollAxes()`, `getDecorToolbar()`, `return()`, `IllegalStateException()`, `setHideOnContentScrollEnabled()`, `isHideOnContentScrollEnabled()`, `getActionBarHideOffset()`, `removeCallbacks()`, `postDelayed()`, `shouldHideActionBarOnFling()`, `setWindowCallback()`, `setWindowTitle()`, `getTitle()`, `initFeature()`, `hasIcon()`, `hasLogo()`, `setIcon()`, `setLogo()`, `canShowOverflowMenu()`, `isOverflowMenuShowing()`, `isOverflowMenuShowPending()`, `showOverflowMenu()`, `hideOverflowMenu()`, `setMenuPrepared()`, `setMenu()`, `saveToolbarHierarchyState()`, `restoreToolbarHierarchyState()`, `dismissPopups()`
- **`ActionMenuPresenter`** — 64 function(s): `ActionMenuPresenter()`, `super()`, `initForMenu()`, `if()`, `onConfigurationChanged()`, `setWidthLimit()`, `setReserveOverflow()`, `setItemLimit()`, `setExpandedActionViewsExclusive()`, `setOverflowIcon()`, `getOverflowIcon()`, `getMenuView()`, `getItemView()`, `bindItemView()`, `shouldIncludeItem()`, `updateMenuView()`, `for()`, `filterLeftoverView()`, `onSubMenuSelected()`, `while()`, `findViewForItem()`, `showOverflowMenu()`, `hideOverflowMenu()`, `dismissPopupMenus()`, `hideSubMenus()`, `isOverflowMenuShowing()`, `isOverflowMenuShowPending()`, `isOverflowReserved()`, `flagActionItems()`, `onCloseMenu()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `onSubUiVisibilityChanged()`, `setMenuView()`, `createFromParcel()`, `SavedState()`, `newArray()`, `describeContents()`, `writeToParcel()`, `needsDividerAfter()`, `needsDividerBefore()`, `OverflowMenuButton()`, `setClickable()`, `setFocusable()`, `setVisibility()`, `setEnabled()`, `setOnTouchListener()`, `getPopup()`, `onForwardingStarted()`, `onForwardingStopped()`, `performClick()`, `playSoundEffect()`, `setFrame()`, `OverflowPopup()`, `setGravity()`, `setPresenterCallback()`, `onDismiss()`, `ActionButtonSubmenu()`, `setAnchorView()`, `PopupPresenterCallback()`, `onOpenSubMenu()`, `OpenOverflowRunnable()`, `run()`, `ActionMenuPopupCallback()`
- **`ActionMenuView`** — 51 function(s): `needsDividerAfter()`, `needsDividerBefore()`, `onMenuItemClick()`, `dispatchPopulateAccessibilityEvent()`, `getWindowAnimations()`, `ActionMenuView()`, `this()`, `super()`, `setBaselineAligned()`, `setPopupTheme()`, `if()`, `getPopupTheme()`, `setPresenter()`, `onConfigurationChanged()`, `setOnMenuItemClickListener()`, `onMeasure()`, `onMeasureExactFormat()`, `for()`, `setMeasuredDimension()`, `while()`, `measureChildForCells()`, `onLayout()`, `hasSupportDividerBeforeChildAt()`, `onDetachedFromWindow()`, `dismissPopupMenus()`, `setOverflowIcon()`, `getMenu()`, `getOverflowIcon()`, `isOverflowReserved()`, `setOverflowReserved()`, `generateDefaultLayoutParams()`, `generateLayoutParams()`, `LayoutParams()`, `checkLayoutParams()`, `generateOverflowButtonLayoutParams()`, `invokeItem()`, `initialize()`, `setMenuCallbacks()`, `peekMenu()`, `showOverflowMenu()`, `hideOverflowMenu()`, `isOverflowMenuShowing()`, `isOverflowMenuShowPending()`, `return()`, `setExpandedActionViewsExclusive()`, `MenuBuilderCallback()`, `onMenuItemSelected()`, `onMenuModeChange()`, `onCloseMenu()`, `onOpenSubMenu()`, `ActionMenuPresenterCallback()`
- **`ActivityChooserModel`** — 44 function(s): `setActivityChooserModel()`, `sort()`, `onChooseActivity()`, `get()`, `synchronized()`, `if()`, `ActivityChooserModel()`, `setIntent()`, `ensureConsistentState()`, `getIntent()`, `getActivityCount()`, `getActivity()`, `getActivityIndex()`, `for()`, `chooseActivity()`, `addHistoricalRecord()`, `setOnChooseActivityListener()`, `getDefaultActivity()`, `setDefaultActivity()`, `persistHistoricalDataIfNeeded()`, `IllegalStateException()`, `PersistHistoryAsyncTask()`, `setActivitySorter()`, `notifyChanged()`, `setHistoryMaxSize()`, `pruneExcessiveHistoricalRecordsIfNeeded()`, `getHistoryMaxSize()`, `getHistorySize()`, `sortActivitiesIfNeeded()`, `loadActivitiesIfNeeded()`, `readHistoricalDataIfNeeded()`, `readHistoricalDataImpl()`, `HistoricalRecord()`, `this()`, `hashCode()`, `return()`, `equals()`, `toString()`, `ActivityResolveInfo()`, `compareTo()`, `DefaultSorter()`, `XmlPullParserException()`, `while()`, `doInBackground()`
- **`ActivityChooserView`** — 62 function(s): `ActivityChooserView()`, `this()`, `super()`, `onChanged()`, `onInvalidated()`, `onGlobalLayout()`, `if()`, `onInitializeAccessibilityNodeInfo()`, `getPopup()`, `onForwardingStarted()`, `onForwardingStopped()`, `setActivityChooserModel()`, `dismissPopup()`, `showPopup()`, `setExpandActivityOverflowButtonDrawable()`, `setExpandActivityOverflowButtonContentDescription()`, `setProvider()`, `showPopupUnchecked()`, `IllegalStateException()`, `getViewTreeObserver()`, `getListPopupWindow()`, `isShowingPopup()`, `onAttachedToWindow()`, `onDetachedFromWindow()`, `onMeasure()`, `measureChild()`, `setMeasuredDimension()`, `onLayout()`, `getDataModel()`, `setOnDismissListener()`, `setInitialActivityCount()`, `setDefaultActionButtonContentDescription()`, `updateAppearance()`, `Callbacks()`, `onItemClick()`, `switch()`, `IllegalArgumentException()`, `onClick()`, `onLongClick()`, `onDismiss()`, `notifyOnDismissListener()`, `getItemId()`, `getViewTypeCount()`, `ActivityChooserViewAdapter()`, `setDataModel()`, `notifyDataSetChanged()`, `getItemViewType()`, `return()`, `getCount()`, `getItem()`, `getView()`, `measureContentWidth()`, `for()`, `setMaxActivityCount()`, `getDefaultActivity()`, `setShowFooterView()`, `getActivityCount()`, `getHistorySize()`, `setShowDefaultActivity()`, `getShowDefaultActivity()`, `InnerLayout()`, `setBackgroundDrawable()`
- **`AlertDialogLayout`** — 12 function(s): `AlertDialogLayout()`, `super()`, `onMeasure()`, `if()`, `tryOnMeasure()`, `for()`, `setMeasuredDimension()`, `forceUniformWidth()`, `measureChildWithMargins()`, `resolveMinimumHeight()`, `onLayout()`, `setChildFrame()`
- **`AppCompatAutoCompleteTextView`** — 16 function(s): `AppCompatAutoCompleteTextView()`, `this()`, `super()`, `if()`, `setDropDownBackgroundDrawable()`, `setDropDownBackgroundResource()`, `setBackgroundResource()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `drawableStateChanged()`, `setTextAppearance()`, `onCreateInputConnection()`, `setCustomSelectionActionModeCallback()`
- **`AppCompatBackgroundHelper`** — 13 function(s): `AppCompatBackgroundHelper()`, `loadFromAttributes()`, `if()`, `setInternalBackgroundTint()`, `onSetBackgroundResource()`, `applySupportBackgroundTint()`, `onSetBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `shouldApplyFrameworkTintUsingColorFilter()`, `applyFrameworkTintUsingColorFilter()`
- **`AppCompatButton`** — 27 function(s): `AppCompatButton()`, `this()`, `super()`, `setBackgroundResource()`, `if()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `drawableStateChanged()`, `setTextAppearance()`, `onInitializeAccessibilityEvent()`, `onInitializeAccessibilityNodeInfo()`, `onLayout()`, `setTextSize()`, `onTextChanged()`, `setAutoSizeTextTypeWithDefaults()`, `setAutoSizeTextTypeUniformWithConfiguration()`, `setAutoSizeTextTypeUniformWithPresetSizes()`, `getAutoSizeTextType()`, `getAutoSizeStepGranularity()`, `getAutoSizeMinTextSize()`, `getAutoSizeMaxTextSize()`, `getAutoSizeTextAvailableSizes()`, `setSupportAllCaps()`, `setCustomSelectionActionModeCallback()`
- **`AppCompatCheckBox`** — 10 function(s): `AppCompatCheckBox()`, `this()`, `super()`, `setButtonDrawable()`, `if()`, `getCompoundPaddingLeft()`, `setSupportButtonTintList()`, `getSupportButtonTintList()`, `setSupportButtonTintMode()`, `getSupportButtonTintMode()`
- **`AppCompatCheckedTextView`** — 9 function(s): `AppCompatCheckedTextView()`, `this()`, `super()`, `setCheckMarkDrawable()`, `setTextAppearance()`, `if()`, `drawableStateChanged()`, `onCreateInputConnection()`, `setCustomSelectionActionModeCallback()`
- **`AppCompatCompoundButtonHelper`** — 12 function(s): `setButtonDrawable()`, `AppCompatCompoundButtonHelper()`, `loadFromAttributes()`, `if()`, `setSupportButtonTintList()`, `applyButtonTint()`, `getSupportButtonTintList()`, `setSupportButtonTintMode()`, `getSupportButtonTintMode()`, `onSetButtonDrawable()`, `getCompoundPaddingLeft()`, `return()`
- **`AppCompatDrawableManager`** — 44 function(s): `createFromXmlInner()`, `get()`, `synchronized()`, `if()`, `installDefaultInflateDelegates()`, `getDrawable()`, `checkVectorDrawableSetup()`, `onConfigurationChanged()`, `createCacheKey()`, `return()`, `createDrawableIfNeeded()`, `addDrawableToCache()`, `tintDrawable()`, `setPorterDuffColorFilter()`, `loadDrawableFromDelegates()`, `XmlPullParserException()`, `getCachedDrawable()`, `onDrawableLoadedFromResources()`, `tintDrawableUsingColorFilter()`, `addDelegate()`, `removeDelegate()`, `arrayContains()`, `for()`, `getTintMode()`, `getTintList()`, `addTintListToCache()`, `getTintListFromCache()`, `createDefaultButtonColorStateList()`, `createButtonColorStateList()`, `createBorderlessButtonColorStateList()`, `createColoredButtonColorStateList()`, `ColorStateList()`, `createSwitchThumbColorStateList()`, `ColorFilterLruCache()`, `super()`, `put()`, `generateCacheKey()`, `createTintFilter()`, `getPorterDuffColorFilter()`, `IllegalStateException()`, `isVectorDrawable()`, `VdcInflateDelegate()`, `AvdcInflateDelegate()`, `AsldcInflateDelegate()`
- **`AppCompatEditText`** — 15 function(s): `AppCompatEditText()`, `this()`, `super()`, `getText()`, `if()`, `setBackgroundResource()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `drawableStateChanged()`, `setTextAppearance()`, `onCreateInputConnection()`, `setCustomSelectionActionModeCallback()`
- **`AppCompatHintHelper`** — 4 function(s): `onCreateInputConnection()`, `if()`, `while()`, `AppCompatHintHelper()`
- **`AppCompatImageButton`** — 20 function(s): `AppCompatImageButton()`, `this()`, `super()`, `setImageResource()`, `setImageDrawable()`, `if()`, `setImageBitmap()`, `setImageURI()`, `setBackgroundResource()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `setSupportImageTintList()`, `getSupportImageTintList()`, `setSupportImageTintMode()`, `getSupportImageTintMode()`, `drawableStateChanged()`, `hasOverlappingRendering()`
- **`AppCompatImageHelper`** — 13 function(s): `AppCompatImageHelper()`, `loadFromAttributes()`, `if()`, `setImageResource()`, `applySupportImageTint()`, `hasOverlappingRendering()`, `setSupportImageTintList()`, `getSupportImageTintList()`, `setSupportImageTintMode()`, `getSupportImageTintMode()`, `setInternalImageTint()`, `shouldApplyFrameworkTintUsingColorFilter()`, `applyFrameworkTintUsingColorFilter()`
- **`AppCompatImageView`** — 20 function(s): `AppCompatImageView()`, `this()`, `super()`, `setImageResource()`, `if()`, `setImageDrawable()`, `setImageBitmap()`, `setImageURI()`, `setBackgroundResource()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `setSupportImageTintList()`, `getSupportImageTintList()`, `setSupportImageTintMode()`, `getSupportImageTintMode()`, `drawableStateChanged()`, `hasOverlappingRendering()`
- **`AppCompatMultiAutoCompleteTextView`** — 15 function(s): `AppCompatMultiAutoCompleteTextView()`, `this()`, `super()`, `if()`, `setDropDownBackgroundDrawable()`, `setDropDownBackgroundResource()`, `setBackgroundResource()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `drawableStateChanged()`, `setTextAppearance()`, `onCreateInputConnection()`
- **`AppCompatPopupWindow`** — 8 function(s): `AppCompatPopupWindow()`, `super()`, `init()`, `if()`, `setSupportOverlapAnchor()`, `setBackgroundDrawable()`, `showAsDropDown()`, `update()`
- **`AppCompatProgressBarHelper`** — 9 function(s): `AppCompatProgressBarHelper()`, `loadFromAttributes()`, `if()`, `tileify()`, `for()`, `tileifyIndeterminate()`, `getDrawableShape()`, `RoundRectShape()`, `getSampleTime()`
- **`AppCompatRadioButton`** — 10 function(s): `AppCompatRadioButton()`, `this()`, `super()`, `setButtonDrawable()`, `if()`, `getCompoundPaddingLeft()`, `setSupportButtonTintList()`, `getSupportButtonTintList()`, `setSupportButtonTintMode()`, `getSupportButtonTintMode()`
- **`AppCompatRatingBar`** — 6 function(s): `AppCompatRatingBar()`, `this()`, `super()`, `onMeasure()`, `if()`, `setMeasuredDimension()`
- **`AppCompatSeekBar`** — 6 function(s): `AppCompatSeekBar()`, `this()`, `super()`, `onDraw()`, `drawableStateChanged()`, `jumpDrawablesToCurrentState()`
- **`AppCompatSeekBarHelper`** — 15 function(s): `AppCompatSeekBarHelper()`, `super()`, `loadFromAttributes()`, `if()`, `setTickMark()`, `applyTickMarkTint()`, `getTickMark()`, `setTickMarkTintList()`, `getTickMarkTintList()`, `setTickMarkTintMode()`, `getTickMarkTintMode()`, `jumpDrawablesToCurrentState()`, `drawableStateChanged()`, `drawTickMarks()`, `for()`
- **`AppCompatSpinner`** — 66 function(s): `AppCompatSpinner()`, `this()`, `if()`, `super()`, `getPopup()`, `onForwardingStarted()`, `setAdapter()`, `getPopupContext()`, `setPopupBackgroundDrawable()`, `setPopupBackgroundResource()`, `getPopupBackground()`, `setDropDownVerticalOffset()`, `getDropDownVerticalOffset()`, `setDropDownHorizontalOffset()`, `getDropDownHorizontalOffset()`, `setDropDownWidth()`, `getDropDownWidth()`, `onDetachedFromWindow()`, `onTouchEvent()`, `onMeasure()`, `setMeasuredDimension()`, `performClick()`, `setPrompt()`, `getPrompt()`, `setBackgroundResource()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `drawableStateChanged()`, `compatMeasureContentWidth()`, `for()`, `getItemViewType()`, `getViewTypeCount()`, `DropDownAdapter()`, `getCount()`, `getItem()`, `getItemId()`, `getView()`, `getDropDownView()`, `hasStableIds()`, `registerDataSetObserver()`, `unregisterDataSetObserver()`, `areAllItemsEnabled()`, `isEnabled()`, `isEmpty()`, `DropdownPopup()`, `setAnchorView()`, `setModal()`, `setPromptPosition()`, `setOnItemClickListener()`, `onItemClick()`, `getHintText()`, `setPromptText()`, `computeContentWidth()`, `setContentWidth()`, `setHorizontalOffset()`, `show()`, `setInputMethodMode()`, `getListView()`, `setSelection()`, `onGlobalLayout()`, `setOnDismissListener()`, `onDismiss()`, `isVisibleToUser()`
- **`AppCompatTextHelper`** — 26 function(s): `AppCompatTextHelper()`, `loadFromAttributes()`, `if()`, `updateTypefaceAndStyle()`, `setAllCaps()`, `onFontRetrievalFailed()`, `onFontRetrieved()`, `switch()`, `onAsyncTypefaceReceived()`, `onSetTextAppearance()`, `applyCompoundDrawablesTints()`, `applyCompoundDrawableTint()`, `createTintInfo()`, `onLayout()`, `autoSizeText()`, `setTextSize()`, `setTextSizeInternal()`, `isAutoSizeEnabled()`, `setAutoSizeTextTypeWithDefaults()`, `setAutoSizeTextTypeUniformWithConfiguration()`, `setAutoSizeTextTypeUniformWithPresetSizes()`, `getAutoSizeTextType()`, `getAutoSizeStepGranularity()`, `getAutoSizeMinTextSize()`, `getAutoSizeMaxTextSize()`, `getAutoSizeTextAvailableSizes()`
- **`AppCompatTextView`** — 38 function(s): `AppCompatTextView()`, `this()`, `super()`, `setBackgroundResource()`, `if()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `setTextAppearance()`, `drawableStateChanged()`, `onLayout()`, `setTextSize()`, `onTextChanged()`, `setAutoSizeTextTypeWithDefaults()`, `setAutoSizeTextTypeUniformWithConfiguration()`, `setAutoSizeTextTypeUniformWithPresetSizes()`, `getAutoSizeTextType()`, `getAutoSizeStepGranularity()`, `getAutoSizeMinTextSize()`, `getAutoSizeMaxTextSize()`, `getAutoSizeTextAvailableSizes()`, `onCreateInputConnection()`, `setFirstBaselineToTopHeight()`, `setLastBaselineToBottomHeight()`, `getFirstBaselineToTopHeight()`, `getLastBaselineToBottomHeight()`, `setLineHeight()`, `setCustomSelectionActionModeCallback()`, `getTextMetricsParamsCompat()`, `setTextMetricsParamsCompat()`, `setPrecomputedText()`, `consumeTextFutureAndSetBlocking()`, `getText()`, `setTextFuture()`, `requestLayout()`, `onMeasure()`
- **`AppCompatTextViewAutoSizeHelper`** — 36 function(s): `AppCompatTextViewAutoSizeHelper()`, `loadFromAttributes()`, `if()`, `setupAutoSizeUniformPresetSizes()`, `validateAndSetAutoSizeTextTypeUniformConfiguration()`, `setupAutoSizeText()`, `setAutoSizeTextTypeWithDefaults()`, `switch()`, `clearAutoSizeConfiguration()`, `autoSizeText()`, `IllegalArgumentException()`, `setAutoSizeTextTypeUniformWithConfiguration()`, `setAutoSizeTextTypeUniformWithPresetSizes()`, `for()`, `getAutoSizeTextType()`, `getAutoSizeStepGranularity()`, `getAutoSizeMinTextSize()`, `getAutoSizeMaxTextSize()`, `getAutoSizeTextAvailableSizes()`, `setupAutoSizeUniformPresetSizesConfiguration()`, `cleanupAutoSizePresetSizes()`, `while()`, `synchronized()`, `setTextSizeInternal()`, `setRawTextSize()`, `findLargestTextSizeWhichFits()`, `IllegalStateException()`, `suggestedSizeFitsInSpace()`, `return()`, `createStaticLayoutForMeasuring()`, `createStaticLayoutForMeasuringPre23()`, `StaticLayout()`, `invokeAndReturnWithDefault()`, `getTextViewMethod()`, `isAutoSizeEnabled()`, `supportsAutoSizeText()`
- **`ButtonBarLayout`** — 17 function(s): `ButtonBarLayout()`, `super()`, `setAllowStacking()`, `if()`, `setStacked()`, `requestLayout()`, `onMeasure()`, `setMinimumHeight()`, `getNextVisibleChildIndex()`, `while()`, `getMinimumHeight()`, `setOrientation()`, `setGravity()`, `for()`, `bringChildToFront()`, `isStacked()`, `getOrientation()`
- **`ContentFrameLayout`** — 19 function(s): `onAttachedFromWindow()`, `onDetachedFromWindow()`, `ContentFrameLayout()`, `this()`, `super()`, `dispatchFitSystemWindows()`, `fitSystemWindows()`, `setAttachListener()`, `setDecorPadding()`, `if()`, `requestLayout()`, `onMeasure()`, `getMinWidthMajor()`, `getMinWidthMinor()`, `getFixedWidthMajor()`, `getFixedWidthMinor()`, `getFixedHeightMajor()`, `getFixedHeightMinor()`, `onAttachedToWindow()`
- **`DecorContentParent`** — 19 function(s): `canShowOverflowMenu()`, `dismissPopups()`, `getTitle()`, `hasIcon()`, `hasLogo()`, `hideOverflowMenu()`, `initFeature()`, `isOverflowMenuShowPending()`, `isOverflowMenuShowing()`, `restoreToolbarHierarchyState()`, `saveToolbarHierarchyState()`, `setIcon()`, `setLogo()`, `setMenu()`, `setMenuPrepared()`, `setUiOptions()`, `setWindowCallback()`, `setWindowTitle()`, `showOverflowMenu()`
- **`DecorToolbar`** — 53 function(s): `animateToVisibility()`, `canShowOverflowMenu()`, `collapseActionView()`, `dismissPopupMenus()`, `getContext()`, `getCustomView()`, `getDisplayOptions()`, `getDropdownItemCount()`, `getDropdownSelectedPosition()`, `getHeight()`, `getMenu()`, `getNavigationMode()`, `getSubtitle()`, `getTitle()`, `getViewGroup()`, `getVisibility()`, `hasEmbeddedTabs()`, `hasExpandedActionView()`, `hasIcon()`, `hasLogo()`, `hideOverflowMenu()`, `initIndeterminateProgress()`, `initProgress()`, `isOverflowMenuShowPending()`, `isOverflowMenuShowing()`, `isTitleTruncated()`, `restoreHierarchyState()`, `saveHierarchyState()`, `setBackgroundDrawable()`, `setCollapsible()`, `setCustomView()`, `setDefaultNavigationContentDescription()`, `setDefaultNavigationIcon()`, `setDisplayOptions()`, `setDropdownParams()`, `setDropdownSelectedPosition()`, `setEmbeddedTabView()`, `setHomeButtonEnabled()`, `setIcon()`, `setLogo()`, `setMenu()`, `setMenuCallbacks()`, `setMenuPrepared()`, `setNavigationContentDescription()`, `setNavigationIcon()`, `setNavigationMode()`, `setSubtitle()`, `setTitle()`, `setVisibility()`, `setWindowCallback()`, `setWindowTitle()`, `setupAnimatorToVisibility()`, `showOverflowMenu()`
- **`DialogTitle`** — 8 function(s): `DialogTitle()`, `super()`, `onMeasure()`, `if()`, `setSingleLine()`, `setMaxLines()`, `setTextSize()`, `setCustomSelectionActionModeCallback()`
- **`DrawableUtils`** — 9 function(s): `if()`, `DrawableUtils()`, `getOpticalBounds()`, `for()`, `switch()`, `fixDrawable()`, `fixVectorDrawableTinting()`, `canSafelyMutateDrawable()`, `parseTintMode()`
- **`DropDownListView`** — 51 function(s): `DropDownListView()`, `super()`, `setCacheColorHint()`, `isInTouchMode()`, `return()`, `hasWindowFocus()`, `isFocused()`, `hasFocus()`, `setSelector()`, `if()`, `drawableStateChanged()`, `setSelectorEnabled()`, `updateSelectorStateCompat()`, `dispatchDraw()`, `drawSelectorCompat()`, `onTouchEvent()`, `lookForSelectablePosition()`, `while()`, `measureHeightOfChildrenCompat()`, `getListPaddingLeft()`, `getListPaddingRight()`, `GateKeeperDrawable()`, `setEnabled()`, `setState()`, `draw()`, `setHotspot()`, `setHotspotBounds()`, `setVisible()`, `onHoverEvent()`, `setSelectionFromTop()`, `setSelection()`, `onDetachedFromWindow()`, `onForwardedEvent()`, `switch()`, `setPressedItem()`, `clickPressedItem()`, `clearPressedItem()`, `performItemClick()`, `setListSelectionHidden()`, `positionSelectorLikeTouchCompat()`, `positionSelectorLikeFocusCompat()`, `positionSelectorCompat()`, `refreshDrawableState()`, `setPressed()`, `drawableHotspotChanged()`, `layoutChildren()`, `touchModeDrawsInPressedStateCompat()`, `ResolveHoverRunnable()`, `run()`, `cancel()`, `post()`
- **`FitWindowsFrameLayout`** — 5 function(s): `FitWindowsFrameLayout()`, `super()`, `setOnFitSystemWindowsListener()`, `fitSystemWindows()`, `if()`
- **`FitWindowsLinearLayout`** — 5 function(s): `FitWindowsLinearLayout()`, `super()`, `setOnFitSystemWindowsListener()`, `fitSystemWindows()`, `if()`
- **`FitWindowsViewGroup`** — 2 function(s): `onFitSystemWindows()`, `setOnFitSystemWindowsListener()`
- **`ForwardingListener`** — 19 function(s): `getPopup()`, `onViewAttachedToWindow()`, `ForwardingListener()`, `onTouch()`, `if()`, `onViewDetachedFromWindow()`, `onForwardingStarted()`, `onForwardingStopped()`, `onTouchObserved()`, `switch()`, `clearCallbacks()`, `onLongPress()`, `onTouchForwarded()`, `toGlobalMotionEvent()`, `toLocalMotionEvent()`, `pointInView()`, `DisallowIntercept()`, `run()`, `TriggerLongPress()`
- **`LinearLayoutCompat`** — 66 function(s): `getChildrenSkipCount()`, `getLocationOffset()`, `getNextLocationOffset()`, `measureNullChild()`, `shouldDelayChildPressedState()`, `LinearLayoutCompat()`, `this()`, `super()`, `if()`, `setOrientation()`, `setGravity()`, `setBaselineAligned()`, `setDividerDrawable()`, `setShowDividers()`, `requestLayout()`, `getShowDividers()`, `getDividerDrawable()`, `setWillNotDraw()`, `setDividerPadding()`, `getDividerPadding()`, `getDividerWidth()`, `onDraw()`, `drawDividersVertical()`, `drawDividersHorizontal()`, `for()`, `drawHorizontalDivider()`, `drawVerticalDivider()`, `isBaselineAligned()`, `isMeasureWithLargestChildEnabled()`, `setMeasureWithLargestChildEnabled()`, `getBaseline()`, `RuntimeException()`, `getBaselineAlignedChildIndex()`, `setBaselineAlignedChildIndex()`, `IllegalArgumentException()`, `getVirtualChildAt()`, `getChildAt()`, `getVirtualChildCount()`, `getChildCount()`, `getWeightSum()`, `setWeightSum()`, `onMeasure()`, `measureVertical()`, `measureHorizontal()`, `hasDividerBeforeChildAt()`, `return()`, `while()`, `measureChildBeforeLayout()`, `setMeasuredDimension()`, `forceUniformWidth()`, `measureChildWithMargins()`, `forceUniformHeight()`, `onLayout()`, `layoutVertical()`, `layoutHorizontal()`, `setChildFrame()`, `getOrientation()`, `getGravity()`, `setHorizontalGravity()`, `setVerticalGravity()`, `generateLayoutParams()`, `LayoutParams()`, `generateDefaultLayoutParams()`, `checkLayoutParams()`, `onInitializeAccessibilityEvent()`, `onInitializeAccessibilityNodeInfo()`
- **`ListPopupWindow`** — 82 function(s): `isConfirmKey()`, `ListPopupWindow()`, `this()`, `if()`, `setAdapter()`, `setPromptPosition()`, `getPromptPosition()`, `setModal()`, `isModal()`, `setForceIgnoreOutsideTouch()`, `setDropDownAlwaysVisible()`, `isDropDownAlwaysVisible()`, `setSoftInputMode()`, `getSoftInputMode()`, `setListSelector()`, `getBackground()`, `setBackgroundDrawable()`, `setAnimationStyle()`, `getAnimationStyle()`, `getAnchorView()`, `setAnchorView()`, `getHorizontalOffset()`, `setHorizontalOffset()`, `getVerticalOffset()`, `setVerticalOffset()`, `setEpicenterBounds()`, `setDropDownGravity()`, `getWidth()`, `setWidth()`, `setContentWidth()`, `getHeight()`, `setHeight()`, `IllegalArgumentException()`, `setWindowLayoutType()`, `setOnItemClickListener()`, `setOnItemSelectedListener()`, `setPromptView()`, `removePromptView()`, `show()`, `postShow()`, `setPopupClipToScreenEnabled()`, `clearListSelection()`, `dismiss()`, `setOnDismissListener()`, `setInputMethodMode()`, `getInputMethodMode()`, `setSelection()`, `isShowing()`, `isInputMethodNotNeeded()`, `performItemClick()`, `getSelectedItem()`, `getSelectedItemPosition()`, `getSelectedItemId()`, `getSelectedView()`, `getListView()`, `createDropDownListView()`, `DropDownListView()`, `setListItemExpandMax()`, `onKeyDown()`, `switch()`, `onKeyUp()`, `onKeyPreIme()`, `createDragToOpenListener()`, `ForwardingListener()`, `getPopup()`, `buildDropDown()`, `run()`, `onNothingSelected()`, `onItemSelected()`, `setOverlapAnchor()`, `PopupDataSetObserver()`, `onChanged()`, `onInvalidated()`, `ListSelectorHider()`, `ResizePopupRunnable()`, `PopupTouchInterceptor()`, `onTouch()`, `onScroll()`, `PopupScrollListener()`, `onScrollStateChanged()`, `getMaxAvailableHeight()`, `return()`
- **`MenuItemHoverListener`** — 2 function(s): `onItemHoverEnter()`, `onItemHoverExit()`
- **`MenuPopupWindow`** — 16 function(s): `MenuPopupWindow()`, `super()`, `createDropDownListView()`, `setEnterTransition()`, `if()`, `setExitTransition()`, `setHoverListener()`, `setTouchModal()`, `onItemHoverEnter()`, `onItemHoverExit()`, `MenuDropDownListView()`, `clearSelection()`, `setSelection()`, `onKeyDown()`, `performItemClick()`, `onHoverEvent()`
- **`PopupMenu`** — 22 function(s): `onDismiss()`, `onMenuItemClick()`, `PopupMenu()`, `this()`, `onMenuModeChange()`, `onMenuItemSelected()`, `if()`, `setGravity()`, `getGravity()`, `getDragToOpenListener()`, `onForwardingStarted()`, `onForwardingStopped()`, `getPopup()`, `getMenu()`, `getMenuInflater()`, `SupportMenuInflater()`, `inflate()`, `show()`, `dismiss()`, `setOnMenuItemClickListener()`, `setOnDismissListener()`, `getMenuListView()`
- **`ResourcesWrapper`** — 40 function(s): `ResourcesWrapper()`, `super()`, `getText()`, `getQuantityText()`, `getString()`, `getQuantityString()`, `getTextArray()`, `getStringArray()`, `getIntArray()`, `obtainTypedArray()`, `getDimension()`, `getDimensionPixelOffset()`, `getDimensionPixelSize()`, `getFraction()`, `getDrawable()`, `getDrawableForDensity()`, `getMovie()`, `getColor()`, `getColorStateList()`, `getBoolean()`, `getInteger()`, `getLayout()`, `getAnimation()`, `getXml()`, `openRawResource()`, `openRawResourceFd()`, `getValue()`, `getValueForDensity()`, `obtainAttributes()`, `updateConfiguration()`, `if()`, `getDisplayMetrics()`, `getConfiguration()`, `getIdentifier()`, `getResourceName()`, `getResourcePackageName()`, `getResourceTypeName()`, `getResourceEntryName()`, `parseBundleExtras()`, `parseBundleExtra()`
- **`RtlSpacingHelper`** — 8 function(s): `getLeft()`, `getRight()`, `getStart()`, `getEnd()`, `setRelative()`, `if()`, `setAbsolute()`, `setDirection()`
- **`ScrollingTabContainerView`** — 58 function(s): `onNothingSelected()`, `ScrollingTabContainerView()`, `super()`, `setHorizontalScrollBarEnabled()`, `setContentHeight()`, `addView()`, `onMeasure()`, `setFillViewport()`, `if()`, `performCollapse()`, `performExpand()`, `setTabSelected()`, `isCollapsed()`, `setAllowCollapse()`, `removeView()`, `removeCallbacks()`, `while()`, `animateToTab()`, `requestLayout()`, `createTabLayout()`, `createSpinner()`, `onConfigurationChanged()`, `animateToVisibility()`, `setAlpha()`, `run()`, `post()`, `onAttachedToWindow()`, `onDetachedFromWindow()`, `createTabView()`, `addTab()`, `updateTab()`, `removeTabAt()`, `removeAllTabs()`, `onItemSelected()`, `TabView()`, `setBackgroundDrawable()`, `setGravity()`, `update()`, `bindTab()`, `setSelected()`, `sendAccessibilityEvent()`, `onInitializeAccessibilityEvent()`, `onInitializeAccessibilityNodeInfo()`, `getTab()`, `getItemId()`, `TabAdapter()`, `getCount()`, `getItem()`, `return()`, `getView()`, `TabClickListener()`, `onClick()`, `for()`, `VisibilityAnimListener()`, `withFinalVisibility()`, `onAnimationStart()`, `onAnimationEnd()`, `onAnimationCancel()`
- **`SearchView`** — 132 function(s): `onClose()`, `onQueryTextChange()`, `onQueryTextSubmit()`, `onSuggestionClick()`, `onSuggestionSelect()`, `SearchView()`, `this()`, `super()`, `run()`, `if()`, `onClick()`, `onKey()`, `onEditorAction()`, `onItemClick()`, `onNothingSelected()`, `onItemSelected()`, `afterTextChanged()`, `beforeTextChanged()`, `onTextChanged()`, `onFocusChange()`, `setIconifiedByDefault()`, `setMaxWidth()`, `setImeOptions()`, `setInputType()`, `setFocusable()`, `onLayoutChange()`, `updateViewsVisibility()`, `updateQueryHint()`, `getSuggestionRowLayout()`, `getSuggestionCommitIconResId()`, `setSearchableInfo()`, `updateSearchAutoComplete()`, `setAppSearchData()`, `getImeOptions()`, `getInputType()`, `requestFocus()`, `clearFocus()`, `setOnQueryTextListener()`, `setOnCloseListener()`, `setOnQueryTextFocusChangeListener()`, `setOnSuggestionListener()`, `setOnSearchClickListener()`, `getQuery()`, `setQuery()`, `onSubmitQuery()`, `setQueryHint()`, `getQueryHint()`, `getContext()`, `isIconfiedByDefault()`, `setIconified()`, `onCloseClicked()`, `onSearchClicked()`, `isIconified()`, `setSubmitButtonEnabled()`, `isSubmitButtonEnabled()`, `setQueryRefinementEnabled()`, `isQueryRefinementEnabled()`, `setSuggestionsAdapter()`, `getSuggestionsAdapter()`, `requestLayout()`, `getMaxWidth()`, `onMeasure()`, `onLayout()`, `getChildBoundsWithinSearchView()`, `setTouchDelegate()`, `getLocationInWindow()`, `getPreferredWidth()`, `getPreferredHeight()`, `updateSubmitButton()`, `updateCloseButton()`, `updateVoiceButton()`, `updateSubmitArea()`, `hasVoiceSearch()`, `return()`, `isSubmitAreaEnabled()`, `postUpdateFocusedState()`, `post()`, `updateFocusedState()`, `invalidate()`, `onDetachedFromWindow()`, `removeCallbacks()`, `onQueryRefine()`, `onSuggestionsKey()`, `onItemClicked()`, `getDecoratedHint()`, `launchQuerySearch()`, `dismissSuggestions()`, `onVoiceClicked()`, `onTextFocusChanged()`, `forceSuggestionQuery()`, `onWindowFocusChanged()`, `onActionViewCollapsed()`, `onActionViewExpanded()`, `createFromParcel()`, `SavedState()`, `newArray()`, `writeToParcel()`, `toString()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `adjustDropDownSizeAndPosition()`, `launchSuggestion()`, `rewriteQueryFromSuggestion()`, `launchIntent()`, `createIntent()`, `createVoiceWebSearchIntent()`, `createVoiceAppSearchIntent()`, `createIntentFromSuggestion()`, `isLandscapeMode()`, `UpdatableTouchDelegate()`, `setBounds()`, `onTouchEvent()`, `switch()`, `performCompletion()`, `replaceText()`, `SearchAutoComplete()`, `onFinishInflate()`, `setMinWidth()`, `setSearchView()`, `setThreshold()`, `isEmpty()`, `onFocusChanged()`, `enoughToFilter()`, `onKeyPreIme()`, `setImeVisibility()`, `getSearchViewTextMinWidthDp()`, `onCreateInputConnection()`, `showSoftInputIfNecessary()`, `AutoCompleteTextViewReflector()`, `doBeforeTextChanged()`, `doAfterTextChanged()`, `ensureImeVisible()`
- **`ShareActionProvider`** — 17 function(s): `onShareTargetSelected()`, `hasSubMenu()`, `ShareActionProvider()`, `super()`, `setOnShareTargetSelectedListener()`, `setActivityChooserPolicyIfNeeded()`, `onCreateActionView()`, `if()`, `onPrepareSubMenu()`, `for()`, `setShareHistoryFileName()`, `setShareIntent()`, `updateIntent()`, `ShareMenuItemOnMenuItemClickListener()`, `onMenuItemClick()`, `ShareActivityChooserModelPolicy()`, `onChooseActivity()`
- **`SuggestionsAdapter`** — 36 function(s): `hasStableIds()`, `SuggestionsAdapter()`, `super()`, `setQueryRefinement()`, `getQueryRefinement()`, `runQueryOnBackgroundThread()`, `if()`, `close()`, `changeCursor()`, `notifyDataSetChanged()`, `updateSpinnerState()`, `notifyDataSetInvalidated()`, `newView()`, `ChildViewCache()`, `bindView()`, `setViewText()`, `setViewDrawable()`, `onClick()`, `formatUrl()`, `getIcon1()`, `getIcon2()`, `getDrawableFromResourceValue()`, `convertToString()`, `getView()`, `getDropDownView()`, `storeInIconCache()`, `getDrawable()`, `getDrawableFromResourceUri()`, `FileNotFoundException()`, `checkIconCache()`, `getDefaultIcon1()`, `getActivityIconWithCache()`, `getActivityIcon()`, `getColumnString()`, `getStringOrNull()`, `getSearchManagerSuggestions()`
- **`SwitchCompat`** — 78 function(s): `get()`, `set()`, `constrain()`, `SwitchCompat()`, `this()`, `super()`, `if()`, `applyThumbTint()`, `applyTrackTint()`, `setSwitchTextAppearance()`, `refreshDrawableState()`, `setChecked()`, `requestLayout()`, `setSwitchTypefaceByIndex()`, `switch()`, `setSwitchTypeface()`, `invalidate()`, `setSwitchPadding()`, `getSwitchPadding()`, `setSwitchMinWidth()`, `getSwitchMinWidth()`, `setThumbTextPadding()`, `getThumbTextPadding()`, `setTrackDrawable()`, `setTrackResource()`, `getTrackDrawable()`, `setTrackTintList()`, `getTrackTintList()`, `setTrackTintMode()`, `getTrackTintMode()`, `setThumbDrawable()`, `setThumbResource()`, `getThumbDrawable()`, `setThumbTintList()`, `getThumbTintList()`, `setThumbTintMode()`, `getThumbTintMode()`, `setSplitTrack()`, `getSplitTrack()`, `getTextOn()`, `setTextOn()`, `getTextOff()`, `setTextOff()`, `setShowText()`, `getShowText()`, `onMeasure()`, `setMeasuredDimension()`, `onPopulateAccessibilityEvent()`, `makeLayout()`, `StaticLayout()`, `hitThumb()`, `onTouchEvent()`, `stopDrag()`, `getParent()`, `setThumbPosition()`, `cancelSuperTouch()`, `playSoundEffect()`, `animateThumbToCheckedState()`, `cancelPositionAnimator()`, `getTargetCheckedState()`, `toggle()`, `onLayout()`, `draw()`, `onDraw()`, `getCompoundPaddingLeft()`, `getCompoundPaddingRight()`, `getThumbOffset()`, `return()`, `getThumbScrollRange()`, `onCreateDrawableState()`, `mergeDrawableStates()`, `drawableStateChanged()`, `drawableHotspotChanged()`, `verifyDrawable()`, `jumpDrawablesToCurrentState()`, `onInitializeAccessibilityEvent()`, `onInitializeAccessibilityNodeInfo()`, `setCustomSelectionActionModeCallback()`
- **`ThemeUtils`** — 8 function(s): `createDisabledStateList()`, `ColorStateList()`, `getThemeAttrColor()`, `getThemeAttrColorStateList()`, `getDisabledThemeAttrColor()`, `if()`, `getTypedValue()`, `ThemeUtils()`
- **`ThemedSpinnerAdapter`** — 5 function(s): `getDropDownViewTheme()`, `setDropDownViewTheme()`, `Helper()`, `if()`, `getDropDownViewInflater()`
- **`TintContextWrapper`** — 11 function(s): `wrap()`, `if()`, `synchronized()`, `for()`, `shouldWrap()`, `TintContextWrapper()`, `super()`, `getTheme()`, `setTheme()`, `getResources()`, `getAssets()`
- **`TintInfo`** — 1 function(s): `clear()`
- **`TintResources`** — 4 function(s): `TintResources()`, `super()`, `getDrawable()`, `if()`
- **`TintTypedArray`** — 34 function(s): `obtainStyledAttributes()`, `TintTypedArray()`, `getDrawable()`, `if()`, `getDrawableIfKnown()`, `getFont()`, `length()`, `getIndexCount()`, `getIndex()`, `getResources()`, `getText()`, `getString()`, `getNonResourceString()`, `getBoolean()`, `getInt()`, `getFloat()`, `getColor()`, `getColorStateList()`, `return()`, `getInteger()`, `getDimension()`, `getDimensionPixelOffset()`, `getDimensionPixelSize()`, `getLayoutDimension()`, `getFraction()`, `getResourceId()`, `getTextArray()`, `getValue()`, `getType()`, `hasValue()`, `peekValue()`, `getPositionDescription()`, `recycle()`, `getChangingConfigurations()`
- **`Toolbar`** — 136 function(s): `onMenuItemClick()`, `Toolbar()`, `this()`, `super()`, `if()`, `run()`, `ensureContentInsets()`, `setTitle()`, `setSubtitle()`, `setPopupTheme()`, `setNavigationIcon()`, `setNavigationContentDescription()`, `setLogo()`, `setLogoDescription()`, `setTitleTextColor()`, `setSubtitleTextColor()`, `getPopupTheme()`, `setTitleMargin()`, `requestLayout()`, `getTitleMarginStart()`, `setTitleMarginStart()`, `getTitleMarginTop()`, `setTitleMarginTop()`, `getTitleMarginEnd()`, `setTitleMarginEnd()`, `getTitleMarginBottom()`, `setTitleMarginBottom()`, `onRtlPropertiesChanged()`, `canShowOverflowMenu()`, `getVisibility()`, `isOverflowMenuShowing()`, `isOverflowMenuShowPending()`, `showOverflowMenu()`, `hideOverflowMenu()`, `setMenu()`, `ensureMenuView()`, `dismissPopupMenus()`, `isTitleTruncated()`, `for()`, `ensureLogoView()`, `addSystemView()`, `removeView()`, `getLogo()`, `getLogoDescription()`, `hasExpandedActionView()`, `return()`, `collapseActionView()`, `getTitle()`, `getSubtitle()`, `setTitleTextAppearance()`, `setSubtitleTextAppearance()`, `getNavigationContentDescription()`, `ensureNavButtonView()`, `getNavigationIcon()`, `setNavigationOnClickListener()`, `getMenu()`, `ensureMenu()`, `setOverflowIcon()`, `getOverflowIcon()`, `getMenuInflater()`, `SupportMenuInflater()`, `inflateMenu()`, `setOnMenuItemClickListener()`, `setContentInsetsRelative()`, `getContentInsetStart()`, `getContentInsetEnd()`, `setContentInsetsAbsolute()`, `getContentInsetLeft()`, `getContentInsetRight()`, `getContentInsetStartWithNavigation()`, `setContentInsetStartWithNavigation()`, `getContentInsetEndWithActions()`, `setContentInsetEndWithActions()`, `getCurrentContentInsetStart()`, `getCurrentContentInsetEnd()`, `getCurrentContentInsetLeft()`, `getCurrentContentInsetRight()`, `ensureCollapseButtonView()`, `onClick()`, `addView()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `postShowOverflowMenu()`, `removeCallbacks()`, `post()`, `onDetachedFromWindow()`, `onTouchEvent()`, `onHoverEvent()`, `measureChildConstrained()`, `measureChildCollapseMargins()`, `shouldCollapse()`, `onMeasure()`, `setMeasuredDimension()`, `onLayout()`, `addCustomViewsWithGravity()`, `while()`, `getViewListMeasuredWidth()`, `layoutChildLeft()`, `layoutChildRight()`, `getChildTop()`, `getPaddingTop()`, `getChildVerticalGravity()`, `getChildHorizontalGravity()`, `shouldLayout()`, `getHorizontalMargins()`, `getVerticalMargins()`, `generateLayoutParams()`, `LayoutParams()`, `generateDefaultLayoutParams()`, `checkLayoutParams()`, `isCustomView()`, `getWrapper()`, `removeChildrenForExpandedActionView()`, `removeViewAt()`, `addChildrenForExpandedActionView()`, `isChildOrHidden()`, `setCollapsible()`, `setMenuCallbacks()`, `getOuterActionMenuPresenter()`, `getPopupContext()`, `copyMarginsFromCompat()`, `createFromParcel()`, `SavedState()`, `newArray()`, `writeToParcel()`, `flagActionItems()`, `getId()`, `getMenuView()`, `onCloseMenu()`, `onSubMenuSelected()`, `setCallback()`, `ExpandedActionViewMenuPresenter()`, `initForMenu()`, `updateMenuView()`, `collapseItemActionView()`, `expandItemActionView()`
- **`ToolbarWidgetWrapper`** — 69 function(s): `setHomeButtonEnabled()`, `ToolbarWidgetWrapper()`, `this()`, `if()`, `setTitle()`, `setSubtitle()`, `setLogo()`, `setIcon()`, `setNavigationIcon()`, `setDisplayOptions()`, `setCustomView()`, `setDefaultNavigationContentDescription()`, `onClick()`, `setNavigationContentDescription()`, `detectDisplayOptions()`, `getViewGroup()`, `getContext()`, `hasExpandedActionView()`, `collapseActionView()`, `setWindowCallback()`, `setWindowTitle()`, `setTitleInt()`, `getTitle()`, `getSubtitle()`, `initProgress()`, `initIndeterminateProgress()`, `hasIcon()`, `hasLogo()`, `updateToolbarLogo()`, `canShowOverflowMenu()`, `isOverflowMenuShowing()`, `isOverflowMenuShowPending()`, `showOverflowMenu()`, `hideOverflowMenu()`, `setMenuPrepared()`, `setMenu()`, `dismissPopupMenus()`, `getDisplayOptions()`, `updateHomeAccessibility()`, `updateNavigationIcon()`, `setEmbeddedTabView()`, `hasEmbeddedTabs()`, `isTitleTruncated()`, `setCollapsible()`, `getNavigationMode()`, `setNavigationMode()`, `switch()`, `ensureSpinner()`, `IllegalArgumentException()`, `setDropdownParams()`, `setDropdownSelectedPosition()`, `IllegalStateException()`, `getDropdownSelectedPosition()`, `getDropdownItemCount()`, `getCustomView()`, `animateToVisibility()`, `setupAnimatorToVisibility()`, `onAnimationStart()`, `onAnimationEnd()`, `onAnimationCancel()`, `setDefaultNavigationIcon()`, `saveHierarchyState()`, `restoreHierarchyState()`, `setBackgroundDrawable()`, `getHeight()`, `setVisibility()`, `getVisibility()`, `setMenuCallbacks()`, `getMenu()`
- **`TooltipCompat`** — 3 function(s): `setTooltipText()`, `if()`, `TooltipCompat()`
- **`TooltipCompatHandler`** — 15 function(s): `run()`, `onViewAttachedToWindow()`, `setTooltipText()`, `if()`, `setPendingHandler()`, `TooltipCompatHandler()`, `clearAnchorPos()`, `onLongClick()`, `show()`, `onHover()`, `hide()`, `onViewDetachedFromWindow()`, `scheduleShow()`, `cancelPendingShow()`, `updateAnchorPos()`
- **`TooltipPopup`** — 9 function(s): `TooltipPopup()`, `show()`, `if()`, `hide()`, `computePosition()`, `isShowing()`, `getAppRootView()`, `for()`, `return()`
- **`VectorEnabledTintResources`** — 8 function(s): `shouldBeUsed()`, `isCompatVectorFromResourcesEnabled()`, `VectorEnabledTintResources()`, `super()`, `getDrawable()`, `if()`, `superGetDrawable()`, `setCompatVectorFromResourcesEnabled()`
- **`ViewStubCompat`** — 22 function(s): `onInflate()`, `dispatchDraw()`, `draw()`, `ViewStubCompat()`, `this()`, `super()`, `setId()`, `setVisibility()`, `setWillNotDraw()`, `getInflatedId()`, `setInflatedId()`, `getLayoutResource()`, `setLayoutResource()`, `setLayoutInflater()`, `getLayoutInflater()`, `onMeasure()`, `setMeasuredDimension()`, `if()`, `IllegalStateException()`, `inflate()`, `IllegalArgumentException()`, `setOnInflateListener()`
- **`ViewUtils`** — 5 function(s): `if()`, `ViewUtils()`, `isLayoutRtl()`, `computeFitSystemWindows()`, `makeOptionalFitsSystemWindows()`
- **`WithHint`** — 1 function(s): `getHint()`

</details>

### Package `androidx.arch.core`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.arch.core</code></b> (click to expand)</summary>

- **`R`** — 1 function(s): `R()`

</details>

### Package `androidx.arch.core.executor`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ArchTaskExecutor` | class | TaskExecutor | 83 | 14 |
| `DefaultTaskExecutor` | class | TaskExecutor | 53 | 7 |
| `TaskExecutor` | class | — | 23 | 6 |

<details>
<summary><b>Function list for <code>androidx.arch.core.executor</code></b> (click to expand)</summary>

- **`ArchTaskExecutor`** — 11 function(s): `execute()`, `ArchTaskExecutor()`, `getInstance()`, `if()`, `synchronized()`, `setDelegate()`, `executeOnDiskIO()`, `postToMainThread()`, `getMainThreadExecutor()`, `getIOThreadExecutor()`, `isMainThread()`
- **`DefaultTaskExecutor`** — 6 function(s): `newThread()`, `executeOnDiskIO()`, `postToMainThread()`, `if()`, `synchronized()`, `isMainThread()`
- **`TaskExecutor`** — 5 function(s): `executeOnDiskIO()`, `isMainThread()`, `postToMainThread()`, `executeOnMainThread()`, `if()`

</details>

### Package `androidx.arch.core.internal`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `FastSafeIterableMap` | class | SafeIterableMap<K, V> | 47 | 7 |
| `SafeIterableMap` | class | Iterable<Map.Entry<K, V>> | 333 | 68 |

<details>
<summary><b>Function list for <code>androidx.arch.core.internal</code></b> (click to expand)</summary>

- **`FastSafeIterableMap`** — 6 function(s): `get()`, `putIfAbsent()`, `if()`, `remove()`, `contains()`, `ceil()`
- **`SafeIterableMap`** — 32 function(s): `supportRemove()`, `get()`, `while()`, `putIfAbsent()`, `if()`, `put()`, `remove()`, `size()`, `iterator()`, `descendingIterator()`, `iteratorWithAdditions()`, `eldest()`, `newest()`, `equals()`, `return()`, `hashCode()`, `toString()`, `backward()`, `forward()`, `ListIterator()`, `hasNext()`, `nextNode()`, `next()`, `AscendingIterator()`, `super()`, `DescendingIterator()`, `IteratorWithAdditions()`, `Entry()`, `getKey()`, `getValue()`, `setValue()`, `UnsupportedOperationException()`

</details>

### Package `androidx.arch.core.util`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `Function` | class | — | 7 | 1 |

<details>
<summary><b>Function list for <code>androidx.arch.core.util</code></b> (click to expand)</summary>

- **`Function`** — 1 function(s): `apply()`

</details>

### Package `androidx.asynclayoutinflater`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 209 | 11 |

<details>
<summary><b>Function list for <code>androidx.asynclayoutinflater</code></b> (click to expand)</summary>

- **`R`** — 11 function(s): `R()`, `attr()`, `color()`, `dimen()`, `drawable()`, `id()`, `integer()`, `layout()`, `string()`, `style()`, `styleable()`

</details>

### Package `androidx.asynclayoutinflater.view`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AsyncLayoutInflater` | class | LayoutInflater | 162 | 25 |

<details>
<summary><b>Function list for <code>androidx.asynclayoutinflater.view</code></b> (click to expand)</summary>

- **`AsyncLayoutInflater`** — 21 function(s): `handleMessage()`, `if()`, `onInflateFinished()`, `AsyncLayoutInflater()`, `inflate()`, `NullPointerException()`, `InflateRequest()`, `BasicInflater()`, `super()`, `cloneInContext()`, `onCreateView()`, `for()`, `InflateThread()`, `getInstance()`, `runInner()`, `run()`, `while()`, `obtainRequest()`, `releaseRequest()`, `enqueue()`, `RuntimeException()`

</details>

### Package `androidx.collection`  (10 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ArrayMap` | class | SimpleArrayMap<K, V> implements Map<K, V> | 113 | 29 |
| `ArraySet` | class | Collection<E>, Set<E> | 531 | 135 |
| `CircularArray` | class | — | 161 | 50 |
| `CircularIntArray` | class | — | 130 | 42 |
| `ContainerHelpers` | class | — | 72 | 17 |
| `LongSparseArray` | class | Cloneable | 250 | 70 |
| `LruCache` | class | — | 204 | 58 |
| `MapCollections` | class | Iterator<T> | 567 | 148 |
| `SimpleArrayMap` | class | — | 502 | 126 |
| `SparseArrayCompat` | class | Cloneable | 258 | 73 |

<details>
<summary><b>Function list for <code>androidx.collection</code></b> (click to expand)</summary>

- **`ArrayMap`** — 23 function(s): `ArrayMap()`, `super()`, `getCollection()`, `if()`, `colGetSize()`, `colGetEntry()`, `colIndexOfKey()`, `colIndexOfValue()`, `colGetMap()`, `colPut()`, `colSetValue()`, `colRemoveAt()`, `colClear()`, `containsAll()`, `putAll()`, `ensureCapacity()`, `for()`, `put()`, `removeAll()`, `retainAll()`, `entrySet()`, `keySet()`, `values()`
- **`ArraySet`** — 42 function(s): `indexOf()`, `if()`, `while()`, `for()`, `indexOfNull()`, `allocArrays()`, `synchronized()`, `freeArrays()`, `ArraySet()`, `this()`, `addAll()`, `clear()`, `ensureCapacity()`, `contains()`, `valueAt()`, `return()`, `isEmpty()`, `add()`, `append()`, `IllegalStateException()`, `remove()`, `removeAt()`, `removeAll()`, `size()`, `toArray()`, `equals()`, `hashCode()`, `toString()`, `getCollection()`, `colGetSize()`, `colGetEntry()`, `colIndexOfKey()`, `colIndexOfValue()`, `colGetMap()`, `UnsupportedOperationException()`, `colPut()`, `colSetValue()`, `colRemoveAt()`, `colClear()`, `iterator()`, `containsAll()`, `retainAll()`
- **`CircularArray`** — 20 function(s): `doubleCapacity()`, `if()`, `RuntimeException()`, `CircularArray()`, `this()`, `IllegalArgumentException()`, `addFirst()`, `addLast()`, `popFirst()`, `ArrayIndexOutOfBoundsException()`, `popLast()`, `clear()`, `removeFromStart()`, `for()`, `removeFromEnd()`, `getFirst()`, `getLast()`, `get()`, `size()`, `isEmpty()`
- **`CircularIntArray`** — 19 function(s): `doubleCapacity()`, `if()`, `RuntimeException()`, `CircularIntArray()`, `this()`, `IllegalArgumentException()`, `addFirst()`, `addLast()`, `popFirst()`, `ArrayIndexOutOfBoundsException()`, `popLast()`, `clear()`, `removeFromStart()`, `removeFromEnd()`, `getFirst()`, `getLast()`, `get()`, `size()`, `isEmpty()`
- **`ContainerHelpers`** — 9 function(s): `idealByteArraySize()`, `for()`, `if()`, `idealIntArraySize()`, `idealLongArraySize()`, `equal()`, `binarySearch()`, `while()`, `ContainerHelpers()`
- **`LongSparseArray`** — 26 function(s): `LongSparseArray()`, `this()`, `if()`, `m0clone()`, `AssertionError()`, `get()`, `return()`, `delete()`, `remove()`, `removeAt()`, `gc()`, `for()`, `put()`, `putAll()`, `size()`, `isEmpty()`, `keyAt()`, `valueAt()`, `setValueAt()`, `indexOfKey()`, `indexOfValue()`, `containsKey()`, `containsValue()`, `clear()`, `append()`, `toString()`
- **`LruCache`** — 27 function(s): `create()`, `entryRemoved()`, `sizeOf()`, `LruCache()`, `if()`, `IllegalArgumentException()`, `resize()`, `synchronized()`, `trimToSize()`, `get()`, `NullPointerException()`, `put()`, `while()`, `remove()`, `safeSizeOf()`, `IllegalStateException()`, `evictAll()`, `size()`, `maxSize()`, `hitCount()`, `missCount()`, `createCount()`, `putCount()`, `evictionCount()`, `snapshot()`, `LinkedHashMap()`, `toString()`
- **`MapCollections`** — 49 function(s): `colClear()`, `colGetEntry()`, `colGetMap()`, `colGetSize()`, `colIndexOfKey()`, `colIndexOfValue()`, `colPut()`, `colRemoveAt()`, `colSetValue()`, `ArrayIterator()`, `hasNext()`, `next()`, `if()`, `NoSuchElementException()`, `remove()`, `IllegalStateException()`, `MapIterator()`, `getKey()`, `return()`, `getValue()`, `setValue()`, `equals()`, `hashCode()`, `toString()`, `EntrySet()`, `add()`, `UnsupportedOperationException()`, `addAll()`, `for()`, `clear()`, `contains()`, `containsAll()`, `while()`, `isEmpty()`, `iterator()`, `removeAll()`, `retainAll()`, `size()`, `toArray()`, `KeySet()`, `ValuesCollection()`, `containsAllHelper()`, `removeAllHelper()`, `retainAllHelper()`, `toArrayHelper()`, `equalsSetHelper()`, `getEntrySet()`, `getKeySet()`, `getValues()`
- **`SimpleArrayMap`** — 32 function(s): `binarySearchHashes()`, `ConcurrentModificationException()`, `indexOf()`, `if()`, `while()`, `for()`, `indexOfNull()`, `allocArrays()`, `synchronized()`, `freeArrays()`, `SimpleArrayMap()`, `this()`, `putAll()`, `clear()`, `ensureCapacity()`, `containsKey()`, `indexOfKey()`, `indexOfValue()`, `containsValue()`, `get()`, `return()`, `keyAt()`, `valueAt()`, `setValueAt()`, `isEmpty()`, `put()`, `remove()`, `removeAt()`, `size()`, `equals()`, `hashCode()`, `toString()`
- **`SparseArrayCompat`** — 28 function(s): `SparseArrayCompat()`, `this()`, `if()`, `m1clone()`, `AssertionError()`, `get()`, `return()`, `delete()`, `remove()`, `removeAt()`, `removeAtRange()`, `while()`, `gc()`, `for()`, `put()`, `putAll()`, `size()`, `isEmpty()`, `keyAt()`, `valueAt()`, `setValueAt()`, `indexOfKey()`, `indexOfValue()`, `containsKey()`, `containsValue()`, `clear()`, `append()`, `toString()`

</details>

### Package `androidx.constraintlayout.solver`  (8 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ArrayLinkedVariables` | class | — | 549 | 118 |
| `ArrayRow` | class | LinearSystem.Row | 383 | 66 |
| `Cache` | class | — | 11 | 0 |
| `GoalRow` | class | ArrayRow | 15 | 3 |
| `LinearSystem` | class | — | 828 | 217 |
| `Metrics` | class | — | 75 | 2 |
| `Pools` | class | Pool<T> | 78 | 18 |
| `SolverVariable` | class | — | 208 | 30 |

<details>
<summary><b>Function list for <code>androidx.constraintlayout.solver</code></b> (click to expand)</summary>

- **`ArrayLinkedVariables`** — 24 function(s): `ArrayLinkedVariables()`, `put()`, `if()`, `remove()`, `for()`, `while()`, `add()`, `clear()`, `containsKey()`, `hasAtLeastOnePositiveVariable()`, `invert()`, `divideByAmount()`, `isNew()`, `chooseSubject()`, `updateFromRow()`, `updateFromSystem()`, `getPivotCandidate()`, `getVariable()`, `getVariableValue()`, `get()`, `sizeInBytes()`, `return()`, `display()`, `toString()`
- **`ArrayRow`** — 31 function(s): `ArrayRow()`, `hasKeyVariable()`, `toString()`, `toReadableString()`, `if()`, `for()`, `reset()`, `hasVariable()`, `createRowDefinition()`, `createRowEquals()`, `addSingleError()`, `createRowGreaterThan()`, `createRowLowerThan()`, `createRowEqualMatchDimensions()`, `createRowEqualDimension()`, `createRowCentering()`, `addError()`, `createRowDimensionPercent()`, `createRowDimensionRatio()`, `createRowWithAngle()`, `sizeInBytes()`, `return()`, `ensurePositiveConstant()`, `chooseSubject()`, `pivot()`, `pickPivot()`, `isEmpty()`, `getPivotCandidate()`, `clear()`, `initFromRow()`, `getKey()`
- **`GoalRow`** — 3 function(s): `GoalRow()`, `super()`, `addError()`
- **`LinearSystem`** — 61 function(s): `addError()`, `clear()`, `getKey()`, `getPivotCandidate()`, `initFromRow()`, `isEmpty()`, `getDisplayStrength()`, `LinearSystem()`, `releaseRows()`, `fillMetrics()`, `getMetrics()`, `increaseTableSize()`, `if()`, `for()`, `reset()`, `createObjectVariable()`, `createRow()`, `createSlackVariable()`, `createExtraVariable()`, `addSingleError()`, `createVariable()`, `createErrorVariable()`, `acquireSolverVariable()`, `getGoal()`, `getRow()`, `getValueFor()`, `getObjectVariableValue()`, `return()`, `getVariable()`, `minimize()`, `while()`, `minimizeGoal()`, `computeValues()`, `updateRowFromVariables()`, `enforceBFS()`, `optimize()`, `addConstraint()`, `addRow()`, `displayRows()`, `displaySolverVariables()`, `displayReadableRows()`, `displayVariablesReadableRows()`, `getMemoryUsed()`, `getNumEquations()`, `getNumVariables()`, `displaySystemInformations()`, `getDisplaySize()`, `getCache()`, `addGreaterThan()`, `addGreaterBarrier()`, `addLowerThan()`, `addLowerBarrier()`, `addCentering()`, `addRatio()`, `addEquality()`, `createRowEquals()`, `createRowDimensionPercent()`, `createRowGreaterThan()`, `createRowLowerThan()`, `createRowCentering()`, `addCenterPoint()`
- **`Metrics`** — 2 function(s): `toString()`, `reset()`
- **`Pools`** — 9 function(s): `acquire()`, `release()`, `releaseAll()`, `Pools()`, `SimplePool()`, `if()`, `IllegalArgumentException()`, `for()`, `isInPool()`
- **`SolverVariable`** — 17 function(s): `increaseErrorId()`, `getUniqueName()`, `if()`, `switch()`, `AssertionError()`, `SolverVariable()`, `clearStrengths()`, `for()`, `strengthsToString()`, `addToRow()`, `removeFromRow()`, `updateReferencesWithNewDefinition()`, `reset()`, `getName()`, `setName()`, `setType()`, `toString()`

</details>

### Package `androidx.constraintlayout.solver.widgets`  (19 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `Analyzer` | class | — | 372 | 88 |
| `Barrier` | class | Helper | 275 | 47 |
| `Chain` | class | — | 568 | 91 |
| `ChainHead` | class | — | 149 | 30 |
| `ConstraintAnchor` | class | — | 425 | 76 |
| `ConstraintHorizontalLayout` | class | ConstraintWidgetContainer | 71 | 12 |
| `ConstraintTableLayout` | class | ConstraintWidgetContainer | 426 | 93 |
| `ConstraintWidget` | class | — | 2,268 | 457 |
| `ConstraintWidgetContainer` | class | WidgetContainer | 645 | 133 |
| `ConstraintWidgetGroup` | class | — | 218 | 47 |
| `Guideline` | class | ConstraintWidget | 337 | 86 |
| `Helper` | class | ConstraintWidget | 22 | 3 |
| `Optimizer` | class | — | 543 | 97 |
| `Rectangle` | class | — | 41 | 8 |
| `ResolutionAnchor` | class | ResolutionNode | 248 | 49 |
| `ResolutionDimension` | class | ResolutionNode | 27 | 7 |
| `ResolutionNode` | class | — | 59 | 12 |
| `Snapshot` | class | — | 85 | 10 |
| `WidgetContainer` | class | ConstraintWidget | 197 | 45 |

<details>
<summary><b>Function list for <code>androidx.constraintlayout.solver.widgets</code></b> (click to expand)</summary>

- **`Analyzer`** — 16 function(s): `Analyzer()`, `determineGroups()`, `if()`, `singleGroup()`, `for()`, `setPosition()`, `traverse()`, `invalidate()`, `resolveDimensionRatio()`, `setConnection()`, `while()`, `getMaxDimension()`, `getMaxDimensionTraversal()`, `updateSizeDependentWidgets()`, `getParentBiasOffset()`, `return()`
- **`Barrier`** — 12 function(s): `allowedInBarrier()`, `setBarrierType()`, `setAllowsGoneWidget()`, `allowsGoneWidget()`, `resetResolutionNodes()`, `analyze()`, `if()`, `switch()`, `for()`, `resolve()`, `while()`, `addToSolver()`
- **`Chain`** — 4 function(s): `applyChainConstraints()`, `if()`, `for()`, `while()`
- **`ChainHead`** — 14 function(s): `ChainHead()`, `isMatchConstraintEqualityCandidate()`, `defineChainProperties()`, `while()`, `if()`, `getFirst()`, `getFirstVisibleWidget()`, `getLast()`, `getLastVisibleWidget()`, `getHead()`, `getFirstMatchConstraintWidget()`, `getLastMatchConstraintWidget()`, `getTotalWeight()`, `define()`
- **`ConstraintAnchor`** — 35 function(s): `getResolutionNode()`, `ConstraintAnchor()`, `getSolverVariable()`, `resetSolverVariable()`, `if()`, `getOwner()`, `getType()`, `getMargin()`, `getStrength()`, `getTarget()`, `getConnectionType()`, `setConnectionType()`, `getConnectionCreator()`, `setConnectionCreator()`, `reset()`, `connect()`, `isConnected()`, `isValidConnection()`, `switch()`, `return()`, `AssertionError()`, `isSideAnchor()`, `isSimilarDimensionConnection()`, `setStrength()`, `setMargin()`, `setGoneMargin()`, `isVerticalAnchor()`, `toString()`, `getSnapPriorityLevel()`, `getPriorityLevel()`, `isSnapCompatibleWith()`, `isConnectionAllowed()`, `isConnectionToMe()`, `for()`, `getOpposite()`
- **`ConstraintHorizontalLayout`** — 5 function(s): `ConstraintHorizontalLayout()`, `super()`, `addToSolver()`, `if()`, `while()`
- **`ConstraintTableLayout`** — 33 function(s): `getType()`, `handlesInternalConstraints()`, `HorizontalSlice()`, `VerticalSlice()`, `ConstraintTableLayout()`, `super()`, `getNumRows()`, `getNumCols()`, `getPadding()`, `getColumnsAlignmentRepresentation()`, `for()`, `if()`, `getColumnAlignmentRepresentation()`, `setNumCols()`, `setVerticalSlices()`, `setTableDimensions()`, `setNumRows()`, `setHorizontalSlices()`, `isVerticalGrowth()`, `setVerticalGrowth()`, `setPadding()`, `setColumnAlignment()`, `setChildrenConnections()`, `cycleColumnAlignment()`, `switch()`, `getVerticalGuidelines()`, `getHorizontalGuidelines()`, `addToSolver()`, `while()`, `setDebugSolverName()`, `updateDebugSolverNames()`, `updateFromSolver()`, `computeGuidelinesPercentPositions()`
- **`ConstraintWidget`** — 145 function(s): `connectedTo()`, `resolve()`, `getMaxHeight()`, `getMaxWidth()`, `setMaxWidth()`, `setMaxHeight()`, `isSpreadWidth()`, `isSpreadHeight()`, `reset()`, `if()`, `resetResolutionNodes()`, `for()`, `updateResolutionNodes()`, `analyze()`, `isFullyResolved()`, `getResolutionWidth()`, `getResolutionHeight()`, `ConstraintWidget()`, `addAnchors()`, `forceUpdateDrawPosition()`, `this()`, `resetSolverVariables()`, `isRoot()`, `isRootContainer()`, `return()`, `isInsideConstraintLayout()`, `while()`, `hasAncestor()`, `getRootWidgetContainer()`, `getParent()`, `setParent()`, `setWidthWrapContent()`, `isWidthWrapContent()`, `setHeightWrapContent()`, `isHeightWrapContent()`, `connectCircularConstraint()`, `immediateConnect()`, `getType()`, `setType()`, `setVisibility()`, `getVisibility()`, `getDebugName()`, `setDebugName()`, `setDebugSolverName()`, `createObjectVariables()`, `toString()`, `getInternalDrawX()`, `getInternalDrawY()`, `getInternalDrawRight()`, `getInternalDrawBottom()`, `getX()`, `getY()`, `getWidth()`, `getOptimizerWrapWidth()`, `getOptimizerWrapHeight()`, `getWrapWidth()`, `getHeight()`, `getWrapHeight()`, `getLength()`, `getDrawX()`, `getDrawY()`, `getDrawWidth()`, `getDrawHeight()`, `getDrawBottom()`, `getDrawRight()`, `getRootX()`, `getRootY()`, `getMinWidth()`, `getMinHeight()`, `getLeft()`, `getTop()`, `getRight()`, `getBottom()`, `getHorizontalBiasPercent()`, `getVerticalBiasPercent()`, `getBiasPercent()`, `hasBaseline()`, `getBaselineDistance()`, `getCompanionWidget()`, `getAnchors()`, `setX()`, `setY()`, `setOrigin()`, `setOffset()`, `setGoneMargin()`, `switch()`, `updateDrawPosition()`, `setDrawOrigin()`, `setDrawX()`, `setDrawY()`, `setDrawWidth()`, `setDrawHeight()`, `setWidth()`, `setHeight()`, `setLength()`, `setHorizontalMatchStyle()`, `setVerticalMatchStyle()`, `setDimensionRatio()`, `getDimensionRatio()`, `getDimensionRatioSide()`, `setHorizontalBiasPercent()`, `setVerticalBiasPercent()`, `setMinWidth()`, `setMinHeight()`, `setWrapWidth()`, `setWrapHeight()`, `setDimension()`, `setFrame()`, `setHorizontalDimension()`, `setVerticalDimension()`, `getRelativePositioning()`, `setRelativePositioning()`, `setBaselineDistance()`, `setCompanionWidget()`, `setContainerItemSkip()`, `getContainerItemSkip()`, `setHorizontalWeight()`, `setVerticalWeight()`, `setHorizontalChainStyle()`, `getHorizontalChainStyle()`, `setVerticalChainStyle()`, `getVerticalChainStyle()`, `allowedInBarrier()`, `getAnchor()`, `connect()`, `resetAllConstraints()`, `resetAnchors()`, `setHorizontalDimensionBehaviour()`, `setVerticalDimensionBehaviour()`, `resetAnchor()`, `disconnectWidget()`, `disconnectUnlockedWidget()`, `AssertionError()`, `getHorizontalDimensionBehaviour()`, `getVerticalDimensionBehaviour()`, `getDimensionBehaviour()`, `isInHorizontalChain()`, `getHorizontalChainControlWidget()`, `isInVerticalChain()`, `getVerticalChainControlWidget()`, `isChainHead()`, `addToSolver()`, `setupDimensionRatio()`, `applyConstraints()`, `updateFromSolver()`
- **`ConstraintWidgetContainer`** — 46 function(s): `getType()`, `handlesInternalConstraints()`, `fillMetrics()`, `ConstraintWidgetContainer()`, `super()`, `setOptimizationLevel()`, `getOptimizationLevel()`, `optimizeFor()`, `if()`, `reset()`, `isWidthMeasuredTooSmall()`, `isHeightMeasuredTooSmall()`, `addChildrenToSolver()`, `addToSolver()`, `for()`, `updateChildrenFromSolver()`, `updateFromSolver()`, `setPadding()`, `setRtl()`, `isRtl()`, `analyze()`, `layout()`, `setX()`, `setY()`, `resetAnchors()`, `resetSolverVariables()`, `optimizeReset()`, `optimize()`, `resetChains()`, `while()`, `createObjectVariables()`, `setWidth()`, `setHeight()`, `updateDrawPosition()`, `preOptimize()`, `solveGraph()`, `resetGraph()`, `optimizeForDimensions()`, `resetResolutionNodes()`, `getVerticalGuidelines()`, `getHorizontalGuidelines()`, `getSystem()`, `addChain()`, `addHorizontalChain()`, `addVerticalChain()`, `getWidgetGroups()`
- **`ConstraintWidgetGroup`** — 10 function(s): `ConstraintWidgetGroup()`, `getStartWidgets()`, `if()`, `getWidgetsToSet()`, `addWidgetsToSet()`, `getWidgetsToSolve()`, `for()`, `getWidgetsToSolveTraversal()`, `updateUnresolvedWidgets()`, `updateResolvedDimension()`
- **`Guideline`** — 33 function(s): `allowedInBarrier()`, `getType()`, `Guideline()`, `for()`, `getRelativeBehaviour()`, `if()`, `getHead()`, `setOrientation()`, `getAnchor()`, `getOrientation()`, `setMinimumPosition()`, `setPositionRelaxed()`, `switch()`, `AssertionError()`, `getAnchors()`, `setGuidePercent()`, `setGuideBegin()`, `setGuideEnd()`, `getRelativePercent()`, `getRelativeBegin()`, `getRelativeEnd()`, `analyze()`, `addToSolver()`, `updateFromSolver()`, `setX()`, `setY()`, `setHeight()`, `setWidth()`, `setDrawOrigin()`, `inferRelativePercentPosition()`, `inferRelativeBeginPosition()`, `inferRelativeEndPosition()`, `cyclePosition()`
- **`Helper`** — 3 function(s): `add()`, `if()`, `removeAllIds()`
- **`Optimizer`** — 7 function(s): `checkMatchParent()`, `if()`, `optimizableMatchConstraint()`, `analyze()`, `applyChainOptimized()`, `while()`, `setOptimizedWidget()`
- **`Rectangle`** — 7 function(s): `setBounds()`, `grow()`, `intersects()`, `contains()`, `getCenterX()`, `return()`, `getCenterY()`
- **`ResolutionAnchor`** — 15 function(s): `sType()`, `ResolutionAnchor()`, `remove()`, `if()`, `resolve()`, `toString()`, `invalidate()`, `didResolve()`, `setType()`, `reset()`, `update()`, `dependsOn()`, `setOpposite()`, `addResolvedValue()`, `getResolvedValue()`
- **`ResolutionDimension`** — 6 function(s): `reset()`, `resolve()`, `if()`, `invalidate()`, `didResolve()`, `remove()`
- **`ResolutionNode`** — 10 function(s): `remove()`, `resolve()`, `addDependent()`, `reset()`, `invalidate()`, `while()`, `invalidateAnchors()`, `if()`, `didResolve()`, `isResolved()`
- **`Snapshot`** — 6 function(s): `Connection()`, `updateFrom()`, `if()`, `applyTo()`, `Snapshot()`, `for()`
- **`WidgetContainer`** — 18 function(s): `WidgetContainer()`, `super()`, `reset()`, `add()`, `if()`, `for()`, `remove()`, `getChildren()`, `getRootConstraintContainer()`, `while()`, `findWidget()`, `findWidgets()`, `getBounds()`, `setOffset()`, `updateDrawPosition()`, `layout()`, `resetSolverVariables()`, `removeAllChildren()`

</details>

### Package `androidx.constraintlayout.widget`  (9 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `Barrier` | class | ConstraintHelper | 93 | 20 |
| `ConstraintHelper` | class | View | 170 | 47 |
| `ConstraintLayout` | class | ViewGroup | 2,442 | 358 |
| `ConstraintSet` | class | — | 1,771 | 327 |
| `Constraints` | class | ViewGroup | 163 | 25 |
| `Group` | class | ConstraintHelper | 52 | 12 |
| `Guideline` | class | View | 62 | 18 |
| `Placeholder` | class | View | 142 | 32 |
| `R` | class | — | 247 | 4 |

<details>
<summary><b>Function list for <code>androidx.constraintlayout.widget</code></b> (click to expand)</summary>

- **`Barrier`** — 10 function(s): `Barrier()`, `super()`, `getType()`, `setType()`, `if()`, `init()`, `for()`, `validateParams()`, `setAllowsGoneWidget()`, `allowsGoneWidget()`
- **`ConstraintHelper`** — 18 function(s): `onDraw()`, `updatePostLayout()`, `updatePostMeasure()`, `ConstraintHelper()`, `super()`, `init()`, `if()`, `for()`, `setIds()`, `getReferencedIds()`, `setReferencedIds()`, `setTag()`, `onMeasure()`, `setMeasuredDimension()`, `validateParams()`, `addID()`, `while()`, `updatePreLayout()`
- **`ConstraintLayout`** — 52 function(s): `shouldDelayChildPressedState()`, `setDesignInformation()`, `if()`, `getDesignInformation()`, `ConstraintLayout()`, `super()`, `init()`, `setId()`, `for()`, `addView()`, `onViewAdded()`, `removeView()`, `onViewRemoved()`, `setMinWidth()`, `requestLayout()`, `setMinHeight()`, `getMinWidth()`, `getMinHeight()`, `setMaxWidth()`, `setMaxHeight()`, `getMaxWidth()`, `getMaxHeight()`, `updateHierarchy()`, `while()`, `setChildrenConstraints()`, `getTargetWidget()`, `return()`, `getViewWidget()`, `internalMeasureChildren()`, `updatePostMeasures()`, `internalMeasureDimensions()`, `fillMetrics()`, `onMeasure()`, `setSelfDimensionBehaviour()`, `solveLinearSystem()`, `setMeasuredDimension()`, `getLayoutParams()`, `onLayout()`, `setOptimizationLevel()`, `getOptimizationLevel()`, `generateLayoutParams()`, `LayoutParams()`, `generateDefaultLayoutParams()`, `checkLayoutParams()`, `setConstraintSet()`, `getViewById()`, `dispatchDraw()`, `reset()`, `Table()`, `switch()`, `validate()`, `resolveLayoutDirection()`
- **`ConstraintSet`** — 78 function(s): `sideToString()`, `switch()`, `setBarrierType()`, `getParameters()`, `get()`, `Constraint()`, `m2clone()`, `if()`, `fillFromConstraints()`, `fillFrom()`, `applyTo()`, `clone()`, `for()`, `RuntimeException()`, `applyToInternal()`, `while()`, `center()`, `IllegalArgumentException()`, `connect()`, `centerHorizontally()`, `centerHorizontallyRtl()`, `centerVertically()`, `createVerticalChain()`, `createHorizontalChain()`, `createHorizontalChainRtl()`, `clear()`, `setMargin()`, `setGoneMargin()`, `setHorizontalBias()`, `setVerticalBias()`, `setDimensionRatio()`, `setVisibility()`, `setAlpha()`, `getApplyElevation()`, `setApplyElevation()`, `setElevation()`, `setRotation()`, `setRotationX()`, `setRotationY()`, `setScaleX()`, `setScaleY()`, `setTransformPivotX()`, `setTransformPivotY()`, `setTransformPivot()`, `setTranslationX()`, `setTranslationY()`, `setTranslation()`, `setTranslationZ()`, `constrainHeight()`, `constrainWidth()`, `constrainCircle()`, `constrainMaxHeight()`, `constrainMaxWidth()`, `constrainMinHeight()`, `constrainMinWidth()`, `constrainPercentWidth()`, `constrainPercentHeight()`, `constrainDefaultHeight()`, `constrainDefaultWidth()`, `setHorizontalWeight()`, `setVerticalWeight()`, `setHorizontalChainStyle()`, `setVerticalChainStyle()`, `addToHorizontalChain()`, `addToHorizontalChainRTL()`, `addToVerticalChain()`, `removeFromVerticalChain()`, `removeFromHorizontalChain()`, `create()`, `createBarrier()`, `setGuidelineBegin()`, `setGuidelineEnd()`, `setGuidelinePercent()`, `load()`, `lookupID()`, `fillFromAttributeList()`, `populateConstraint()`, `convertReferenceString()`
- **`Constraints`** — 10 function(s): `onLayout()`, `Constraints()`, `super()`, `init()`, `generateLayoutParams()`, `LayoutParams()`, `for()`, `if()`, `generateDefaultLayoutParams()`, `getConstraintSet()`
- **`Group`** — 7 function(s): `Group()`, `super()`, `init()`, `updatePreLayout()`, `for()`, `if()`, `updatePostLayout()`
- **`Guideline`** — 10 function(s): `draw()`, `setVisibility()`, `Guideline()`, `super()`, `onMeasure()`, `setMeasuredDimension()`, `setGuidelineBegin()`, `setLayoutParams()`, `setGuidelineEnd()`, `setGuidelinePercent()`
- **`Placeholder`** — 13 function(s): `Placeholder()`, `super()`, `init()`, `if()`, `for()`, `setEmptyVisibility()`, `getEmptyVisibility()`, `getContent()`, `onDraw()`, `updatePreLayout()`, `setVisibility()`, `setContentId()`, `updatePostMeasure()`
- **`R`** — 4 function(s): `R()`, `attr()`, `id()`, `styleable()`

</details>

### Package `androidx.coordinatorlayout`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 237 | 11 |

<details>
<summary><b>Function list for <code>androidx.coordinatorlayout</code></b> (click to expand)</summary>

- **`R`** — 11 function(s): `R()`, `attr()`, `color()`, `dimen()`, `drawable()`, `id()`, `integer()`, `layout()`, `string()`, `style()`, `styleable()`

</details>

### Package `androidx.coordinatorlayout.widget`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CoordinatorLayout` | class | ViewGroup implements NestedScrollingParent2 | 2,023 | 490 |
| `DirectedAcyclicGraph` | class | — | 131 | 32 |
| `ViewGroupUtils` | class | — | 57 | 11 |

<details>
<summary><b>Function list for <code>androidx.coordinatorlayout.widget</code></b> (click to expand)</summary>

- **`CoordinatorLayout`** — 143 function(s): `getBehavior()`, `clamp()`, `resolveAnchoredChildGravity()`, `if()`, `resolveGravity()`, `return()`, `resolveKeylineGravity()`, `acquireTempRect()`, `releaseTempRect()`, `CoordinatorLayout()`, `this()`, `super()`, `for()`, `setupForInsets()`, `setOnHierarchyChangeListener()`, `onAttachedToWindow()`, `resetTouchBehaviors()`, `getViewTreeObserver()`, `onDetachedFromWindow()`, `onStopNestedScroll()`, `setStatusBarBackground()`, `getStatusBarBackground()`, `drawableStateChanged()`, `invalidate()`, `verifyDrawable()`, `setVisibility()`, `setStatusBarBackgroundResource()`, `setStatusBarBackgroundColor()`, `setWindowInsets()`, `setWillNotDraw()`, `requestLayout()`, `getLastWindowInsets()`, `getTopSortedChildren()`, `performIntercept()`, `switch()`, `onInterceptTouchEvent()`, `onTouchEvent()`, `requestDisallowInterceptTouchEvent()`, `getKeyline()`, `parseBehavior()`, `RuntimeException()`, `getResolvedLayoutParams()`, `prepareChildren()`, `getDescendantRect()`, `getSuggestedMinimumWidth()`, `getSuggestedMinimumHeight()`, `onMeasureChild()`, `measureChildWithMargins()`, `onMeasure()`, `ensurePreDrawListener()`, `while()`, `setMeasuredDimension()`, `dispatchApplyWindowInsetsToBehaviors()`, `onLayoutChild()`, `IllegalStateException()`, `layoutChildWithAnchor()`, `layoutChildWithKeyline()`, `layoutChild()`, `onLayout()`, `onDraw()`, `setFitsSystemWindows()`, `recordLastChildRect()`, `getLastChildRect()`, `getChildRect()`, `getDesiredAnchoredChildRectWithoutConstraints()`, `constrainChildRect()`, `getDesiredAnchoredChildRect()`, `drawChild()`, `onChildViewsChanged()`, `offsetChildToAnchor()`, `offsetChildByInset()`, `IllegalArgumentException()`, `setInsetOffsetY()`, `setInsetOffsetX()`, `dispatchDependentViewsChanged()`, `getDependencies()`, `getDependents()`, `getDependencySortedChildren()`, `addPreDrawListener()`, `removePreDrawListener()`, `hasDependencies()`, `isPointInChildBounds()`, `doViewsOverlap()`, `generateLayoutParams()`, `LayoutParams()`, `generateDefaultLayoutParams()`, `checkLayoutParams()`, `onStartNestedScroll()`, `onNestedScrollAccepted()`, `onNestedScroll()`, `onNestedPreScroll()`, `onNestedFling()`, `onNestedPreFling()`, `getNestedScrollAxes()`, `OnPreDrawListener()`, `onPreDraw()`, `ViewElevationComparator()`, `compare()`, `getInsetDodgeRect()`, `getScrimColor()`, `getScrimOpacity()`, `layoutDependsOn()`, `onApplyWindowInsets()`, `onAttachedToLayoutParams()`, `onDependentViewChanged()`, `onDependentViewRemoved()`, `onDetachedFromLayoutParams()`, `onRequestChildRectangleOnScreen()`, `onRestoreInstanceState()`, `Behavior()`, `blocksInteractionBelow()`, `setTag()`, `getTag()`, `onSaveInstanceState()`, `getAnchorId()`, `setAnchorId()`, `invalidateAnchor()`, `setBehavior()`, `setLastChildRect()`, `checkAnchorChanged()`, `didBlockInteraction()`, `isBlockingInteractionBelow()`, `resetTouchBehaviorTracking()`, `resetNestedScroll()`, `setNestedScrollAccepted()`, `isNestedScrollAccepted()`, `getChangedAfterNestedScroll()`, `setChangedAfterNestedScroll()`, `resetChangedAfterNestedScroll()`, `dependsOn()`, `findAnchorView()`, `resolveAnchorView()`, `verifyAnchorView()`, `shouldDodge()`, `HierarchyChangeListener()`, `onChildViewAdded()`, `onChildViewRemoved()`, `requestChildRectangleOnScreen()`, `setSystemUiVisibility()`, `createFromParcel()`, `SavedState()`, `newArray()`, `writeToParcel()`
- **`DirectedAcyclicGraph`** — 16 function(s): `addNode()`, `if()`, `contains()`, `addEdge()`, `IllegalArgumentException()`, `getIncomingEdges()`, `getOutgoingEdges()`, `for()`, `hasOutgoingEdges()`, `clear()`, `poolList()`, `getSortedList()`, `dfs()`, `RuntimeException()`, `size()`, `getEmptyList()`
- **`ViewGroupUtils`** — 5 function(s): `offsetDescendantRect()`, `if()`, `offsetDescendantMatrix()`, `getDescendantRect()`, `ViewGroupUtils()`

</details>

### Package `androidx.core`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 209 | 11 |

<details>
<summary><b>Function list for <code>androidx.core</code></b> (click to expand)</summary>

- **`R`** — 11 function(s): `R()`, `attr()`, `color()`, `dimen()`, `drawable()`, `id()`, `integer()`, `layout()`, `string()`, `style()`, `styleable()`

</details>

### Package `androidx.core.accessibilityservice`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AccessibilityServiceInfoCompat` | class | — | 114 | 20 |

<details>
<summary><b>Function list for <code>androidx.core.accessibilityservice</code></b> (click to expand)</summary>

- **`AccessibilityServiceInfoCompat`** — 9 function(s): `capabilityToString()`, `if()`, `switch()`, `flagToString()`, `AccessibilityServiceInfoCompat()`, `loadDescription()`, `feedbackTypeToString()`, `while()`, `getCapabilities()`

</details>

### Package `androidx.core.app`  (26 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ActivityCompat` | class | ContextCompat | 245 | 52 |
| `ActivityManagerCompat` | class | — | 19 | 3 |
| `ActivityOptionsCompat` | class | ActivityOptionsCompat | 159 | 49 |
| `AlarmManagerCompat` | class | — | 45 | 11 |
| `AppComponentFactory` | class | android.app.AppComponentFactory | 87 | 25 |
| `AppLaunchChecker` | class | — | 34 | 5 |
| `AppOpsManagerCompat` | class | — | 55 | 15 |
| `BundleCompat` | class | — | 87 | 13 |
| `ComponentActivity` | class | Activity implements LifecycleOwner, KeyEventDispatcher.Component | 83 | 11 |
| `CoreComponentFactory` | class | android.app.AppComponentFactory | 55 | 13 |
| `FrameMetricsAggregator` | class | FrameMetricsBaseImpl | 228 | 42 |
| `JobIntentService` | class | Service | 450 | 103 |
| `NavUtils` | class | — | 122 | 30 |
| `NotificationBuilderWithBuilderAccessor` | class | — | 11 | 1 |
| `NotificationCompat` | class | Style | 2,673 | 531 |
| `NotificationCompatBuilder` | class | NotificationBuilderWithBuilderAccessor | 289 | 77 |
| `NotificationCompatExtras` | class | — | 15 | 1 |
| `NotificationCompatJellybean` | class | — | 289 | 48 |
| `NotificationCompatSideChannelService` | class | Service | 75 | 17 |
| `NotificationManagerCompat` | class | Handler.Callback, ServiceConnection | 471 | 99 |
| `Person` | class | — | 179 | 24 |
| `RemoteInput` | class | — | 281 | 62 |
| `ServiceCompat` | class | — | 33 | 3 |
| `ShareCompat` | class | — | 449 | 105 |
| `SharedElementCallback` | class | — | 138 | 21 |
| `TaskStackBuilder` | class | Iterable<Intent> | 170 | 43 |

<details>
<summary><b>Function list for <code>androidx.core.app</code></b> (click to expand)</summary>

- **`ActivityCompat`** — 35 function(s): `onRequestPermissionsResult()`, `onActivityResult()`, `requestPermissions()`, `validateRequestPermissionsRequestCode()`, `ActivityCompat()`, `setPermissionCompatDelegate()`, `getPermissionCompatDelegate()`, `invalidateOptionsMenu()`, `startActivityForResult()`, `if()`, `startIntentSenderForResult()`, `finishAffinity()`, `finishAfterTransition()`, `getReferrer()`, `requireViewById()`, `return()`, `IllegalArgumentException()`, `setEnterSharedElementCallback()`, `setExitSharedElementCallback()`, `postponeEnterTransition()`, `startPostponedEnterTransition()`, `Handler()`, `run()`, `for()`, `shouldShowRequestPermissionRationale()`, `requestDragAndDropPermissions()`, `SharedElementCallback21Impl()`, `onSharedElementStart()`, `onSharedElementEnd()`, `onRejectSharedElements()`, `onMapSharedElements()`, `onCaptureSharedElementSnapshot()`, `onCreateSnapshotView()`, `onSharedElementsArrived()`, `onSharedElementsReady()`
- **`ActivityManagerCompat`** — 3 function(s): `ActivityManagerCompat()`, `isLowRamDevice()`, `if()`
- **`ActivityOptionsCompat`** — 16 function(s): `getLaunchBounds()`, `requestUsageTimeReport()`, `setLaunchBounds()`, `toBundle()`, `update()`, `makeCustomAnimation()`, `if()`, `ActivityOptionsCompatImpl()`, `ActivityOptionsCompat()`, `makeScaleUpAnimation()`, `makeClipRevealAnimation()`, `makeThumbnailScaleUpAnimation()`, `makeSceneTransitionAnimation()`, `for()`, `makeTaskLaunchBehind()`, `makeBasic()`
- **`AlarmManagerCompat`** — 6 function(s): `setAlarmClock()`, `if()`, `setExact()`, `setAndAllowWhileIdle()`, `setExactAndAllowWhileIdle()`, `AlarmManagerCompat()`
- **`AppComponentFactory`** — 12 function(s): `instantiateActivity()`, `return()`, `instantiateApplication()`, `instantiateReceiver()`, `instantiateProvider()`, `instantiateService()`, `instantiateApplicationCompat()`, `RuntimeException()`, `instantiateActivityCompat()`, `instantiateReceiverCompat()`, `instantiateServiceCompat()`, `instantiateProviderCompat()`
- **`AppLaunchChecker`** — 4 function(s): `hasStartedFromLauncher()`, `onActivityCreate()`, `if()`, `AppLaunchChecker()`
- **`AppOpsManagerCompat`** — 8 function(s): `AppOpsManagerCompat()`, `permissionToOp()`, `if()`, `noteOp()`, `return()`, `noteOpNoThrow()`, `noteProxyOp()`, `noteProxyOpNoThrow()`
- **`BundleCompat`** — 6 function(s): `BundleCompatBaseImpl()`, `getBinder()`, `if()`, `return()`, `putBinder()`, `BundleCompat()`
- **`ComponentActivity`** — 10 function(s): `putExtraData()`, `onCreate()`, `onSaveInstanceState()`, `getExtraData()`, `return()`, `getLifecycle()`, `superDispatchKeyEvent()`, `dispatchKeyShortcutEvent()`, `if()`, `dispatchKeyEvent()`
- **`CoreComponentFactory`** — 8 function(s): `getWrapper()`, `instantiateActivity()`, `return()`, `instantiateApplication()`, `instantiateReceiver()`, `instantiateProvider()`, `instantiateService()`, `checkCompatWrapper()`
- **`FrameMetricsAggregator`** — 14 function(s): `FrameMetricsAggregator()`, `this()`, `if()`, `add()`, `remove()`, `stop()`, `reset()`, `getMetrics()`, `FrameMetricsBaseImpl()`, `onFrameMetricsAvailable()`, `FrameMetricsApi24Impl()`, `addDurationItem()`, `for()`, `while()`
- **`JobIntentService`** — 40 function(s): `compatGetBinder()`, `dequeueWork()`, `complete()`, `getIntent()`, `onHandleWork()`, `onStopCurrentWork()`, `enqueueWork()`, `serviceProcessingFinished()`, `serviceProcessingStarted()`, `serviceStartReceived()`, `WorkEnqueuer()`, `ensureJobId()`, `if()`, `IllegalArgumentException()`, `CompatWorkEnqueuer()`, `super()`, `synchronized()`, `WrapperWorkItem()`, `JobServiceEngineImpl()`, `getBinder()`, `onStartJob()`, `onStopJob()`, `JobWorkEnqueuer()`, `CompatWorkItem()`, `CommandProcessor()`, `doInBackground()`, `while()`, `onCancelled()`, `onPostExecute()`, `JobIntentService()`, `onCreate()`, `onStartCommand()`, `ensureProcessorRunningLocked()`, `onBind()`, `onDestroy()`, `getWorkEnqueuer()`, `setInterruptIfStopped()`, `isStopped()`, `doStopCurrentWork()`, `processorFinished()`
- **`NavUtils`** — 10 function(s): `shouldUpRecreateTask()`, `if()`, `return()`, `navigateUpFromSameTask()`, `IllegalArgumentException()`, `navigateUpTo()`, `getParentActivityIntent()`, `Intent()`, `getParentActivityName()`, `NavUtils()`
- **`NotificationBuilderWithBuilderAccessor`** — 1 function(s): `getBuilder()`
- **`NotificationCompat`** — 226 function(s): `extend()`, `Builder()`, `this()`, `setWhen()`, `setShowWhen()`, `setUsesChronometer()`, `setSmallIcon()`, `setContentTitle()`, `setContentText()`, `setSubText()`, `setRemoteInputHistory()`, `setNumber()`, `setContentInfo()`, `setProgress()`, `setContent()`, `setContentIntent()`, `setDeleteIntent()`, `setFullScreenIntent()`, `setFlag()`, `setTicker()`, `setLargeIcon()`, `reduceLargeIconSize()`, `if()`, `setSound()`, `setVibrate()`, `setLights()`, `setOngoing()`, `setColorized()`, `setOnlyAlertOnce()`, `setAutoCancel()`, `setLocalOnly()`, `setCategory()`, `setDefaults()`, `setPriority()`, `addPerson()`, `setGroup()`, `setGroupSummary()`, `setSortKey()`, `addExtras()`, `setExtras()`, `getExtras()`, `addAction()`, `addInvisibleAction()`, `setStyle()`, `setColor()`, `setVisibility()`, `setPublicVersion()`, `setCustomContentView()`, `setCustomBigContentView()`, `setCustomHeadsUpContentView()`, `setChannelId()`, `setTimeoutAfter()`, `setShortcutId()`, `setBadgeIconType()`, `setGroupAlertBehavior()`, `getNotification()`, `build()`, `NotificationCompatBuilder()`, `limitCharSequenceLength()`, `return()`, `getContentView()`, `getBigContentView()`, `getHeadsUpContentView()`, `getWhenIfShowing()`, `getPriority()`, `getColor()`, `constrain()`, `addCompatExtras()`, `apply()`, `makeBigContentView()`, `makeContentView()`, `makeHeadsUpContentView()`, `restoreFromCompatExtras()`, `setBuilder()`, `applyStandardTemplate()`, `createColoredBitmap()`, `createIconWithBackground()`, `buildIntoRemoteViews()`, `hideNormalContent()`, `calculateTopPadding()`, `BigPictureStyle()`, `setBigContentTitle()`, `setSummaryText()`, `bigPicture()`, `bigLargeIcon()`, `BigTextStyle()`, `bigText()`, `MessagingStyle()`, `IllegalArgumentException()`, `getUserDisplayName()`, `getUser()`, `setConversationTitle()`, `getConversationTitle()`, `addMessage()`, `getMessages()`, `setGroupConversation()`, `isGroupConversation()`, `extractMessagingStyleFromNotification()`, `for()`, `findLatestIncomingMessage()`, `hasMessagesWithoutSender()`, `makeMessageLine()`, `makeFontColorSpan()`, `TextAppearanceSpan()`, `Message()`, `setData()`, `getText()`, `getTimestamp()`, `getSender()`, `getPerson()`, `getDataMimeType()`, `getDataUri()`, `toBundle()`, `getBundleArrayForMessages()`, `getMessagesFromBundleArray()`, `getMessageFromBundle()`, `InboxStyle()`, `addLine()`, `while()`, `createRemoteViews()`, `generateActionButton()`, `Action()`, `getIcon()`, `getTitle()`, `getActionIntent()`, `getAllowGeneratedReplies()`, `getRemoteInputs()`, `getSemanticAction()`, `getDataOnlyRemoteInputs()`, `getShowsUserInterface()`, `addRemoteInput()`, `setAllowGeneratedReplies()`, `setSemanticAction()`, `setShowsUserInterface()`, `WearableExtender()`, `m3clone()`, `setAvailableOffline()`, `isAvailableOffline()`, `setInProgressLabel()`, `getInProgressLabel()`, `setConfirmLabel()`, `getConfirmLabel()`, `setCancelLabel()`, `getCancelLabel()`, `setHintLaunchesActivity()`, `getHintLaunchesActivity()`, `setHintDisplayActionInline()`, `getHintDisplayActionInline()`, `getActionFromActionCompat()`, `m4clone()`, `addActions()`, `clearActions()`, `getActions()`, `setDisplayIntent()`, `getDisplayIntent()`, `addPage()`, `addPages()`, `clearPages()`, `getPages()`, `setBackground()`, `getBackground()`, `setContentIcon()`, `getContentIcon()`, `setContentIconGravity()`, `getContentIconGravity()`, `setContentAction()`, `getContentAction()`, `setGravity()`, `getGravity()`, `setCustomSizePreset()`, `getCustomSizePreset()`, `setCustomContentHeight()`, `getCustomContentHeight()`, `setStartScrollBottom()`, `getStartScrollBottom()`, `setContentIntentAvailableOffline()`, `getContentIntentAvailableOffline()`, `setHintHideIcon()`, `getHintHideIcon()`, `setHintShowBackgroundOnly()`, `getHintShowBackgroundOnly()`, `setHintAvoidBackgroundClipping()`, `getHintAvoidBackgroundClipping()`, `setHintScreenTimeout()`, `getHintScreenTimeout()`, `setHintAmbientBigPicture()`, `getHintAmbientBigPicture()`, `setHintContentIntentLaunchesActivity()`, `getHintContentIntentLaunchesActivity()`, `setDismissalId()`, `getDismissalId()`, `setBridgeTag()`, `getBridgeTag()`, `CarExtender()`, `getUnreadConversationFromBundle()`, `UnreadConversation()`, `getBundleForUnreadConversation()`, `getLargeIcon()`, `setUnreadConversation()`, `getUnreadConversation()`, `getRemoteInput()`, `getReplyPendingIntent()`, `getReadPendingIntent()`, `getParticipants()`, `getParticipant()`, `getLatestTimestamp()`, `setReplyAction()`, `setReadPendingIntent()`, `setLatestTimestamp()`, `getNotificationArrayFromBundle()`, `getActionCount()`, `getAction()`, `getActionCompatFromAction()`, `getInvisibleActions()`, `getContentTitle()`, `getCategory()`, `getLocalOnly()`, `getGroup()`, `isGroupSummary()`, `getSortKey()`, `getChannelId()`, `getTimeoutAfter()`, `getBadgeIconType()`, `getShortcutId()`, `getGroupAlertBehavior()`, `NotificationCompat()`
- **`NotificationCompatBuilder`** — 9 function(s): `NotificationCompatBuilder()`, `if()`, `while()`, `addAction()`, `for()`, `getBuilder()`, `build()`, `buildInternal()`, `removeSoundAndVibration()`
- **`NotificationCompatExtras`** — 1 function(s): `NotificationCompatExtras()`
- **`NotificationCompatJellybean`** — 22 function(s): `buildActionExtrasMap()`, `for()`, `if()`, `getExtras()`, `synchronized()`, `readAction()`, `writeActionAndGetExtras()`, `getActionCount()`, `getAction()`, `getActionObjectsLocked()`, `return()`, `ensureActionReflectionReadyLocked()`, `getActionFromBundle()`, `getBundleForAction()`, `fromBundle()`, `while()`, `RemoteInput()`, `toBundle()`, `fromBundleArray()`, `toBundleArray()`, `getBundleArrayFromBundle()`, `NotificationCompatJellybean()`
- **`NotificationCompatSideChannelService`** — 10 function(s): `cancel()`, `cancelAll()`, `notify()`, `onBind()`, `if()`, `NotificationSideChannelStub()`, `restoreCallingIdentity()`, `checkPermission()`, `for()`, `SecurityException()`
- **`NotificationManagerCompat`** — 36 function(s): `send()`, `from()`, `NotificationManagerCompat()`, `cancel()`, `if()`, `pushSideChannelQueue()`, `cancelAll()`, `notify()`, `areNotificationsEnabled()`, `return()`, `getImportance()`, `getEnabledListenerPackages()`, `synchronized()`, `for()`, `useSideChannelForNotification()`, `SideChannelManager()`, `queueTask()`, `handleMessage()`, `switch()`, `handleQueueTask()`, `handleServiceConnected()`, `handleServiceDisconnected()`, `handleRetryListenerQueue()`, `updateListenerMap()`, `processListenerQueue()`, `ensureServiceUnbound()`, `onServiceConnected()`, `onServiceDisconnected()`, `while()`, `ensureServiceBound()`, `scheduleListenerRetry()`, `ListenerRecord()`, `ServiceConnectedEvent()`, `NotifyTask()`, `toString()`, `CancelTask()`
- **`Person`** — 20 function(s): `fromBundle()`, `Builder()`, `fromAndroidPerson()`, `toBundle()`, `toBuilder()`, `toAndroidPerson()`, `getName()`, `getIcon()`, `getUri()`, `getKey()`, `isBot()`, `isImportant()`, `setName()`, `setIcon()`, `setUri()`, `setKey()`, `setBot()`, `setImportant()`, `build()`, `Person()`
- **`RemoteInput`** — 26 function(s): `RemoteInput()`, `getResultKey()`, `getLabel()`, `getChoices()`, `getAllowedDataTypes()`, `isDataOnly()`, `return()`, `getAllowFreeFormInput()`, `getExtras()`, `Builder()`, `if()`, `IllegalArgumentException()`, `setLabel()`, `setChoices()`, `setAllowDataType()`, `setAllowFreeFormInput()`, `addExtras()`, `build()`, `getDataResultsFromIntent()`, `for()`, `getResultsFromIntent()`, `addResultsToIntent()`, `addDataResultToIntent()`, `getExtraResultsKeyForData()`, `fromCompat()`, `getClipDataIntentFromIntent()`
- **`ServiceCompat`** — 3 function(s): `ServiceCompat()`, `stopForeground()`, `if()`
- **`ShareCompat`** — 46 function(s): `ShareCompat()`, `getCallingPackage()`, `getCallingActivity()`, `configureMenuItem()`, `if()`, `IllegalArgumentException()`, `from()`, `IntentBuilder()`, `getIntent()`, `combineArrayExtra()`, `getActivity()`, `createChooserIntent()`, `startChooser()`, `setChooserTitle()`, `setType()`, `setText()`, `setHtmlText()`, `setStream()`, `addStream()`, `setEmailTo()`, `addEmailTo()`, `setEmailCc()`, `addEmailCc()`, `setEmailBcc()`, `addEmailBcc()`, `setSubject()`, `IntentReader()`, `isShareIntent()`, `isSingleShare()`, `isMultipleShare()`, `getType()`, `getText()`, `getHtmlText()`, `withinStyle()`, `while()`, `getStream()`, `return()`, `IndexOutOfBoundsException()`, `getStreamCount()`, `getEmailTo()`, `getEmailCc()`, `getEmailBcc()`, `getSubject()`, `getCallingActivityIcon()`, `getCallingApplicationIcon()`, `getCallingApplicationLabel()`
- **`SharedElementCallback`** — 11 function(s): `onSharedElementsReady()`, `onMapSharedElements()`, `onRejectSharedElements()`, `onSharedElementEnd()`, `onSharedElementStart()`, `onCaptureSharedElementSnapshot()`, `if()`, `createDrawableBitmap()`, `return()`, `onCreateSnapshotView()`, `onSharedElementsArrived()`
- **`TaskStackBuilder`** — 19 function(s): `getSupportParentActivityIntent()`, `TaskStackBuilder()`, `create()`, `from()`, `addNextIntent()`, `addNextIntentWithParentStack()`, `if()`, `addParentStack()`, `while()`, `IllegalArgumentException()`, `getIntentCount()`, `getIntent()`, `editIntentAt()`, `iterator()`, `startActivities()`, `IllegalStateException()`, `getPendingIntent()`, `getIntents()`, `for()`

</details>

### Package `androidx.core.content`  (7 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ContentResolverCompat` | class | — | 38 | 6 |
| `ContextCompat` | class | — | 334 | 61 |
| `FileProvider` | class | ContentProvider | 310 | 68 |
| `IntentCompat` | class | — | 26 | 3 |
| `MimeTypeFilter` | class | — | 78 | 24 |
| `PermissionChecker` | class | — | 61 | 13 |
| `SharedPreferencesCompat` | class | — | 50 | 7 |

<details>
<summary><b>Function list for <code>androidx.core.content</code></b> (click to expand)</summary>

- **`ContentResolverCompat`** — 3 function(s): `ContentResolverCompat()`, `query()`, `if()`
- **`ContextCompat`** — 26 function(s): `startActivities()`, `if()`, `startActivity()`, `getDataDir()`, `File()`, `getObbDirs()`, `getExternalFilesDirs()`, `getExternalCacheDirs()`, `buildPath()`, `for()`, `getDrawable()`, `synchronized()`, `getColorStateList()`, `getColor()`, `checkSelfPermission()`, `IllegalArgumentException()`, `getNoBackupFilesDir()`, `createFilesDir()`, `getCodeCacheDir()`, `createDeviceProtectedStorageContext()`, `isDeviceProtectedStorage()`, `startForegroundService()`, `getSystemService()`, `return()`, `getSystemServiceName()`, `LegacyServiceMapHolder()`
- **`FileProvider`** — 24 function(s): `getFileForUri()`, `getUriForFile()`, `onCreate()`, `attachInfo()`, `if()`, `SecurityException()`, `getPathStrategy()`, `query()`, `for()`, `getType()`, `insert()`, `UnsupportedOperationException()`, `update()`, `delete()`, `openFile()`, `synchronized()`, `IllegalArgumentException()`, `parsePathStrategy()`, `while()`, `SimplePathStrategy()`, `addRoot()`, `modeToMode()`, `buildPath()`, `copyOf()`
- **`IntentCompat`** — 3 function(s): `IntentCompat()`, `makeMainSelectorActivity()`, `if()`
- **`MimeTypeFilter`** — 8 function(s): `MimeTypeFilter()`, `mimeTypeAgainstFilter()`, `if()`, `IllegalArgumentException()`, `matches()`, `for()`, `matchesMany()`, `return()`
- **`PermissionChecker`** — 6 function(s): `PermissionChecker()`, `checkPermission()`, `if()`, `checkSelfPermission()`, `checkCallingPermission()`, `checkCallingOrSelfPermission()`
- **`SharedPreferencesCompat`** — 6 function(s): `Helper()`, `apply()`, `EditorCompat()`, `getInstance()`, `if()`, `SharedPreferencesCompat()`

</details>

### Package `androidx.core.content.pm`  (5 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ActivityInfoCompat` | class | — | 13 | 1 |
| `PackageInfoCompat` | class | — | 19 | 3 |
| `PermissionInfoCompat` | class | — | 46 | 5 |
| `ShortcutInfoCompat` | class | — | 173 | 33 |
| `ShortcutManagerCompat` | class | — | 79 | 15 |

<details>
<summary><b>Function list for <code>androidx.core.content.pm</code></b> (click to expand)</summary>

- **`ActivityInfoCompat`** — 1 function(s): `ActivityInfoCompat()`
- **`PackageInfoCompat`** — 3 function(s): `getLongVersionCode()`, `if()`, `PackageInfoCompat()`
- **`PermissionInfoCompat`** — 4 function(s): `PermissionInfoCompat()`, `getProtection()`, `if()`, `getProtectionFlags()`
- **`ShortcutInfoCompat`** — 22 function(s): `toShortcutInfo()`, `if()`, `addToIntent()`, `getId()`, `getActivity()`, `getShortLabel()`, `getLongLabel()`, `getDisabledMessage()`, `getIntent()`, `getIntents()`, `return()`, `Builder()`, `setShortLabel()`, `setLongLabel()`, `setDisabledMessage()`, `setIntent()`, `setIntents()`, `setIcon()`, `setActivity()`, `setAlwaysBadged()`, `build()`, `IllegalArgumentException()`
- **`ShortcutManagerCompat`** — 8 function(s): `ShortcutManagerCompat()`, `isRequestPinShortcutSupported()`, `if()`, `return()`, `while()`, `requestPinShortcut()`, `onReceive()`, `createShortcutResultIntent()`

</details>

### Package `androidx.core.content.res`  (8 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ColorStateListInflaterCompat` | class | — | 120 | 24 |
| `ComplexColorCompat` | class | — | 131 | 29 |
| `ConfigurationHelper` | class | — | 19 | 3 |
| `FontResourcesParserCompat` | class | FamilyResourceEntry | 268 | 51 |
| `GradientColorInflaterCompat` | class | — | 168 | 33 |
| `GrowingArrayUtils` | class | — | 113 | 19 |
| `ResourcesCompat` | class | — | 193 | 42 |
| `TypedArrayUtils` | class | — | 133 | 25 |

<details>
<summary><b>Function list for <code>androidx.core.content.res</code></b> (click to expand)</summary>

- **`ColorStateListInflaterCompat`** — 12 function(s): `ColorStateListInflaterCompat()`, `createFromXml()`, `if()`, `XmlPullParserException()`, `createFromXmlInner()`, `inflate()`, `while()`, `for()`, `ColorStateList()`, `obtainAttributes()`, `modulateColorAlpha()`, `return()`
- **`ComplexColorCompat`** — 14 function(s): `ComplexColorCompat()`, `from()`, `getShader()`, `getColor()`, `setColor()`, `isGradient()`, `isStateful()`, `onStateChanged()`, `if()`, `willDraw()`, `inflate()`, `createFromXml()`, `XmlPullParserException()`, `switch()`
- **`ConfigurationHelper`** — 3 function(s): `ConfigurationHelper()`, `getDensityDpi()`, `if()`
- **`FontResourcesParserCompat`** — 27 function(s): `ProviderResourceEntry()`, `getRequest()`, `getFetchStrategy()`, `getTimeout()`, `FontFileResourceEntry()`, `getFileName()`, `getWeight()`, `isItalic()`, `getVariationSettings()`, `getTtcIndex()`, `getResourceId()`, `FontFamilyFilesResourceEntry()`, `getEntries()`, `parse()`, `if()`, `XmlPullParserException()`, `readFamilies()`, `readFamily()`, `skip()`, `while()`, `getType()`, `readCerts()`, `for()`, `toByteArrayList()`, `readFont()`, `switch()`, `FontResourcesParserCompat()`
- **`GradientColorInflaterCompat`** — 15 function(s): `GradientColorInflaterCompat()`, `createFromXml()`, `if()`, `XmlPullParserException()`, `createFromXmlInner()`, `switch()`, `RadialGradient()`, `SweepGradient()`, `LinearGradient()`, `inflateChildElements()`, `while()`, `ColorStops()`, `checkColors()`, `parseTileMode()`, `for()`
- **`GrowingArrayUtils`** — 5 function(s): `growSize()`, `if()`, `append()`, `insert()`, `GrowingArrayUtils()`
- **`ResourcesCompat`** — 13 function(s): `getDrawable()`, `if()`, `getDrawableForDensity()`, `getColor()`, `getColorStateList()`, `getFont()`, `loadFont()`, `onFontRetrievalFailed()`, `onFontRetrieved()`, `callbackSuccessAsync()`, `run()`, `callbackFailAsync()`, `ResourcesCompat()`
- **`TypedArrayUtils`** — 20 function(s): `hasAttribute()`, `getNamedFloat()`, `getNamedBoolean()`, `getNamedInt()`, `getNamedColor()`, `getNamedComplexColor()`, `if()`, `getNamedResourceId()`, `getNamedString()`, `peekNamedValue()`, `obtainAttributes()`, `getBoolean()`, `getDrawable()`, `getInt()`, `getResourceId()`, `getString()`, `getText()`, `getTextArray()`, `getAttr()`, `TypedArrayUtils()`

</details>

### Package `androidx.core.database`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CursorWindowCompat` | class | — | 24 | 7 |
| `DatabaseUtilsCompat` | class | — | 33 | 6 |

<details>
<summary><b>Function list for <code>androidx.core.database</code></b> (click to expand)</summary>

- **`CursorWindowCompat`** — 4 function(s): `CursorWindowCompat()`, `create()`, `if()`, `CursorWindow()`
- **`DatabaseUtilsCompat`** — 4 function(s): `DatabaseUtilsCompat()`, `concatenateWhere()`, `if()`, `appendSelectionArgs()`

</details>

### Package `androidx.core.database.sqlite`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `SQLiteCursorCompat` | class | — | 18 | 3 |

<details>
<summary><b>Function list for <code>androidx.core.database.sqlite</code></b> (click to expand)</summary>

- **`SQLiteCursorCompat`** — 3 function(s): `SQLiteCursorCompat()`, `setFillWindowForwardOnly()`, `if()`

</details>

### Package `androidx.core.graphics`  (13 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BitmapCompat` | class | — | 32 | 7 |
| `ColorUtils` | class | — | 337 | 72 |
| `PaintCompat` | class | — | 68 | 12 |
| `PathParser` | class | — | 665 | 76 |
| `PathSegment` | class | — | 58 | 11 |
| `PathUtils` | class | — | 44 | 6 |
| `TypefaceCompat` | class | — | 91 | 13 |
| `TypefaceCompatApi21Impl` | class | TypefaceCompatBaseImpl | 123 | 12 |
| `TypefaceCompatApi24Impl` | class | TypefaceCompatBaseImpl | 122 | 18 |
| `TypefaceCompatApi26Impl` | class | TypefaceCompatApi21Impl | 265 | 53 |
| `TypefaceCompatApi28Impl` | class | TypefaceCompatApi26Impl | 37 | 4 |
| `TypefaceCompatBaseImpl` | class | — | 150 | 23 |
| `TypefaceCompatUtil` | class | — | 242 | 29 |

<details>
<summary><b>Function list for <code>androidx.core.graphics</code></b> (click to expand)</summary>

- **`BitmapCompat`** — 5 function(s): `hasMipMap()`, `if()`, `setHasMipMap()`, `getAllocationByteCount()`, `BitmapCompat()`
- **`ColorUtils`** — 32 function(s): `constrain()`, `ColorUtils()`, `compositeColors()`, `if()`, `IllegalArgumentException()`, `for()`, `compositeAlpha()`, `compositeComponent()`, `return()`, `calculateLuminance()`, `colorToXYZ()`, `calculateContrast()`, `calculateMinimumAlpha()`, `RGBToHSL()`, `colorToHSL()`, `HSLToColor()`, `switch()`, `setAlphaComponent()`, `colorToLAB()`, `RGBToLAB()`, `RGBToXYZ()`, `XYZToLAB()`, `LABToXYZ()`, `XYZToColor()`, `LABToColor()`, `distanceEuclidean()`, `pivotXyzComponent()`, `blendARGB()`, `blendHSL()`, `blendLAB()`, `circularInterpolate()`, `getTempDouble3Array()`
- **`PaintCompat`** — 5 function(s): `hasGlyph()`, `if()`, `while()`, `obtainEmptyRects()`, `PaintCompat()`
- **`PathParser`** — 26 function(s): `copyOfRange()`, `if()`, `IllegalArgumentException()`, `ArrayIndexOutOfBoundsException()`, `createPathFromPathData()`, `RuntimeException()`, `createNodesFromPathData()`, `while()`, `addNode()`, `return()`, `deepCopyNodes()`, `for()`, `canMorph()`, `updateNodes()`, `nextStart()`, `ExtractFloatResult()`, `getFloats()`, `extract()`, `switch()`, `PathDataNode()`, `nodesToPath()`, `addCommand()`, `interpolatePathDataNode()`, `drawArc()`, `arcToBezier()`, `PathParser()`
- **`PathSegment`** — 10 function(s): `PathSegment()`, `getStart()`, `getStartFraction()`, `getEnd()`, `getEndFraction()`, `equals()`, `if()`, `hashCode()`, `return()`, `toString()`
- **`PathUtils`** — 4 function(s): `flatten()`, `for()`, `if()`, `PathUtils()`
- **`TypefaceCompat`** — 7 function(s): `if()`, `TypefaceCompat()`, `findFromCache()`, `createResourceUid()`, `createFromResourcesFamilyXml()`, `createFromResourcesFontFile()`, `createFromFontInfo()`
- **`TypefaceCompatApi21Impl`** — 4 function(s): `getFile()`, `if()`, `File()`, `createFromFontInfo()`
- **`TypefaceCompatApi24Impl`** — 10 function(s): `isUsable()`, `if()`, `newFamily()`, `RuntimeException()`, `addFontWeightStyle()`, `return()`, `createFromFamiliesWithDefault()`, `createFromFontInfo()`, `for()`, `createFromFontFamilyFilesResourceEntry()`
- **`TypefaceCompatApi26Impl`** — 22 function(s): `TypefaceCompatApi26Impl()`, `isFontFamilyPrivateAPIAvailable()`, `if()`, `newFamily()`, `RuntimeException()`, `addFontFromAssetManager()`, `return()`, `addFontFromBuffer()`, `createFromFamiliesWithDefault()`, `freeze()`, `abortCreation()`, `createFromFontFamilyFilesResourceEntry()`, `for()`, `createFromFontInfo()`, `createFromResourcesFontFile()`, `obtainFontFamily()`, `obtainFontFamilyCtor()`, `obtainAddFontFromAssetManagerMethod()`, `obtainAddFontFromBufferMethod()`, `obtainFreezeMethod()`, `obtainAbortCreationMethod()`, `obtainCreateFromFamiliesWithDefaultMethod()`
- **`TypefaceCompatApi28Impl`** — 4 function(s): `createFromFamiliesWithDefault()`, `return()`, `RuntimeException()`, `obtainCreateFromFamiliesWithDefaultMethod()`
- **`TypefaceCompatBaseImpl`** — 12 function(s): `getWeight()`, `isItalic()`, `findBestFont()`, `for()`, `if()`, `findBestInfo()`, `return()`, `createFromInputStream()`, `createFromFontInfo()`, `findBestEntry()`, `createFromFontFamilyFilesResourceEntry()`, `createFromResourcesFontFile()`
- **`TypefaceCompatUtil`** — 9 function(s): `TypefaceCompatUtil()`, `getTempFile()`, `for()`, `if()`, `mmap()`, `copyToDirectBuffer()`, `copyToFile()`, `while()`, `closeQuietly()`

</details>

### Package `androidx.core.graphics.drawable`  (10 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `DrawableCompat` | class | — | 220 | 50 |
| `IconCompat` | class | CustomVersionedParcelable | 778 | 147 |
| `IconCompatParcelizer` | class | — | 35 | 2 |
| `RoundedBitmapDrawable` | class | Drawable | 262 | 71 |
| `RoundedBitmapDrawable21` | class | RoundedBitmapDrawable | 42 | 9 |
| `RoundedBitmapDrawableFactory` | class | RoundedBitmapDrawable | 74 | 16 |
| `TintAwareDrawable` | class | — | 17 | 3 |
| `WrappedDrawable` | class | — | 13 | 2 |
| `WrappedDrawableApi14` | class | Drawable implements Drawable.Callback, WrappedDrawable, TintAwareDrawable | 338 | 83 |
| `WrappedDrawableApi21` | class | WrappedDrawableApi14 | 145 | 32 |

<details>
<summary><b>Function list for <code>androidx.core.graphics.drawable</code></b> (click to expand)</summary>

- **`DrawableCompat`** — 22 function(s): `jumpToCurrentState()`, `setAutoMirrored()`, `if()`, `isAutoMirrored()`, `setHotspot()`, `setHotspotBounds()`, `setTint()`, `setTintList()`, `setTintMode()`, `getAlpha()`, `applyTheme()`, `canApplyTheme()`, `getColorFilter()`, `clearColorFilter()`, `for()`, `inflate()`, `wrap()`, `unwrap()`, `setLayoutDirection()`, `getLayoutDirection()`, `return()`, `DrawableCompat()`
- **`IconCompat`** — 33 function(s): `typeToString()`, `switch()`, `createWithResource()`, `if()`, `IllegalArgumentException()`, `createWithBitmap()`, `createWithAdaptiveBitmap()`, `createWithData()`, `createWithContentUri()`, `IconCompat()`, `getType()`, `getResPackage()`, `IllegalStateException()`, `return()`, `getResId()`, `getUri()`, `setTint()`, `setTintList()`, `setTintMode()`, `toIcon()`, `checkResource()`, `loadDrawable()`, `loadDrawableInner()`, `BitmapDrawable()`, `getResources()`, `addToShortcutIntent()`, `toBundle()`, `toString()`, `onPreParceling()`, `onPostParceling()`, `createFromBundle()`, `createFromIcon()`, `createLegacyIconFromAdaptiveIcon()`
- **`IconCompatParcelizer`** — 2 function(s): `read()`, `write()`
- **`RoundedBitmapDrawable`** — 34 function(s): `isGreaterThanZero()`, `getPaint()`, `getBitmap()`, `computeBitmapSize()`, `setTargetDensity()`, `if()`, `invalidateSelf()`, `getGravity()`, `setGravity()`, `setMipMap()`, `UnsupportedOperationException()`, `hasMipMap()`, `setAntiAlias()`, `hasAntiAlias()`, `setFilterBitmap()`, `setDither()`, `gravityCompatApply()`, `updateDstRect()`, `draw()`, `setAlpha()`, `getAlpha()`, `setColorFilter()`, `getColorFilter()`, `setCircular()`, `updateCircularCornerRadius()`, `setCornerRadius()`, `isCircular()`, `onBoundsChange()`, `getCornerRadius()`, `getIntrinsicWidth()`, `getIntrinsicHeight()`, `getOpacity()`, `return()`, `RoundedBitmapDrawable()`
- **`RoundedBitmapDrawable21`** — 9 function(s): `RoundedBitmapDrawable21()`, `super()`, `getOutline()`, `updateDstRect()`, `setMipMap()`, `if()`, `invalidateSelf()`, `hasMipMap()`, `gravityCompatApply()`
- **`RoundedBitmapDrawableFactory`** — 10 function(s): `DefaultRoundedBitmapDrawable()`, `super()`, `setMipMap()`, `if()`, `invalidateSelf()`, `hasMipMap()`, `gravityCompatApply()`, `create()`, `RoundedBitmapDrawable21()`, `RoundedBitmapDrawableFactory()`
- **`TintAwareDrawable`** — 3 function(s): `setTint()`, `setTintList()`, `setTintMode()`
- **`WrappedDrawable`** — 2 function(s): `getWrappedDrawable()`, `setWrappedDrawable()`
- **`WrappedDrawableApi14`** — 52 function(s): `isCompatTintEnabled()`, `WrappedDrawableApi14()`, `updateLocalState()`, `setWrappedDrawable()`, `if()`, `jumpToCurrentState()`, `draw()`, `onBoundsChange()`, `setChangingConfigurations()`, `getChangingConfigurations()`, `setDither()`, `setFilterBitmap()`, `setAlpha()`, `setColorFilter()`, `isStateful()`, `return()`, `setState()`, `updateTint()`, `getState()`, `getCurrent()`, `setVisible()`, `getOpacity()`, `getTransparentRegion()`, `getIntrinsicWidth()`, `getIntrinsicHeight()`, `getMinimumWidth()`, `getMinimumHeight()`, `getPadding()`, `setAutoMirrored()`, `isAutoMirrored()`, `getConstantState()`, `mutate()`, `mutateConstantState()`, `DrawableWrapperStateBase()`, `invalidateDrawable()`, `invalidateSelf()`, `scheduleDrawable()`, `scheduleSelf()`, `unscheduleDrawable()`, `unscheduleSelf()`, `onLevelChange()`, `setTint()`, `setTintList()`, `setTintMode()`, `clearColorFilter()`, `getWrappedDrawable()`, `setLevel()`, `setBounds()`, `newDrawable()`, `DrawableWrapperState()`, `canConstantState()`, `super()`
- **`WrappedDrawableApi21`** — 19 function(s): `WrappedDrawableApi21()`, `super()`, `findAndCacheIsProjectedDrawableMethod()`, `setHotspot()`, `setHotspotBounds()`, `getOutline()`, `getDirtyBounds()`, `setTintList()`, `if()`, `setTint()`, `setTintMode()`, `setState()`, `invalidateSelf()`, `isCompatTintEnabled()`, `return()`, `isProjected()`, `mutateConstantState()`, `DrawableWrapperStateLollipop()`, `newDrawable()`

</details>

### Package `androidx.core.hardware.display`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `DisplayManagerCompat` | class | — | 66 | 15 |

<details>
<summary><b>Function list for <code>androidx.core.hardware.display</code></b> (click to expand)</summary>

- **`DisplayManagerCompat`** — 7 function(s): `DisplayManagerCompat()`, `getInstance()`, `synchronized()`, `if()`, `getDisplay()`, `return()`, `getDisplays()`

</details>

### Package `androidx.core.hardware.fingerprint`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `FingerprintManagerCompat` | class | — | 186 | 40 |

<details>
<summary><b>Function list for <code>androidx.core.hardware.fingerprint</code></b> (click to expand)</summary>

- **`FingerprintManagerCompat`** — 21 function(s): `onAuthenticationError()`, `onAuthenticationFailed()`, `onAuthenticationHelp()`, `onAuthenticationSucceeded()`, `from()`, `FingerprintManagerCompat()`, `hasEnrolledFingerprints()`, `isHardwareDetected()`, `authenticate()`, `if()`, `getFingerprintManagerOrNull()`, `return()`, `wrapCryptoObject()`, `unwrapCryptoObject()`, `CryptoObject()`, `wrapCallback()`, `getSignature()`, `getCipher()`, `getMac()`, `AuthenticationResult()`, `getCryptoObject()`

</details>

### Package `androidx.core.internal.view`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `SupportMenu` | class | Menu | 19 | 1 |
| `SupportMenuItem` | class | MenuItem | 86 | 23 |
| `SupportSubMenu` | class | SupportMenu, SubMenu | 10 | 0 |

<details>
<summary><b>Function list for <code>androidx.core.internal.view</code></b> (click to expand)</summary>

- **`SupportMenu`** — 1 function(s): `setGroupDividerEnabled()`
- **`SupportMenuItem`** — 22 function(s): `collapseActionView()`, `expandActionView()`, `getActionView()`, `getAlphabeticModifiers()`, `getContentDescription()`, `getIconTintList()`, `getIconTintMode()`, `getNumericModifiers()`, `getSupportActionProvider()`, `getTooltipText()`, `isActionViewExpanded()`, `setActionView()`, `setAlphabeticShortcut()`, `setContentDescription()`, `setIconTintList()`, `setIconTintMode()`, `setNumericShortcut()`, `setShortcut()`, `setShowAsAction()`, `setShowAsActionFlags()`, `setSupportActionProvider()`, `setTooltipText()`

</details>

### Package `androidx.core.math`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `MathUtils` | class | — | 20 | 4 |

<details>
<summary><b>Function list for <code>androidx.core.math</code></b> (click to expand)</summary>

- **`MathUtils`** — 2 function(s): `clamp()`, `MathUtils()`

</details>

### Package `androidx.core.net`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ConnectivityManagerCompat` | class | — | 73 | 9 |
| `DatagramSocketWrapper` | class | Socket | 99 | 31 |
| `TrafficStatsCompat` | class | — | 71 | 12 |

<details>
<summary><b>Function list for <code>androidx.core.net</code></b> (click to expand)</summary>

- **`ConnectivityManagerCompat`** — 6 function(s): `isActiveNetworkMetered()`, `if()`, `switch()`, `getNetworkInfoFromBroadcast()`, `getRestrictBackgroundStatus()`, `ConnectivityManagerCompat()`
- **`DatagramSocketWrapper`** — 16 function(s): `DatagramSocketWrapper()`, `super()`, `DatagramSocketImplWrapper()`, `accept()`, `UnsupportedOperationException()`, `available()`, `bind()`, `close()`, `connect()`, `create()`, `getInputStream()`, `getOutputStream()`, `listen()`, `sendUrgentData()`, `getOption()`, `setOption()`
- **`TrafficStatsCompat`** — 10 function(s): `clearThreadStatsTag()`, `getThreadStatsTag()`, `incrementOperationCount()`, `setThreadStatsTag()`, `tagSocket()`, `untagSocket()`, `tagDatagramSocket()`, `if()`, `untagDatagramSocket()`, `TrafficStatsCompat()`

</details>

### Package `androidx.core.os`  (15 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BuildCompat` | class | — | 39 | 7 |
| `CancellationSignal` | class | — | 100 | 28 |
| `ConfigurationCompat` | class | — | 15 | 2 |
| `EnvironmentCompat` | class | — | 29 | 3 |
| `HandlerCompat` | class | — | 23 | 3 |
| `LocaleHelper` | class | — | 54 | 19 |
| `LocaleListCompat` | class | LocaleListInterface | 280 | 53 |
| `LocaleListHelper` | class | — | 413 | 99 |
| `LocaleListInterface` | class | — | 37 | 11 |
| `OperationCanceledException` | class | RuntimeException | 13 | 4 |
| `ParcelCompat` | class | — | 18 | 3 |
| `ParcelableCompat` | class | Parcelable.ClassLoaderCreator<T> | 41 | 7 |
| `ParcelableCompatCreatorCallbacks` | class | — | 12 | 2 |
| `TraceCompat` | class | — | 23 | 5 |
| `UserManagerCompat` | class | — | 19 | 4 |

<details>
<summary><b>Function list for <code>androidx.core.os</code></b> (click to expand)</summary>

- **`BuildCompat`** — 7 function(s): `BuildCompat()`, `isAtLeastN()`, `isAtLeastNMR1()`, `isAtLeastO()`, `isAtLeastOMR1()`, `isAtLeastP()`, `isAtLeastQ()`
- **`CancellationSignal`** — 13 function(s): `onCancel()`, `isCanceled()`, `synchronized()`, `throwIfCanceled()`, `if()`, `OperationCanceledException()`, `cancel()`, `notifyAll()`, `setOnCancelListener()`, `waitForCancelFinishedLocked()`, `getCancellationSignalObject()`, `while()`, `wait()`
- **`ConfigurationCompat`** — 2 function(s): `ConfigurationCompat()`, `getLocales()`
- **`EnvironmentCompat`** — 3 function(s): `getStorageState()`, `if()`, `EnvironmentCompat()`
- **`HandlerCompat`** — 3 function(s): `postDelayed()`, `if()`, `HandlerCompat()`
- **`LocaleHelper`** — 6 function(s): `forLanguageTag()`, `if()`, `Locale()`, `IllegalArgumentException()`, `toLanguageTag()`, `LocaleHelper()`
- **`LocaleListCompat`** — 24 function(s): `if()`, `LocaleListCompatBaseImpl()`, `setLocaleList()`, `getLocaleList()`, `get()`, `isEmpty()`, `size()`, `indexOf()`, `equals()`, `hashCode()`, `toString()`, `toLanguageTags()`, `getFirstMatch()`, `LocaleListCompatApi24Impl()`, `LocaleListCompat()`, `wrap()`, `unwrap()`, `create()`, `getEmptyLocaleList()`, `forLanguageTags()`, `for()`, `getAdjustedDefault()`, `getDefault()`, `setLocaleListArray()`
- **`LocaleListHelper`** — 32 function(s): `get()`, `if()`, `isEmpty()`, `size()`, `indexOf()`, `for()`, `equals()`, `hashCode()`, `toString()`, `toLanguageTags()`, `LocaleListHelper()`, `NullPointerException()`, `IllegalArgumentException()`, `while()`, `getEmptyLocaleList()`, `forLanguageTags()`, `getLikelyScript()`, `isPseudoLocale()`, `matchScore()`, `return()`, `findFirstMatchIndex()`, `computeFirstMatchIndex()`, `computeFirstMatch()`, `getFirstMatch()`, `getFirstMatchIndex()`, `getFirstMatchWithEnglishSupported()`, `getFirstMatchIndexWithEnglishSupported()`, `isPseudoLocalesOnly()`, `getDefault()`, `synchronized()`, `getAdjustedDefault()`, `setDefault()`
- **`LocaleListInterface`** — 11 function(s): `equals()`, `get()`, `getFirstMatch()`, `getLocaleList()`, `hashCode()`, `indexOf()`, `isEmpty()`, `setLocaleList()`, `size()`, `toLanguageTags()`, `toString()`
- **`OperationCanceledException`** — 3 function(s): `OperationCanceledException()`, `this()`, `super()`
- **`ParcelCompat`** — 3 function(s): `readBoolean()`, `writeBoolean()`, `ParcelCompat()`
- **`ParcelableCompat`** — 5 function(s): `newCreator()`, `ParcelableCompatCreatorHoneycombMR2()`, `createFromParcel()`, `newArray()`, `ParcelableCompat()`
- **`ParcelableCompatCreatorCallbacks`** — 2 function(s): `createFromParcel()`, `newArray()`
- **`TraceCompat`** — 4 function(s): `beginSection()`, `if()`, `endSection()`, `TraceCompat()`
- **`UserManagerCompat`** — 4 function(s): `UserManagerCompat()`, `isUserUnlocked()`, `if()`, `return()`

</details>

### Package `androidx.core.provider`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `FontRequest` | class | — | 87 | 11 |
| `FontsContractCompat` | class | BaseColumns | 518 | 90 |
| `SelfDestructiveThread` | class | — | 174 | 28 |

<details>
<summary><b>Function list for <code>androidx.core.provider</code></b> (click to expand)</summary>

- **`FontRequest`** — 9 function(s): `FontRequest()`, `getProviderAuthority()`, `getProviderPackage()`, `getQuery()`, `getCertificates()`, `getCertificatesArrayResId()`, `getIdentifier()`, `toString()`, `for()`
- **`FontsContractCompat`** — 35 function(s): `compare()`, `if()`, `for()`, `onTypefaceRequestFailed()`, `onTypefaceRetrieved()`, `FontsContractCompat()`, `getFontInternal()`, `TypefaceResult()`, `resetCache()`, `getFontSync()`, `call()`, `return()`, `onReply()`, `synchronized()`, `FontInfo()`, `getUri()`, `getTtcIndex()`, `getWeight()`, `isItalic()`, `getResultCode()`, `FontFamilyResult()`, `getStatusCode()`, `getFonts()`, `requestFont()`, `run()`, `switch()`, `buildTypeface()`, `prepareFontData()`, `fetchFonts()`, `getProvider()`, `getCertificates()`, `equalsByteArrayList()`, `convertToByteArrayList()`, `getFontFromProvider()`, `while()`
- **`SelfDestructiveThread`** — 16 function(s): `handleMessage()`, `switch()`, `onReply()`, `SelfDestructiveThread()`, `isRunning()`, `synchronized()`, `getGeneration()`, `post()`, `if()`, `postAndReply()`, `run()`, `postAndWait()`, `return()`, `InterruptedException()`, `onInvokeRunnable()`, `onDestruction()`

</details>

### Package `androidx.core.text`  (7 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BidiFormatter` | class | — | 494 | 122 |
| `HtmlCompat` | class | — | 52 | 7 |
| `ICUCompat` | class | — | 88 | 15 |
| `PrecomputedTextCompat` | class | Spannable | 415 | 77 |
| `TextDirectionHeuristicCompat` | class | — | 9 | 2 |
| `TextDirectionHeuristicsCompat` | class | TextDirectionHeuristicCompat | 189 | 36 |
| `TextUtilsCompat` | class | — | 77 | 16 |

<details>
<summary><b>Function list for <code>androidx.core.text</code></b> (click to expand)</summary>

- **`BidiFormatter`** — 30 function(s): `Builder()`, `initialize()`, `stereoReset()`, `if()`, `setTextDirectionHeuristic()`, `getDefaultInstanceFromContext()`, `build()`, `BidiFormatter()`, `getInstance()`, `isRtlContext()`, `getStereoReset()`, `return()`, `markAfter()`, `markBefore()`, `isRtl()`, `unicodeWrap()`, `isRtlLocale()`, `getExitDir()`, `DirectionalityEstimator()`, `getEntryDir()`, `for()`, `while()`, `switch()`, `getCachedDirectionality()`, `dirTypeForward()`, `skipTagForward()`, `dirTypeBackward()`, `skipTagBackward()`, `skipEntityForward()`, `skipEntityBackward()`
- **`HtmlCompat`** — 4 function(s): `fromHtml()`, `if()`, `toHtml()`, `HtmlCompat()`
- **`ICUCompat`** — 7 function(s): `if()`, `IllegalStateException()`, `maximizeAndGetScript()`, `return()`, `getScript()`, `addLikelySubtags()`, `ICUCompat()`
- **`PrecomputedTextCompat`** — 45 function(s): `Builder()`, `if()`, `setBreakStrategy()`, `setHyphenationFrequency()`, `setTextDirection()`, `build()`, `Params()`, `getTextPaint()`, `getTextDirection()`, `getBreakStrategy()`, `getHyphenationFrequency()`, `equalsWithoutTextDirection()`, `equals()`, `hashCode()`, `toString()`, `create()`, `while()`, `for()`, `StaticLayout()`, `PrecomputedTextCompat()`, `getPrecomputedText()`, `return()`, `getParams()`, `getParagraphCount()`, `getParagraphStart()`, `getParagraphEnd()`, `findParaIndex()`, `IndexOutOfBoundsException()`, `PrecomputedTextCallback()`, `call()`, `PrecomputedTextFutureTask()`, `super()`, `getTextFuture()`, `synchronized()`, `setSpan()`, `IllegalArgumentException()`, `removeSpan()`, `getSpans()`, `getSpanStart()`, `getSpanEnd()`, `getSpanFlags()`, `nextSpanTransition()`, `length()`, `charAt()`, `subSequence()`
- **`TextDirectionHeuristicCompat`** — 1 function(s): `isRtl()`
- **`TextDirectionHeuristicsCompat`** — 17 function(s): `checkRtl()`, `isRtlText()`, `switch()`, `isRtlTextOrFormat()`, `defaultIsRtl()`, `TextDirectionHeuristicImpl()`, `isRtl()`, `if()`, `IllegalArgumentException()`, `doCheck()`, `TextDirectionHeuristicInternal()`, `super()`, `while()`, `FirstStrong()`, `AnyStrong()`, `TextDirectionHeuristicLocale()`, `TextDirectionHeuristicsCompat()`
- **`TextUtilsCompat`** — 8 function(s): `htmlEncode()`, `if()`, `for()`, `switch()`, `getLayoutDirectionFromLocale()`, `getLayoutDirectionFromFirstChar()`, `return()`, `TextUtilsCompat()`

</details>

### Package `androidx.core.text.util`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `FindAddress` | class | — | 247 | 50 |
| `LinkifyCompat` | class | — | 329 | 79 |

<details>
<summary><b>Function list for <code>androidx.core.text.util</code></b> (click to expand)</summary>

- **`FindAddress`** — 15 function(s): `ZipRange()`, `matches()`, `return()`, `checkHouseNumber()`, `for()`, `if()`, `switch()`, `matchHouseNumber()`, `matchState()`, `isValidZipCode()`, `while()`, `isValidLocationName()`, `attemptMatch()`, `findAddress()`, `FindAddress()`
- **`LinkifyCompat`** — 15 function(s): `compare()`, `if()`, `addLinks()`, `for()`, `gatherLinks()`, `gatherMapLinks()`, `pruneOverlaps()`, `while()`, `applyLink()`, `addLinkMovementMethod()`, `shouldAddLinksFallbackToFramework()`, `makeUrl()`, `findAddress()`, `LinkifyCompat()`, `LinkSpec()`

</details>

### Package `androidx.core.util`  (10 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AtomicFile` | class | — | 124 | 26 |
| `Consumer` | class | — | 7 | 1 |
| `DebugUtils` | class | — | 26 | 4 |
| `LogWriter` | class | Writer | 46 | 11 |
| `ObjectsCompat` | class | — | 34 | 7 |
| `Pair` | class | — | 41 | 7 |
| `PatternsCompat` | class | — | 68 | 1 |
| `Pools` | class | Pool<T> | 95 | 21 |
| `Preconditions` | class | — | 213 | 90 |
| `TimeUtils` | class | — | 160 | 28 |

<details>
<summary><b>Function list for <code>androidx.core.util</code></b> (click to expand)</summary>

- **`AtomicFile`** — 14 function(s): `AtomicFile()`, `getBaseFile()`, `delete()`, `startWrite()`, `if()`, `FileOutputStream()`, `IOException()`, `finishWrite()`, `sync()`, `failWrite()`, `openRead()`, `FileInputStream()`, `readFully()`, `while()`
- **`Consumer`** — 1 function(s): `accept()`
- **`DebugUtils`** — 3 function(s): `buildShortClassTag()`, `if()`, `DebugUtils()`
- **`LogWriter`** — 7 function(s): `LogWriter()`, `close()`, `flushBuilder()`, `flush()`, `write()`, `for()`, `if()`
- **`ObjectsCompat`** — 5 function(s): `ObjectsCompat()`, `equals()`, `if()`, `hashCode()`, `hash()`
- **`Pair`** — 7 function(s): `Pair()`, `equals()`, `if()`, `hashCode()`, `return()`, `toString()`, `create()`
- **`PatternsCompat`** — 1 function(s): `PatternsCompat()`
- **`Pools`** — 12 function(s): `acquire()`, `release()`, `Pools()`, `SimplePool()`, `if()`, `IllegalArgumentException()`, `IllegalStateException()`, `isInPool()`, `for()`, `SynchronizedPool()`, `super()`, `synchronized()`
- **`Preconditions`** — 20 function(s): `checkArgument()`, `if()`, `IllegalArgumentException()`, `checkStringNotEmpty()`, `checkNotNull()`, `NullPointerException()`, `checkState()`, `IllegalStateException()`, `checkFlagsArgument()`, `checkArgumentNonnegative()`, `checkArgumentPositive()`, `checkArgumentFinite()`, `checkArgumentInRange()`, `checkArrayElementsNotNull()`, `for()`, `checkCollectionElementsNotNull()`, `while()`, `checkCollectionNotEmpty()`, `checkArrayElementsInRange()`, `Preconditions()`
- **`TimeUtils`** — 9 function(s): `accumField()`, `if()`, `printField()`, `formatDurationLocked()`, `while()`, `for()`, `formatDuration()`, `synchronized()`, `TimeUtils()`

</details>

### Package `androidx.core.view`  (37 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AccessibilityDelegateCompat` | class | View.AccessibilityDelegate | 126 | 25 |
| `ActionProvider` | class | — | 93 | 20 |
| `DisplayCutoutCompat` | class | — | 88 | 28 |
| `DragAndDropPermissionsCompat` | class | — | 34 | 6 |
| `DragStartHelper` | class | — | 81 | 11 |
| `GestureDetectorCompat` | class | GestureDetectorCompatImpl | 432 | 75 |
| `GravityCompat` | class | — | 45 | 8 |
| `InputDeviceCompat` | class | — | 30 | 1 |
| `KeyEventDispatcher` | class | — | 125 | 28 |
| `LayoutInflaterCompat` | class | LayoutInflater.Factory2 | 100 | 22 |
| `LayoutInflaterFactory` | class | — | 12 | 1 |
| `MarginLayoutParamsCompat` | class | — | 68 | 17 |
| `MenuCompat` | class | — | 28 | 4 |
| `MenuItemCompat` | class | — | 223 | 57 |
| `MotionEventCompat` | class | — | 229 | 14 |
| `NestedScrollingChild` | class | — | 25 | 9 |
| `NestedScrollingChild2` | class | NestedScrollingChild | 17 | 5 |
| `NestedScrollingChildHelper` | class | — | 202 | 51 |
| `NestedScrollingParent` | class | — | 24 | 8 |
| `NestedScrollingParent2` | class | NestedScrollingParent | 18 | 5 |
| `NestedScrollingParentHelper` | class | — | 36 | 8 |
| `OnApplyWindowInsetsListener` | class | — | 9 | 1 |
| `PointerIconCompat` | class | — | 67 | 14 |
| `ScaleGestureDetectorCompat` | class | — | 34 | 9 |
| `ScrollingView` | class | — | 17 | 6 |
| `TintableBackgroundView` | class | — | 19 | 4 |
| `VelocityTrackerCompat` | class | — | 21 | 3 |
| `ViewCompat` | class | View.OnUnhandledKeyEventListener | 1,609 | 395 |
| `ViewConfigurationCompat` | class | — | 86 | 18 |
| `ViewGroupCompat` | class | — | 68 | 16 |
| `ViewParentCompat` | class | — | 182 | 49 |
| `ViewPropertyAnimatorCompat` | class | ViewPropertyAnimatorListener | 425 | 103 |
| `ViewPropertyAnimatorListener` | class | — | 13 | 3 |
| `ViewPropertyAnimatorListenerAdapter` | class | ViewPropertyAnimatorListener | 19 | 3 |
| `ViewPropertyAnimatorUpdateListener` | class | — | 9 | 1 |
| `WindowCompat` | class | — | 30 | 6 |
| `WindowInsetsCompat` | class | — | 189 | 67 |

<details>
<summary><b>Function list for <code>androidx.core.view</code></b> (click to expand)</summary>

- **`AccessibilityDelegateCompat`** — 14 function(s): `AccessibilityDelegateAdapter()`, `dispatchPopulateAccessibilityEvent()`, `onInitializeAccessibilityEvent()`, `onInitializeAccessibilityNodeInfo()`, `onPopulateAccessibilityEvent()`, `onRequestSendAccessibilityEvent()`, `sendAccessibilityEvent()`, `sendAccessibilityEventUnchecked()`, `getAccessibilityNodeProvider()`, `if()`, `return()`, `performAccessibilityAction()`, `getBridge()`, `AccessibilityNodeProviderCompat()`
- **`ActionProvider`** — 16 function(s): `onSubUiVisibilityChanged()`, `onActionProviderVisibilityChanged()`, `hasSubMenu()`, `isVisible()`, `onCreateActionView()`, `onPerformDefaultAction()`, `onPrepareSubMenu()`, `overridesItemVisibility()`, `ActionProvider()`, `getContext()`, `refreshVisibility()`, `if()`, `subUiVisibilityChanged()`, `setSubUiVisibilityListener()`, `setVisibilityListener()`, `reset()`
- **`DisplayCutoutCompat`** — 13 function(s): `DisplayCutoutCompat()`, `this()`, `getSafeInsetTop()`, `if()`, `return()`, `getSafeInsetBottom()`, `getSafeInsetLeft()`, `getSafeInsetRight()`, `getBoundingRects()`, `equals()`, `hashCode()`, `toString()`, `wrap()`
- **`DragAndDropPermissionsCompat`** — 4 function(s): `DragAndDropPermissionsCompat()`, `request()`, `if()`, `release()`
- **`DragStartHelper`** — 9 function(s): `onLongClick()`, `onTouch()`, `onDragStart()`, `DragStartHelper()`, `attach()`, `detach()`, `switch()`, `if()`, `getTouchPosition()`
- **`GestureDetectorCompat`** — 22 function(s): `isLongpressEnabled()`, `onTouchEvent()`, `setIsLongpressEnabled()`, `setOnDoubleTapListener()`, `GestureHandler()`, `super()`, `handleMessage()`, `switch()`, `if()`, `RuntimeException()`, `GestureDetectorCompatImplBase()`, `init()`, `IllegalArgumentException()`, `for()`, `cancel()`, `cancelTaps()`, `isConsideredDoubleTap()`, `return()`, `dispatchLongPress()`, `GestureDetectorCompatImplJellybeanMr2()`, `GestureDetectorCompat()`, `this()`
- **`GravityCompat`** — 5 function(s): `apply()`, `if()`, `applyDisplay()`, `getAbsoluteGravity()`, `GravityCompat()`
- **`InputDeviceCompat`** — 1 function(s): `InputDeviceCompat()`
- **`KeyEventDispatcher`** — 10 function(s): `superDispatchKeyEvent()`, `KeyEventDispatcher()`, `dispatchBeforeHierarchy()`, `dispatchKeyEvent()`, `if()`, `activitySuperDispatchKeyEventPre28()`, `dialogSuperDispatchKeyEventPre28()`, `return()`, `actionBarOnMenuKeyEventPre28()`, `getDialogKeyListenerPre28()`
- **`LayoutInflaterCompat`** — 11 function(s): `Factory2Wrapper()`, `onCreateView()`, `toString()`, `getClass()`, `forceSetFactory2()`, `if()`, `LayoutInflaterCompat()`, `setFactory()`, `setFactory2()`, `getFactory()`, `return()`
- **`LayoutInflaterFactory`** — 1 function(s): `onCreateView()`
- **`MarginLayoutParamsCompat`** — 10 function(s): `getMarginStart()`, `if()`, `getMarginEnd()`, `setMarginStart()`, `setMarginEnd()`, `isMarginRelative()`, `getLayoutDirection()`, `setLayoutDirection()`, `resolveLayoutDirection()`, `MarginLayoutParamsCompat()`
- **`MenuCompat`** — 4 function(s): `setShowAsAction()`, `setGroupDividerEnabled()`, `if()`, `MenuCompat()`
- **`MenuItemCompat`** — 27 function(s): `onMenuItemActionCollapse()`, `onMenuItemActionExpand()`, `setShowAsAction()`, `setActionView()`, `getActionView()`, `setActionProvider()`, `if()`, `return()`, `getActionProvider()`, `expandActionView()`, `collapseActionView()`, `isActionViewExpanded()`, `setOnActionExpandListener()`, `setContentDescription()`, `getContentDescription()`, `setTooltipText()`, `getTooltipText()`, `setShortcut()`, `setNumericShortcut()`, `getNumericModifiers()`, `setAlphabeticShortcut()`, `getAlphabeticModifiers()`, `setIconTintList()`, `getIconTintList()`, `setIconTintMode()`, `getIconTintMode()`, `MenuItemCompat()`
- **`MotionEventCompat`** — 13 function(s): `getActionMasked()`, `getActionIndex()`, `findPointerIndex()`, `getPointerId()`, `getX()`, `getY()`, `getPointerCount()`, `getSource()`, `isFromSource()`, `return()`, `getAxisValue()`, `getButtonState()`, `MotionEventCompat()`
- **`NestedScrollingChild`** — 9 function(s): `dispatchNestedFling()`, `dispatchNestedPreFling()`, `dispatchNestedPreScroll()`, `dispatchNestedScroll()`, `hasNestedScrollingParent()`, `isNestedScrollingEnabled()`, `setNestedScrollingEnabled()`, `startNestedScroll()`, `stopNestedScroll()`
- **`NestedScrollingChild2`** — 5 function(s): `dispatchNestedPreScroll()`, `dispatchNestedScroll()`, `hasNestedScrollingParent()`, `startNestedScroll()`, `stopNestedScroll()`
- **`NestedScrollingChildHelper`** — 18 function(s): `NestedScrollingChildHelper()`, `setNestedScrollingEnabled()`, `if()`, `isNestedScrollingEnabled()`, `hasNestedScrollingParent()`, `getNestedScrollingParentForType()`, `startNestedScroll()`, `for()`, `setNestedScrollingParentForType()`, `stopNestedScroll()`, `dispatchNestedScroll()`, `dispatchNestedPreScroll()`, `return()`, `dispatchNestedFling()`, `dispatchNestedPreFling()`, `onDetachedFromWindow()`, `onStopNestedScroll()`, `switch()`
- **`NestedScrollingParent`** — 8 function(s): `getNestedScrollAxes()`, `onNestedFling()`, `onNestedPreFling()`, `onNestedPreScroll()`, `onNestedScroll()`, `onNestedScrollAccepted()`, `onStartNestedScroll()`, `onStopNestedScroll()`
- **`NestedScrollingParent2`** — 5 function(s): `onNestedPreScroll()`, `onNestedScroll()`, `onNestedScrollAccepted()`, `onStartNestedScroll()`, `onStopNestedScroll()`
- **`NestedScrollingParentHelper`** — 4 function(s): `NestedScrollingParentHelper()`, `onNestedScrollAccepted()`, `getNestedScrollAxes()`, `onStopNestedScroll()`
- **`OnApplyWindowInsetsListener`** — 1 function(s): `onApplyWindowInsets()`
- **`PointerIconCompat`** — 6 function(s): `PointerIconCompat()`, `getPointerIcon()`, `getSystemIcon()`, `if()`, `create()`, `load()`
- **`ScaleGestureDetectorCompat`** — 4 function(s): `ScaleGestureDetectorCompat()`, `setQuickScaleEnabled()`, `if()`, `isQuickScaleEnabled()`
- **`ScrollingView`** — 6 function(s): `computeHorizontalScrollExtent()`, `computeHorizontalScrollOffset()`, `computeHorizontalScrollRange()`, `computeVerticalScrollExtent()`, `computeVerticalScrollOffset()`, `computeVerticalScrollRange()`
- **`TintableBackgroundView`** — 4 function(s): `getSupportBackgroundTintList()`, `getSupportBackgroundTintMode()`, `setSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`
- **`VelocityTrackerCompat`** — 3 function(s): `getXVelocity()`, `getYVelocity()`, `VelocityTrackerCompat()`
- **`ViewCompat`** — 164 function(s): `onUnhandledKeyEvent()`, `getEmptyTempRect()`, `if()`, `canScrollHorizontally()`, `canScrollVertically()`, `getOverScrollMode()`, `setOverScrollMode()`, `onPopulateAccessibilityEvent()`, `onInitializeAccessibilityEvent()`, `onInitializeAccessibilityNodeInfo()`, `setAccessibilityDelegate()`, `setAutofillHints()`, `getImportantForAutofill()`, `setImportantForAutofill()`, `isImportantForAutofill()`, `hasAccessibilityDelegate()`, `hasTransientState()`, `setHasTransientState()`, `postInvalidateOnAnimation()`, `postOnAnimation()`, `postOnAnimationDelayed()`, `getImportantForAccessibility()`, `setImportantForAccessibility()`, `isImportantForAccessibility()`, `performAccessibilityAction()`, `getAccessibilityNodeProvider()`, `AccessibilityNodeProviderCompat()`, `getAlpha()`, `setLayerType()`, `getLayerType()`, `getLabelFor()`, `setLabelFor()`, `setLayerPaint()`, `getLayoutDirection()`, `setLayoutDirection()`, `getParentForAccessibility()`, `requireViewById()`, `return()`, `IllegalArgumentException()`, `isOpaque()`, `resolveSizeAndState()`, `getMeasuredWidthAndState()`, `getMeasuredHeightAndState()`, `getMeasuredState()`, `combineMeasuredStates()`, `getAccessibilityLiveRegion()`, `setAccessibilityLiveRegion()`, `getPaddingStart()`, `getPaddingEnd()`, `setPaddingRelative()`, `bindTempDetach()`, `dispatchStartTemporaryDetach()`, `dispatchFinishTemporaryDetach()`, `getTranslationX()`, `getTranslationY()`, `getMatrix()`, `getMinimumWidth()`, `getMinimumHeight()`, `animate()`, `setTranslationX()`, `setTranslationY()`, `setAlpha()`, `setX()`, `setY()`, `setRotation()`, `setRotationX()`, `setRotationY()`, `setScaleX()`, `setScaleY()`, `getPivotX()`, `setPivotX()`, `getPivotY()`, `setPivotY()`, `getRotation()`, `getRotationX()`, `getRotationY()`, `getScaleX()`, `getScaleY()`, `getX()`, `getY()`, `setElevation()`, `getElevation()`, `setTranslationZ()`, `getTranslationZ()`, `setTransitionName()`, `getTransitionName()`, `getWindowSystemUiVisibility()`, `requestApplyInsets()`, `setChildrenDrawingOrderEnabled()`, `getFitsSystemWindows()`, `setFitsSystemWindows()`, `jumpDrawablesToCurrentState()`, `setOnApplyWindowInsetsListener()`, `onApplyWindowInsets()`, `dispatchApplyWindowInsets()`, `setSaveFromParentEnabled()`, `setActivated()`, `hasOverlappingRendering()`, `isPaddingRelative()`, `setBackground()`, `getBackgroundTintList()`, `setBackgroundTintList()`, `getBackgroundTintMode()`, `setBackgroundTintMode()`, `setNestedScrollingEnabled()`, `isNestedScrollingEnabled()`, `startNestedScroll()`, `stopNestedScroll()`, `hasNestedScrollingParent()`, `dispatchNestedScroll()`, `dispatchNestedPreScroll()`, `dispatchNestedFling()`, `dispatchNestedPreFling()`, `isInLayout()`, `isLaidOut()`, `isLayoutDirectionResolved()`, `getZ()`, `setZ()`, `offsetTopAndBottom()`, `compatOffsetTopAndBottom()`, `tickleInvalidationFlag()`, `offsetLeftAndRight()`, `compatOffsetLeftAndRight()`, `setClipBounds()`, `getClipBounds()`, `isAttachedToWindow()`, `hasOnClickListeners()`, `setScrollIndicators()`, `getScrollIndicators()`, `setPointerIcon()`, `getDisplay()`, `setTooltipText()`, `startDragAndDrop()`, `cancelDragAndDrop()`, `updateDragShadow()`, `getNextClusterForwardId()`, `setNextClusterForwardId()`, `isKeyboardNavigationCluster()`, `setKeyboardNavigationCluster()`, `isFocusedByDefault()`, `setFocusedByDefault()`, `keyboardNavigationClusterSearch()`, `addKeyboardNavigationClusters()`, `restoreDefaultFocus()`, `hasExplicitFocusable()`, `generateViewId()`, `addOnUnhandledKeyEventListener()`, `removeOnUnhandledKeyEventListener()`, `ViewCompat()`, `OnUnhandledKeyEventListenerWrapper()`, `dispatchUnhandledKeyEventBeforeHierarchy()`, `dispatchUnhandledKeyEventBeforeCallback()`, `UnhandledKeyEventManager()`, `getCapturedKeys()`, `at()`, `dispatch()`, `recalcViewsWithUnhandled()`, `dispatchInOrder()`, `for()`, `preDispatch()`, `registerListeningView()`, `synchronized()`, `while()`, `unregisterListeningView()`
- **`ViewConfigurationCompat`** — 10 function(s): `if()`, `getScaledPagingTouchSlop()`, `hasPermanentMenuKey()`, `getScaledHorizontalScrollFactor()`, `getLegacyScrollFactor()`, `getScaledVerticalScrollFactor()`, `return()`, `getScaledHoverSlop()`, `shouldShowMenuShortcutsWhenKeyboardPresent()`, `ViewConfigurationCompat()`
- **`ViewGroupCompat`** — 10 function(s): `ViewGroupCompat()`, `onRequestSendAccessibilityEvent()`, `setMotionEventSplittingEnabled()`, `getLayoutMode()`, `if()`, `setLayoutMode()`, `setTransitionGroup()`, `isTransitionGroup()`, `return()`, `getNestedScrollAxes()`
- **`ViewParentCompat`** — 12 function(s): `ViewParentCompat()`, `requestSendAccessibilityEvent()`, `onStartNestedScroll()`, `onNestedScrollAccepted()`, `onStopNestedScroll()`, `onNestedScroll()`, `onNestedPreScroll()`, `if()`, `return()`, `onNestedFling()`, `onNestedPreFling()`, `notifySubtreeAccessibilityStateChanged()`
- **`ViewPropertyAnimatorCompat`** — 46 function(s): `ViewPropertyAnimatorCompat()`, `ViewPropertyAnimatorListenerApi14()`, `onAnimationStart()`, `if()`, `onAnimationEnd()`, `onAnimationCancel()`, `setDuration()`, `alpha()`, `alphaBy()`, `translationX()`, `translationY()`, `withEndAction()`, `setListenerInternal()`, `getDuration()`, `setInterpolator()`, `getInterpolator()`, `return()`, `setStartDelay()`, `getStartDelay()`, `rotation()`, `rotationBy()`, `rotationX()`, `rotationXBy()`, `rotationY()`, `rotationYBy()`, `scaleX()`, `scaleXBy()`, `scaleY()`, `scaleYBy()`, `cancel()`, `x()`, `xBy()`, `y()`, `yBy()`, `translationXBy()`, `translationYBy()`, `translationZBy()`, `translationZ()`, `z()`, `zBy()`, `start()`, `withLayer()`, `withStartAction()`, `setListener()`, `setUpdateListener()`, `onAnimationUpdate()`
- **`ViewPropertyAnimatorListener`** — 3 function(s): `onAnimationCancel()`, `onAnimationEnd()`, `onAnimationStart()`
- **`ViewPropertyAnimatorListenerAdapter`** — 3 function(s): `onAnimationCancel()`, `onAnimationEnd()`, `onAnimationStart()`
- **`ViewPropertyAnimatorUpdateListener`** — 1 function(s): `onAnimationUpdate()`
- **`WindowCompat`** — 5 function(s): `WindowCompat()`, `requireViewById()`, `if()`, `return()`, `IllegalArgumentException()`
- **`WindowInsetsCompat`** — 25 function(s): `WindowInsetsCompat()`, `if()`, `getSystemWindowInsetLeft()`, `return()`, `getSystemWindowInsetTop()`, `getSystemWindowInsetRight()`, `getSystemWindowInsetBottom()`, `hasSystemWindowInsets()`, `hasInsets()`, `isConsumed()`, `isRound()`, `consumeSystemWindowInsets()`, `replaceSystemWindowInsets()`, `getStableInsetTop()`, `getStableInsetLeft()`, `getStableInsetRight()`, `getStableInsetBottom()`, `hasStableInsets()`, `consumeStableInsets()`, `getDisplayCutout()`, `consumeDisplayCutout()`, `equals()`, `hashCode()`, `wrap()`, `unwrap()`

</details>

### Package `androidx.core.view.accessibility`  (6 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AccessibilityEventCompat` | class | — | 109 | 19 |
| `AccessibilityManagerCompat` | class | AccessibilityStateChangeListener | 135 | 26 |
| `AccessibilityNodeInfoCompat` | class | — | 1,263 | 346 |
| `AccessibilityNodeProviderCompat` | class | AccessibilityNodeProvider | 109 | 19 |
| `AccessibilityRecordCompat` | class | — | 313 | 72 |
| `AccessibilityWindowInfoCompat` | class | — | 204 | 59 |

<details>
<summary><b>Function list for <code>androidx.core.view.accessibility</code></b> (click to expand)</summary>

- **`AccessibilityEventCompat`** — 13 function(s): `AccessibilityEventCompat()`, `getRecordCount()`, `appendRecord()`, `getRecord()`, `AccessibilityRecordCompat()`, `asRecord()`, `setContentChangeTypes()`, `if()`, `getContentChangeTypes()`, `setMovementGranularity()`, `getMovementGranularity()`, `setAction()`, `getAction()`
- **`AccessibilityManagerCompat`** — 15 function(s): `onAccessibilityStateChanged()`, `onTouchExplorationStateChanged()`, `addAccessibilityStateChangeListener()`, `if()`, `removeAccessibilityStateChangeListener()`, `AccessibilityStateChangeListenerWrapper()`, `hashCode()`, `equals()`, `getInstalledAccessibilityServiceList()`, `getEnabledAccessibilityServiceList()`, `isTouchExplorationEnabled()`, `addTouchExplorationStateChangeListener()`, `removeTouchExplorationStateChangeListener()`, `TouchExplorationStateChangeListenerWrapper()`, `AccessibilityManagerCompat()`
- **`AccessibilityNodeInfoCompat`** — 153 function(s): `getActionSymbolicName()`, `switch()`, `AccessibilityActionCompat()`, `this()`, `getId()`, `if()`, `return()`, `getLabel()`, `obtain()`, `CollectionInfoCompat()`, `getColumnCount()`, `getRowCount()`, `isHierarchical()`, `getSelectionMode()`, `CollectionItemInfoCompat()`, `getColumnIndex()`, `getColumnSpan()`, `getRowIndex()`, `getRowSpan()`, `isHeading()`, `isSelected()`, `RangeInfoCompat()`, `getCurrent()`, `getMax()`, `getMin()`, `getType()`, `wrapNonNullInstance()`, `AccessibilityNodeInfoCompat()`, `wrap()`, `unwrap()`, `getInfo()`, `setSource()`, `findFocus()`, `focusSearch()`, `getWindowId()`, `getChildCount()`, `getChild()`, `addChild()`, `removeChild()`, `getActions()`, `addAction()`, `removeAction()`, `performAction()`, `setMovementGranularities()`, `getMovementGranularities()`, `findAccessibilityNodeInfosByText()`, `for()`, `getParent()`, `setParent()`, `getBoundsInParent()`, `setBoundsInParent()`, `getBoundsInScreen()`, `setBoundsInScreen()`, `isCheckable()`, `setCheckable()`, `isChecked()`, `setChecked()`, `isFocusable()`, `setFocusable()`, `isFocused()`, `setFocused()`, `isVisibleToUser()`, `setVisibleToUser()`, `isAccessibilityFocused()`, `setAccessibilityFocused()`, `setSelected()`, `isClickable()`, `setClickable()`, `isLongClickable()`, `setLongClickable()`, `isEnabled()`, `setEnabled()`, `isPassword()`, `setPassword()`, `isScrollable()`, `setScrollable()`, `isImportantForAccessibility()`, `setImportantForAccessibility()`, `getPackageName()`, `setPackageName()`, `getClassName()`, `setClassName()`, `getText()`, `setText()`, `getContentDescription()`, `setContentDescription()`, `recycle()`, `setViewIdResourceName()`, `getViewIdResourceName()`, `getLiveRegion()`, `setLiveRegion()`, `getDrawingOrder()`, `setDrawingOrder()`, `getCollectionInfo()`, `setCollectionInfo()`, `setCollectionItemInfo()`, `getCollectionItemInfo()`, `getRangeInfo()`, `setRangeInfo()`, `getActionList()`, `setContentInvalid()`, `isContentInvalid()`, `isContextClickable()`, `setContextClickable()`, `getHintText()`, `setHintText()`, `setError()`, `getError()`, `setLabelFor()`, `getLabelFor()`, `setLabeledBy()`, `getLabeledBy()`, `canOpenPopup()`, `setCanOpenPopup()`, `findAccessibilityNodeInfosByViewId()`, `while()`, `getExtras()`, `Bundle()`, `getInputType()`, `setInputType()`, `setMaxTextLength()`, `getMaxTextLength()`, `setTextSelection()`, `getTextSelectionStart()`, `getTextSelectionEnd()`, `getTraversalBefore()`, `setTraversalBefore()`, `getTraversalAfter()`, `setTraversalAfter()`, `getWindow()`, `isDismissable()`, `setDismissable()`, `isEditable()`, `setEditable()`, `isMultiLine()`, `setMultiLine()`, `getTooltipText()`, `setTooltipText()`, `setPaneTitle()`, `getPaneTitle()`, `isScreenReaderFocusable()`, `getBooleanProperty()`, `setScreenReaderFocusable()`, `setBooleanProperty()`, `isShowingHintText()`, `setShowingHintText()`, `setHeading()`, `refresh()`, `getRoleDescription()`, `setRoleDescription()`, `hashCode()`, `equals()`, `toString()`
- **`AccessibilityNodeProviderCompat`** — 11 function(s): `createAccessibilityNodeInfo()`, `findAccessibilityNodeInfosByText()`, `findFocus()`, `performAction()`, `AccessibilityNodeProviderApi16()`, `if()`, `for()`, `AccessibilityNodeProviderApi19()`, `super()`, `AccessibilityNodeProviderCompat()`, `getProvider()`
- **`AccessibilityRecordCompat`** — 49 function(s): `AccessibilityRecordCompat()`, `getImpl()`, `obtain()`, `setSource()`, `if()`, `getSource()`, `getWindowId()`, `isChecked()`, `setChecked()`, `isEnabled()`, `setEnabled()`, `isPassword()`, `setPassword()`, `isFullScreen()`, `setFullScreen()`, `isScrollable()`, `setScrollable()`, `getItemCount()`, `setItemCount()`, `getCurrentItemIndex()`, `setCurrentItemIndex()`, `getFromIndex()`, `setFromIndex()`, `getToIndex()`, `setToIndex()`, `getScrollX()`, `setScrollX()`, `getScrollY()`, `setScrollY()`, `getMaxScrollX()`, `setMaxScrollX()`, `getMaxScrollY()`, `setMaxScrollY()`, `getAddedCount()`, `setAddedCount()`, `getRemovedCount()`, `setRemovedCount()`, `getClassName()`, `setClassName()`, `getText()`, `getBeforeText()`, `setBeforeText()`, `getContentDescription()`, `setContentDescription()`, `getParcelableData()`, `setParcelableData()`, `recycle()`, `hashCode()`, `equals()`
- **`AccessibilityWindowInfoCompat`** — 24 function(s): `typeToString()`, `switch()`, `wrapNonNullInstance()`, `if()`, `AccessibilityWindowInfoCompat()`, `getType()`, `return()`, `getLayer()`, `getRoot()`, `getParent()`, `getId()`, `getBoundsInScreen()`, `isActive()`, `isFocused()`, `isAccessibilityFocused()`, `getChildCount()`, `getChild()`, `getTitle()`, `getAnchor()`, `obtain()`, `recycle()`, `hashCode()`, `equals()`, `toString()`

</details>

### Package `androidx.core.view.animation`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `PathInterpolatorApi14` | class | Interpolator | 79 | 14 |
| `PathInterpolatorCompat` | class | — | 34 | 13 |

<details>
<summary><b>Function list for <code>androidx.core.view.animation</code></b> (click to expand)</summary>

- **`PathInterpolatorApi14`** — 8 function(s): `PathInterpolatorApi14()`, `for()`, `this()`, `getInterpolation()`, `if()`, `while()`, `createQuad()`, `createCubic()`
- **`PathInterpolatorCompat`** — 5 function(s): `PathInterpolatorCompat()`, `create()`, `if()`, `PathInterpolator()`, `PathInterpolatorApi14()`

</details>

### Package `androidx.core.view.inputmethod`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `EditorInfoCompat` | class | — | 44 | 7 |
| `InputConnectionCompat` | class | — | 128 | 25 |
| `InputContentInfoCompat` | class | InputContentInfoCompatImpl | 183 | 33 |

<details>
<summary><b>Function list for <code>androidx.core.view.inputmethod</code></b> (click to expand)</summary>

- **`EditorInfoCompat`** — 4 function(s): `setContentMimeTypes()`, `if()`, `getContentMimeTypes()`, `EditorInfoCompat()`
- **`InputConnectionCompat`** — 10 function(s): `onCommitContent()`, `handlePerformPrivateCommand()`, `if()`, `commitContent()`, `while()`, `createWrapper()`, `IllegalArgumentException()`, `InputConnectionWrapper()`, `performPrivateCommand()`, `InputConnectionCompat()`
- **`InputContentInfoCompat`** — 12 function(s): `getContentUri()`, `getDescription()`, `getInputContentInfo()`, `getLinkUri()`, `releasePermission()`, `requestPermission()`, `InputContentInfoCompatBaseImpl()`, `InputContentInfoCompatApi25Impl()`, `InputContentInfoCompat()`, `if()`, `wrap()`, `unwrap()`

</details>

### Package `androidx.core.widget`  (16 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AutoScrollHelper` | class | View.OnTouchListener | 413 | 89 |
| `AutoSizeableTextView` | class | — | 34 | 8 |
| `CompoundButtonCompat` | class | — | 89 | 18 |
| `ContentLoadingProgressBar` | class | ProgressBar | 93 | 24 |
| `EdgeEffectCompat` | class | — | 70 | 12 |
| `ImageViewCompat` | class | — | 86 | 21 |
| `ListPopupWindowCompat` | class | — | 27 | 5 |
| `ListViewAutoScrollHelper` | class | AutoScrollHelper | 50 | 10 |
| `ListViewCompat` | class | — | 41 | 8 |
| `NestedScrollView` | class | FrameLayout implements NestedScrollingParent2, NestedScrollingChild2, ScrollingView | 1,446 | 362 |
| `PopupMenuCompat` | class | — | 22 | 4 |
| `PopupWindowCompat` | class | — | 131 | 24 |
| `ScrollerCompat` | class | — | 106 | 20 |
| `TextViewCompat` | class | ActionMode.Callback | 550 | 122 |
| `TintableCompoundButton` | class | — | 19 | 4 |
| `TintableImageSourceView` | class | — | 21 | 4 |

<details>
<summary><b>Function list for <code>androidx.core.widget</code></b> (click to expand)</summary>

- **`AutoScrollHelper`** — 43 function(s): `constrain()`, `canTargetScrollHorizontally()`, `canTargetScrollVertically()`, `scrollTargetBy()`, `AutoScrollHelper()`, `setMaximumVelocity()`, `setMinimumVelocity()`, `setEdgeType()`, `setMaximumEdges()`, `setRelativeEdges()`, `setRelativeVelocity()`, `setActivationDelay()`, `setRampUpDuration()`, `setRampDownDuration()`, `setEnabled()`, `if()`, `requestStop()`, `isEnabled()`, `setExclusive()`, `isExclusive()`, `onTouch()`, `switch()`, `startAnimating()`, `shouldAnimate()`, `return()`, `computeTargetVelocity()`, `getEdgeValue()`, `constrainEdgeValue()`, `cancelTargetTouch()`, `ScrollAnimationRunnable()`, `run()`, `interpolateValue()`, `ClampedScroller()`, `start()`, `isFinished()`, `getValueAt()`, `computeScrollDelta()`, `RuntimeException()`, `setTargetVelocity()`, `getHorizontalDirection()`, `getVerticalDirection()`, `getDeltaX()`, `getDeltaY()`
- **`AutoSizeableTextView`** — 8 function(s): `getAutoSizeMaxTextSize()`, `getAutoSizeMinTextSize()`, `getAutoSizeStepGranularity()`, `getAutoSizeTextAvailableSizes()`, `getAutoSizeTextType()`, `setAutoSizeTextTypeUniformWithConfiguration()`, `setAutoSizeTextTypeUniformWithPresetSizes()`, `setAutoSizeTextTypeWithDefaults()`
- **`CompoundButtonCompat`** — 8 function(s): `CompoundButtonCompat()`, `setButtonTintList()`, `if()`, `getButtonTintList()`, `return()`, `setButtonTintMode()`, `getButtonTintMode()`, `getButtonDrawable()`
- **`ContentLoadingProgressBar`** — 12 function(s): `ContentLoadingProgressBar()`, `this()`, `super()`, `run()`, `if()`, `onAttachedToWindow()`, `removeCallbacks()`, `onDetachedFromWindow()`, `hide()`, `postDelayed()`, `setVisibility()`, `show()`
- **`EdgeEffectCompat`** — 9 function(s): `EdgeEffectCompat()`, `setSize()`, `isFinished()`, `finish()`, `onPull()`, `if()`, `onRelease()`, `onAbsorb()`, `draw()`
- **`ImageViewCompat`** — 7 function(s): `getImageTintList()`, `if()`, `return()`, `setImageTintList()`, `getImageTintMode()`, `setImageTintMode()`, `ImageViewCompat()`
- **`ListPopupWindowCompat`** — 3 function(s): `ListPopupWindowCompat()`, `createDragToOpenListener()`, `if()`
- **`ListViewAutoScrollHelper`** — 6 function(s): `canTargetScrollHorizontally()`, `ListViewAutoScrollHelper()`, `super()`, `scrollTargetBy()`, `canTargetScrollVertically()`, `if()`
- **`ListViewCompat`** — 4 function(s): `scrollListBy()`, `if()`, `canScrollList()`, `ListViewCompat()`
- **`NestedScrollView`** — 109 function(s): `onScrollChange()`, `clamp()`, `if()`, `onStartNestedScroll()`, `return()`, `shouldDelayChildPressedState()`, `NestedScrollView()`, `this()`, `super()`, `initScrollView()`, `setFillViewport()`, `setNestedScrollingEnabled()`, `startNestedScroll()`, `stopNestedScroll()`, `hasNestedScrollingParent()`, `dispatchNestedScroll()`, `dispatchNestedPreScroll()`, `isNestedScrollingEnabled()`, `dispatchNestedFling()`, `dispatchNestedPreFling()`, `onNestedScrollAccepted()`, `onStopNestedScroll()`, `onNestedScroll()`, `scrollBy()`, `onNestedPreScroll()`, `onNestedFling()`, `flingWithNestedDispatch()`, `onNestedPreFling()`, `getNestedScrollAxes()`, `getTopFadingEdgeStrength()`, `getBottomFadingEdgeStrength()`, `getMaxScrollAmount()`, `setFocusable()`, `setDescendantFocusability()`, `setWillNotDraw()`, `addView()`, `IllegalStateException()`, `setOnScrollChangeListener()`, `canScroll()`, `isFillViewport()`, `requestLayout()`, `isSmoothScrollingEnabled()`, `setSmoothScrollingEnabled()`, `onScrollChanged()`, `onMeasure()`, `dispatchKeyEvent()`, `executeKeyEvent()`, `switch()`, `arrowScroll()`, `fullScroll()`, `pageScroll()`, `inChild()`, `initOrResetVelocityTracker()`, `initVelocityTrackerIfNotExists()`, `recycleVelocityTracker()`, `requestDisallowInterceptTouchEvent()`, `onInterceptTouchEvent()`, `onSecondaryPointerUp()`, `onTouchEvent()`, `endDrag()`, `ensureGlows()`, `onGenericMotionEvent()`, `getVerticalScrollFactorCompat()`, `onOverScrolled()`, `overScrollByCompat()`, `getScrollRange()`, `findFocusableViewInBounds()`, `for()`, `scrollAndFocus()`, `doScrollY()`, `offsetDescendantRectToMyCoords()`, `requestFocus()`, `isOffScreen()`, `isWithinDeltaOfScreen()`, `smoothScrollBy()`, `smoothScrollTo()`, `computeVerticalScrollRange()`, `computeVerticalScrollOffset()`, `computeVerticalScrollExtent()`, `computeHorizontalScrollRange()`, `computeHorizontalScrollOffset()`, `computeHorizontalScrollExtent()`, `measureChild()`, `measureChildWithMargins()`, `computeScroll()`, `scrollToChild()`, `scrollToChildRect()`, `computeScrollDeltaToGetChildRectOnScreen()`, `requestChildFocus()`, `onRequestFocusInDescendants()`, `requestChildRectangleOnScreen()`, `onLayout()`, `scrollTo()`, `onAttachedToWindow()`, `onSizeChanged()`, `isViewDescendantOf()`, `fling()`, `draw()`, `onRestoreInstanceState()`, `onSaveInstanceState()`, `createFromParcel()`, `SavedState()`, `newArray()`, `writeToParcel()`, `toString()`, `AccessibilityDelegate()`, `performAccessibilityAction()`, `onInitializeAccessibilityNodeInfo()`, `onInitializeAccessibilityEvent()`
- **`PopupMenuCompat`** — 4 function(s): `PopupMenuCompat()`, `getDragToOpenListener()`, `if()`, `return()`
- **`PopupWindowCompat`** — 8 function(s): `PopupWindowCompat()`, `showAsDropDown()`, `if()`, `setOverlapAnchor()`, `getOverlapAnchor()`, `return()`, `setWindowLayoutType()`, `getWindowLayoutType()`
- **`ScrollerCompat`** — 16 function(s): `create()`, `ScrollerCompat()`, `isFinished()`, `getCurrX()`, `getCurrY()`, `getFinalX()`, `getFinalY()`, `getCurrVelocity()`, `computeScrollOffset()`, `startScroll()`, `fling()`, `springBack()`, `abortAnimation()`, `notifyHorizontalEdgeReached()`, `notifyVerticalEdgeReached()`, `isOverScrolled()`
- **`TextViewCompat`** — 46 function(s): `TextViewCompat()`, `retrieveField()`, `retrieveIntFromField()`, `setCompoundDrawablesRelative()`, `if()`, `setCompoundDrawablesRelativeWithIntrinsicBounds()`, `getMaxLines()`, `getMinLines()`, `setTextAppearance()`, `getCompoundDrawablesRelative()`, `setAutoSizeTextTypeWithDefaults()`, `setAutoSizeTextTypeUniformWithConfiguration()`, `setAutoSizeTextTypeUniformWithPresetSizes()`, `getAutoSizeTextType()`, `return()`, `getAutoSizeStepGranularity()`, `getAutoSizeMinTextSize()`, `getAutoSizeMaxTextSize()`, `getAutoSizeTextAvailableSizes()`, `setCustomSelectionActionModeCallback()`, `wrapCustomSelectionActionModeCallback()`, `OreoCallback()`, `onCreateActionMode()`, `onPrepareActionMode()`, `recomputeProcessTextMenuItems()`, `onActionItemClicked()`, `onDestroyActionMode()`, `for()`, `getSupportedActivities()`, `isSupportedActivity()`, `createProcessTextIntentForResolveInfo()`, `createProcessTextIntent()`, `isEditable()`, `Intent()`, `setFirstBaselineToTopHeight()`, `setLastBaselineToBottomHeight()`, `getFirstBaselineToTopHeight()`, `getLastBaselineToBottomHeight()`, `setLineHeight()`, `getTextMetricsParams()`, `setTextMetricsParams()`, `setPrecomputedText()`, `IllegalArgumentException()`, `getTextDirectionHeuristic()`, `switch()`, `getTextDirection()`
- **`TintableCompoundButton`** — 4 function(s): `getSupportButtonTintList()`, `getSupportButtonTintMode()`, `setSupportButtonTintList()`, `setSupportButtonTintMode()`
- **`TintableImageSourceView`** — 4 function(s): `getSupportImageTintList()`, `getSupportImageTintMode()`, `setSupportImageTintList()`, `setSupportImageTintMode()`

</details>

### Package `androidx.cursoradapter`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.cursoradapter</code></b> (click to expand)</summary>

- **`R`** — 1 function(s): `R()`

</details>

### Package `androidx.cursoradapter.widget`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CursorAdapter` | class | BaseAdapter implements Filterable, CursorFilter.CursorFilterClient | 279 | 65 |
| `CursorFilter` | class | Filter | 54 | 10 |
| `ResourceCursorAdapter` | class | CursorAdapter | 56 | 10 |
| `SimpleCursorAdapter` | class | ResourceCursorAdapter | 153 | 36 |

<details>
<summary><b>Function list for <code>androidx.cursoradapter.widget</code></b> (click to expand)</summary>

- **`CursorAdapter`** — 31 function(s): `bindView()`, `hasStableIds()`, `newView()`, `CursorAdapter()`, `init()`, `if()`, `getCursor()`, `getCount()`, `getItem()`, `getItemId()`, `getView()`, `IllegalStateException()`, `getDropDownView()`, `newDropDownView()`, `changeCursor()`, `swapCursor()`, `notifyDataSetChanged()`, `notifyDataSetInvalidated()`, `convertToString()`, `runQueryOnBackgroundThread()`, `getFilter()`, `getFilterQueryProvider()`, `setFilterQueryProvider()`, `onContentChanged()`, `deliverSelfNotifications()`, `ChangeObserver()`, `super()`, `onChange()`, `MyDataSetObserver()`, `onChanged()`, `onInvalidated()`
- **`CursorFilter`** — 9 function(s): `changeCursor()`, `convertToString()`, `getCursor()`, `runQueryOnBackgroundThread()`, `CursorFilter()`, `convertResultToString()`, `performFiltering()`, `if()`, `publishResults()`
- **`ResourceCursorAdapter`** — 6 function(s): `ResourceCursorAdapter()`, `super()`, `newView()`, `newDropDownView()`, `setViewResource()`, `setDropDownViewResource()`
- **`SimpleCursorAdapter`** — 19 function(s): `convertToString()`, `setViewValue()`, `SimpleCursorAdapter()`, `super()`, `findColumns()`, `bindView()`, `for()`, `if()`, `setViewText()`, `setViewImage()`, `IllegalStateException()`, `getViewBinder()`, `setViewBinder()`, `getStringConversionColumn()`, `setStringConversionColumn()`, `getCursorToStringConverter()`, `setCursorToStringConverter()`, `swapCursor()`, `changeCursorAndColumns()`

</details>

### Package `androidx.customview`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 209 | 11 |

<details>
<summary><b>Function list for <code>androidx.customview</code></b> (click to expand)</summary>

- **`R`** — 11 function(s): `R()`, `attr()`, `color()`, `dimen()`, `drawable()`, `id()`, `integer()`, `layout()`, `string()`, `style()`, `styleable()`

</details>

### Package `androidx.customview.view`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AbsSavedState` | class | Parcelable | 71 | 16 |

<details>
<summary><b>Function list for <code>androidx.customview.view</code></b> (click to expand)</summary>

- **`AbsSavedState`** — 10 function(s): `createFromParcel()`, `if()`, `IllegalStateException()`, `newArray()`, `describeContents()`, `AbsSavedState()`, `IllegalArgumentException()`, `this()`, `getSuperState()`, `writeToParcel()`

</details>

### Package `androidx.customview.widget`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ExploreByTouchHelper` | class | AccessibilityDelegateCompat | 556 | 160 |
| `FocusStrategy` | class | Comparator<T> | 266 | 81 |
| `ViewDragHelper` | class | — | 860 | 217 |

<details>
<summary><b>Function list for <code>androidx.customview.widget</code></b> (click to expand)</summary>

- **`ExploreByTouchHelper`** — 54 function(s): `obtainBounds()`, `get()`, `size()`, `keyToDirection()`, `switch()`, `getVirtualViewAt()`, `getVisibleVirtualViews()`, `onPerformActionForVirtualView()`, `onPopulateEventForHost()`, `onPopulateEventForVirtualView()`, `onPopulateNodeForHost()`, `onPopulateNodeForVirtualView()`, `onVirtualViewKeyboardFocusChanged()`, `ExploreByTouchHelper()`, `if()`, `IllegalArgumentException()`, `getAccessibilityNodeProvider()`, `dispatchHoverEvent()`, `updateHoveredVirtualView()`, `dispatchKeyEvent()`, `while()`, `clickKeyboardFocusedVirtualView()`, `moveFocus()`, `onFocusChanged()`, `clearKeyboardFocusForVirtualView()`, `getAccessibilityFocusedVirtualViewId()`, `getKeyboardFocusedVirtualViewId()`, `getBoundsInParent()`, `obtainAccessibilityNodeInfo()`, `guessPreviouslyFocusedRect()`, `requestKeyboardFocusForVirtualView()`, `getAllNodes()`, `for()`, `sendEventForVirtualView()`, `invalidateRoot()`, `invalidateVirtualView()`, `getFocusedVirtualView()`, `createEvent()`, `createEventForHost()`, `createEventForChild()`, `onInitializeAccessibilityEvent()`, `RuntimeException()`, `createNodeForHost()`, `createNodeForChild()`, `onInitializeAccessibilityNodeInfo()`, `performAction()`, `performActionForHost()`, `performActionForChild()`, `requestAccessibilityFocus()`, `clearAccessibilityFocus()`, `isVisibleToUser()`, `MyNodeProvider()`, `createAccessibilityNodeInfo()`, `findFocus()`
- **`FocusStrategy`** — 26 function(s): `obtainBounds()`, `get()`, `size()`, `getWeightedDistanceFor()`, `return()`, `findNextFocusInRelativeDirection()`, `for()`, `switch()`, `IllegalArgumentException()`, `getNextFocusable()`, `if()`, `getPreviousFocusable()`, `SequentialComparator()`, `compare()`, `findNextFocusInAbsoluteDirection()`, `isBetterCandidate()`, `beamBeats()`, `isCandidate()`, `beamsOverlap()`, `isToDirectionOf()`, `majorAxisDistance()`, `majorAxisDistanceRaw()`, `majorAxisDistanceToFarEdge()`, `majorAxisDistanceToFarEdgeRaw()`, `minorAxisDistance()`, `FocusStrategy()`
- **`ViewDragHelper`** — 66 function(s): `getInterpolation()`, `return()`, `run()`, `clampViewPositionHorizontal()`, `clampViewPositionVertical()`, `getOrderedChildIndex()`, `getViewHorizontalDragRange()`, `getViewVerticalDragRange()`, `onEdgeDragStarted()`, `onEdgeLock()`, `onEdgeTouched()`, `onViewCaptured()`, `onViewDragStateChanged()`, `onViewPositionChanged()`, `onViewReleased()`, `tryCaptureView()`, `create()`, `ViewDragHelper()`, `if()`, `IllegalArgumentException()`, `setMinVelocity()`, `getMinVelocity()`, `getViewDragState()`, `setEdgeTrackingEnabled()`, `getEdgeSize()`, `captureChildView()`, `setDragState()`, `getCapturedView()`, `getActivePointerId()`, `getTouchSlop()`, `cancel()`, `clearMotionHistory()`, `abort()`, `smoothSlideViewTo()`, `settleCapturedViewAt()`, `IllegalStateException()`, `forceSettleCapturedViewAt()`, `computeSettleDuration()`, `computeAxisDuration()`, `clampMag()`, `distanceInfluenceForSnapDuration()`, `flingCapturedView()`, `continueSettling()`, `dispatchViewReleased()`, `ensureMotionHistorySizeForId()`, `saveInitialMotion()`, `saveLastMotion()`, `for()`, `isPointerDown()`, `tryCaptureViewForDrag()`, `canScroll()`, `shouldInterceptTouchEvent()`, `switch()`, `reportNewEdgeDrags()`, `processTouchEvent()`, `releaseViewForPointerUp()`, `dragTo()`, `while()`, `checkNewEdgeDrag()`, `checkTouchSlop()`, `isEdgeTouched()`, `isCapturedViewUnder()`, `isViewUnder()`, `findTopChildUnder()`, `getEdgesTouched()`, `isValidPointerForActionMove()`

</details>

### Package `androidx.databinding`  (41 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BaseObservable` | class | Observable | 48 | 12 |
| `BaseObservableField` | class | BaseObservable | 31 | 6 |
| `Bindable` | class | — | 14 | 1 |
| `BindingAdapter` | class | — | 13 | 2 |
| `BindingBuildInfo` | class | — | 14 | 1 |
| `BindingConversion` | class | — | 10 | 0 |
| `BindingMethod` | class | — | 15 | 3 |
| `BindingMethods` | class | — | 11 | 1 |
| `CallbackRegistry` | class | Cloneable | 215 | 61 |
| `DataBinderMapper` | class | — | 25 | 5 |
| `DataBinderMapperImpl` | class | MergedDataBinderMapper | 10 | 2 |
| `DataBindingComponent` | class | — | 6 | 0 |
| `DataBindingUtil` | class | — | 134 | 41 |
| `InverseBindingAdapter` | class | — | 13 | 2 |
| `InverseBindingListener` | class | — | 7 | 1 |
| `InverseBindingMethod` | class | — | 17 | 4 |
| `InverseBindingMethods` | class | — | 11 | 1 |
| `InverseMethod` | class | — | 14 | 1 |
| `ListChangeRegistry` | class | CallbackRegistry<ObservableList.OnListChangedCallback, ObservableList, ListChanges> | 93 | 19 |
| `MapChangeRegistry` | class | CallbackRegistry<ObservableMap.OnMapChangedCallback, ObservableMap, Object> | 25 | 5 |
| `MergedDataBinderMapper` | class | DataBinderMapper | 113 | 29 |
| `Observable` | class | — | 15 | 3 |
| `ObservableArrayList` | class | ArrayList<T> implements ObservableList<T> | 113 | 30 |
| `ObservableArrayMap` | class | ArrayMap<K, V> implements ObservableMap<K, V> | 93 | 24 |
| `ObservableBoolean` | class | BaseObservableField implements Parcelable, Serializable | 57 | 13 |
| `ObservableByte` | class | BaseObservableField implements Parcelable, Serializable | 57 | 13 |
| `ObservableChar` | class | BaseObservableField implements Parcelable, Serializable | 57 | 13 |
| `ObservableDouble` | class | BaseObservableField implements Parcelable, Serializable | 57 | 13 |
| `ObservableField` | class | BaseObservableField implements Serializable | 34 | 8 |
| `ObservableFloat` | class | BaseObservableField implements Parcelable, Serializable | 57 | 13 |
| `ObservableInt` | class | BaseObservableField implements Parcelable, Serializable | 57 | 13 |
| `ObservableList` | class | List<T> | 25 | 7 |
| `ObservableLong` | class | BaseObservableField implements Parcelable, Serializable | 57 | 13 |
| `ObservableMap` | class | Map<K, V> | 17 | 3 |
| `ObservableParcelable` | class | Parcelable> extends ObservableField<T> implements Parcelable, Serializable | 41 | 8 |
| `ObservableShort` | class | BaseObservableField implements Parcelable, Serializable | 57 | 13 |
| `OnRebindCallback` | class | ViewDataBinding> | 17 | 3 |
| `PropertyChangeRegistry` | class | CallbackRegistry<Observable.OnPropertyChangedCallback, Observable, Void> | 24 | 5 |
| `Untaggable` | class | — | 11 | 1 |
| `ViewDataBinding` | class | BaseObservable | 1,280 | 317 |
| `ViewStubProxy` | class | — | 63 | 10 |

<details>
<summary><b>Function list for <code>androidx.databinding</code></b> (click to expand)</summary>

- **`BaseObservable`** — 6 function(s): `addOnPropertyChangedCallback()`, `synchronized()`, `if()`, `removeOnPropertyChangedCallback()`, `notifyChange()`, `notifyPropertyChanged()`
- **`BaseObservableField`** — 5 function(s): `BaseObservableField()`, `if()`, `for()`, `DependencyCallback()`, `onPropertyChanged()`
- **`Bindable`** — 1 function(s): `value()`
- **`BindingAdapter`** — 2 function(s): `requireAll()`, `value()`
- **`BindingBuildInfo`** — 1 function(s): `buildId()`
- **`BindingMethod`** — 3 function(s): `attribute()`, `method()`, `type()`
- **`BindingMethods`** — 1 function(s): `value()`
- **`CallbackRegistry`** — 20 function(s): `onNotifyCallback()`, `CallbackRegistry()`, `notifyCallbacks()`, `notifyRecurse()`, `if()`, `for()`, `removeRemovedCallbacks()`, `notifyFirst64()`, `notifyRemainder()`, `while()`, `add()`, `IllegalArgumentException()`, `isRemoved()`, `return()`, `remove()`, `setRemovalBit()`, `copyCallbacks()`, `isEmpty()`, `clear()`, `m5clone()`
- **`DataBinderMapper`** — 4 function(s): `convertBrIdToString()`, `getDataBinder()`, `getLayoutId()`, `collectDependencies()`
- **`DataBinderMapperImpl`** — 2 function(s): `DataBinderMapperImpl()`, `addMapper()`
- **`DataBindingUtil`** — 15 function(s): `DataBindingUtil()`, `setDefaultComponent()`, `getDefaultComponent()`, `inflate()`, `return()`, `if()`, `bind()`, `IllegalArgumentException()`, `findBinding()`, `while()`, `getBinding()`, `setContentView()`, `convertBrIdToString()`, `bindToAddedViews()`, `for()`
- **`InverseBindingAdapter`** — 2 function(s): `attribute()`, `event()`
- **`InverseBindingListener`** — 1 function(s): `onChange()`
- **`InverseBindingMethod`** — 4 function(s): `attribute()`, `event()`, `method()`, `type()`
- **`InverseBindingMethods`** — 1 function(s): `value()`
- **`InverseMethod`** — 1 function(s): `value()`
- **`ListChangeRegistry`** — 12 function(s): `onNotifyCallback()`, `switch()`, `notifyChanged()`, `notifyCallbacks()`, `notifyInserted()`, `notifyMoved()`, `notifyRemoved()`, `acquire()`, `if()`, `ListChangeRegistry()`, `super()`, `ListChanges()`
- **`MapChangeRegistry`** — 5 function(s): `onNotifyCallback()`, `MapChangeRegistry()`, `super()`, `notifyChange()`, `notifyCallbacks()`
- **`MergedDataBinderMapper`** — 8 function(s): `addMapper()`, `if()`, `while()`, `getDataBinder()`, `getLayoutId()`, `convertBrIdToString()`, `loadFeatures()`, `for()`
- **`Observable`** — 3 function(s): `onPropertyChanged()`, `addOnPropertyChangedCallback()`, `removeOnPropertyChangedCallback()`
- **`ObservableArrayList`** — 11 function(s): `addOnListChangedCallback()`, `if()`, `removeOnListChangedCallback()`, `add()`, `notifyAdd()`, `addAll()`, `clear()`, `notifyRemove()`, `remove()`, `set()`, `removeRange()`
- **`ObservableArrayMap`** — 12 function(s): `addOnMapChangedCallback()`, `if()`, `removeOnMapChangedCallback()`, `clear()`, `notifyChange()`, `put()`, `removeAll()`, `while()`, `removeAt()`, `retainAll()`, `for()`, `setValueAt()`
- **`ObservableBoolean`** — 10 function(s): `createFromParcel()`, `ObservableBoolean()`, `newArray()`, `describeContents()`, `super()`, `get()`, `set()`, `if()`, `notifyChange()`, `writeToParcel()`
- **`ObservableByte`** — 10 function(s): `createFromParcel()`, `ObservableByte()`, `newArray()`, `describeContents()`, `super()`, `get()`, `set()`, `if()`, `notifyChange()`, `writeToParcel()`
- **`ObservableChar`** — 10 function(s): `createFromParcel()`, `ObservableChar()`, `newArray()`, `describeContents()`, `super()`, `get()`, `set()`, `if()`, `notifyChange()`, `writeToParcel()`
- **`ObservableDouble`** — 10 function(s): `createFromParcel()`, `ObservableDouble()`, `newArray()`, `describeContents()`, `super()`, `get()`, `set()`, `if()`, `notifyChange()`, `writeToParcel()`
- **`ObservableField`** — 6 function(s): `ObservableField()`, `super()`, `get()`, `set()`, `if()`, `notifyChange()`
- **`ObservableFloat`** — 10 function(s): `createFromParcel()`, `ObservableFloat()`, `newArray()`, `describeContents()`, `super()`, `get()`, `set()`, `if()`, `notifyChange()`, `writeToParcel()`
- **`ObservableInt`** — 10 function(s): `createFromParcel()`, `ObservableInt()`, `newArray()`, `describeContents()`, `super()`, `get()`, `set()`, `if()`, `notifyChange()`, `writeToParcel()`
- **`ObservableList`** — 7 function(s): `onChanged()`, `onItemRangeChanged()`, `onItemRangeInserted()`, `onItemRangeMoved()`, `onItemRangeRemoved()`, `addOnListChangedCallback()`, `removeOnListChangedCallback()`
- **`ObservableLong`** — 10 function(s): `createFromParcel()`, `ObservableLong()`, `newArray()`, `describeContents()`, `super()`, `get()`, `set()`, `if()`, `notifyChange()`, `writeToParcel()`
- **`ObservableMap`** — 3 function(s): `onMapChanged()`, `addOnMapChangedCallback()`, `removeOnMapChangedCallback()`
- **`ObservableParcelable`** — 6 function(s): `createFromParcel()`, `ObservableParcelable()`, `newArray()`, `describeContents()`, `super()`, `writeToParcel()`
- **`ObservableShort`** — 10 function(s): `createFromParcel()`, `ObservableShort()`, `newArray()`, `describeContents()`, `super()`, `get()`, `set()`, `if()`, `notifyChange()`, `writeToParcel()`
- **`OnRebindCallback`** — 3 function(s): `onBound()`, `onCanceled()`, `onPreBind()`
- **`PropertyChangeRegistry`** — 5 function(s): `onNotifyCallback()`, `PropertyChangeRegistry()`, `super()`, `notifyChange()`, `notifyCallbacks()`
- **`Untaggable`** — 1 function(s): `value()`
- **`ViewDataBinding`** — 83 function(s): `run()`, `synchronized()`, `if()`, `create()`, `addListener()`, `getListener()`, `removeListener()`, `setLifecycleOwner()`, `executeBindings()`, `hasPendingBindings()`, `invalidateAll()`, `onFieldChange()`, `setVariable()`, `WeakPropertyListener()`, `WeakListListener()`, `WeakMapListener()`, `LiveDataListener()`, `onNotifyCallback()`, `switch()`, `onViewDetachedFromWindow()`, `onViewAttachedToWindow()`, `ViewDataBinding()`, `IllegalStateException()`, `doFrame()`, `setRootTag()`, `for()`, `getBuildSdkInt()`, `addOnRebindCallback()`, `removeOnRebindCallback()`, `executePendingBindings()`, `executeBindingsInternal()`, `requestRebind()`, `executeBindingsOn()`, `forceExecuteBindings()`, `unbind()`, `getBinding()`, `return()`, `getRoot()`, `handleFieldChange()`, `unregisterFrom()`, `getObservedField()`, `updateRegistration()`, `registerTo()`, `updateLiveDataRegistration()`, `ensureBindingComponentIsNotNull()`, `bind()`, `mapBindings()`, `parse()`, `getColorFromResource()`, `getColorStateListFromResource()`, `getDrawableFromResource()`, `getFromArray()`, `setTo()`, `getFromList()`, `getFrom()`, `setBindingInverseListener()`, `safeUnbox()`, `setContainedBinding()`, `while()`, `findIncludeIndex()`, `findLastMatching()`, `isNumeric()`, `parseTagInt()`, `processReferenceQueue()`, `WeakListener()`, `super()`, `setTarget()`, `unregister()`, `getTarget()`, `getBinder()`, `onPropertyChanged()`, `onChanged()`, `onItemRangeChanged()`, `onItemRangeInserted()`, `onItemRangeMoved()`, `onItemRangeRemoved()`, `onMapChanged()`, `IncludedLayouts()`, `setIncludes()`, `PropertyChangedInverseListener()`, `onChange()`, `OnStartListener()`, `onStart()`
- **`ViewStubProxy`** — 9 function(s): `onInflate()`, `if()`, `ViewStubProxy()`, `setContainingBinding()`, `isInflated()`, `getRoot()`, `getBinding()`, `getViewStub()`, `setOnInflateListener()`

</details>

### Package `androidx.databinding.adapters`  (39 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AbsListViewBindingAdapter` | class | — | 43 | 7 |
| `AbsSeekBarBindingAdapter` | class | — | 13 | 0 |
| `AbsSpinnerBindingAdapter` | class | — | 58 | 9 |
| `ActionMenuViewBindingAdapter` | class | — | 13 | 0 |
| `AdapterViewBindingAdapter` | class | AdapterView.OnItemSelectedListener | 99 | 19 |
| `AutoCompleteTextViewBindingAdapter` | class | — | 56 | 9 |
| `CalendarViewBindingAdapter` | class | — | 38 | 6 |
| `CardViewBindingAdapter` | class | — | 38 | 5 |
| `CheckedTextViewBindingAdapter` | class | — | 13 | 0 |
| `ChronometerBindingAdapter` | class | — | 13 | 0 |
| `CompoundButtonBindingAdapter` | class | — | 41 | 6 |
| `Converters` | class | — | 19 | 3 |
| `DatePickerBindingAdapter` | class | DatePicker.OnDateChangedListener | 70 | 12 |
| `ExpandableListViewBindingAdapter` | class | — | 13 | 0 |
| `FrameLayoutBindingAdapter` | class | — | 13 | 0 |
| `ImageViewBindingAdapter` | class | — | 34 | 4 |
| `LinearLayoutBindingAdapter` | class | — | 13 | 0 |
| `ListenerUtil` | class | — | 55 | 14 |
| `NumberPickerBindingAdapter` | class | — | 41 | 6 |
| `ObservableListAdapter` | class | BaseAdapter | 120 | 24 |
| `ProgressBarBindingAdapter` | class | — | 13 | 0 |
| `RadioGroupBindingAdapter` | class | — | 38 | 6 |
| `RatingBarBindingAdapter` | class | — | 38 | 6 |
| `SearchViewBindingAdapter` | class | — | 94 | 18 |
| `SeekBarBindingAdapter` | class | — | 70 | 14 |
| `SpinnerBindingAdapter` | class | — | 13 | 0 |
| `SwitchBindingAdapter` | class | — | 20 | 1 |
| `SwitchCompatBindingAdapter` | class | — | 18 | 1 |
| `TabHostBindingAdapter` | class | — | 53 | 10 |
| `TabWidgetBindingAdapter` | class | — | 13 | 0 |
| `TableLayoutBindingAdapter` | class | — | 79 | 15 |
| `TextViewBindingAdapter` | class | — | 348 | 77 |
| `TimePickerBindingAdapter` | class | — | 81 | 18 |
| `ToolbarBindingAdapter` | class | — | 13 | 0 |
| `VideoViewBindingAdapter` | class | — | 13 | 0 |
| `ViewBindingAdapter` | class | — | 167 | 31 |
| `ViewGroupBindingAdapter` | class | — | 106 | 21 |
| `ViewStubBindingAdapter` | class | — | 21 | 1 |
| `ZoomControlsBindingAdapter` | class | — | 13 | 0 |

<details>
<summary><b>Function list for <code>androidx.databinding.adapters</code></b> (click to expand)</summary>

- **`AbsListViewBindingAdapter`** — 4 function(s): `onScroll()`, `onScrollStateChanged()`, `setOnScroll()`, `if()`
- **`AbsSpinnerBindingAdapter`** — 3 function(s): `setEntries()`, `if()`, `while()`
- **`AdapterViewBindingAdapter`** — 7 function(s): `onItemSelected()`, `onNothingSelected()`, `setSelectedItemPosition()`, `if()`, `setSelection()`, `setOnItemSelectedListener()`, `OnItemSelectedComponentListener()`
- **`AutoCompleteTextViewBindingAdapter`** — 5 function(s): `fixText()`, `isValid()`, `setValidator()`, `if()`, `setOnItemSelectedListener()`
- **`CalendarViewBindingAdapter`** — 4 function(s): `setDate()`, `if()`, `setListeners()`, `onSelectedDayChange()`
- **`CardViewBindingAdapter`** — 5 function(s): `setContentPadding()`, `setContentPaddingLeft()`, `setContentPaddingTop()`, `setContentPaddingRight()`, `setContentPaddingBottom()`
- **`CompoundButtonBindingAdapter`** — 4 function(s): `setChecked()`, `if()`, `setListeners()`, `onCheckedChanged()`
- **`Converters`** — 3 function(s): `convertColorToDrawable()`, `ColorDrawable()`, `convertColorToColorStateList()`
- **`DatePickerBindingAdapter`** — 4 function(s): `setListeners()`, `if()`, `DateChangedListener()`, `onDateChanged()`
- **`ImageViewBindingAdapter`** — 3 function(s): `setImageUri()`, `if()`, `setImageDrawable()`
- **`ListenerUtil`** — 5 function(s): `trackListener()`, `if()`, `synchronized()`, `return()`, `getListener()`
- **`NumberPickerBindingAdapter`** — 4 function(s): `setValue()`, `if()`, `setListeners()`, `onValueChange()`
- **`ObservableListAdapter`** — 15 function(s): `getItemId()`, `ObservableListAdapter()`, `setList()`, `if()`, `onChanged()`, `onItemRangeChanged()`, `onItemRangeInserted()`, `onItemRangeMoved()`, `onItemRangeRemoved()`, `notifyDataSetChanged()`, `getCount()`, `getItem()`, `getView()`, `getViewForResource()`, `getDropDownView()`
- **`RadioGroupBindingAdapter`** — 4 function(s): `setCheckedButton()`, `if()`, `setListeners()`, `onCheckedChanged()`
- **`RatingBarBindingAdapter`** — 4 function(s): `setRating()`, `if()`, `setListeners()`, `onRatingChanged()`
- **`SearchViewBindingAdapter`** — 7 function(s): `onQueryTextChange()`, `onQueryTextSubmit()`, `onSuggestionClick()`, `onSuggestionSelect()`, `setOnQueryTextListener()`, `if()`, `setOnSuggestListener()`
- **`SeekBarBindingAdapter`** — 6 function(s): `onProgressChanged()`, `onStartTrackingTouch()`, `onStopTrackingTouch()`, `setProgress()`, `if()`, `setOnSeekBarChangeListener()`
- **`SwitchBindingAdapter`** — 1 function(s): `setSwitchTextAppearance()`
- **`SwitchCompatBindingAdapter`** — 1 function(s): `setSwitchTextAppearance()`
- **`TabHostBindingAdapter`** — 7 function(s): `getCurrentTab()`, `getCurrentTabTag()`, `setCurrentTab()`, `if()`, `setCurrentTabTag()`, `setListeners()`, `onTabChanged()`
- **`TableLayoutBindingAdapter`** — 6 function(s): `setCollapseColumns()`, `for()`, `if()`, `setShrinkColumns()`, `setStretchColumns()`, `parseColumns()`
- **`TextViewBindingAdapter`** — 34 function(s): `afterTextChanged()`, `beforeTextChanged()`, `onTextChanged()`, `setText()`, `if()`, `getTextString()`, `setAutoText()`, `setCapitalize()`, `setBufferType()`, `setDigits()`, `setNumeric()`, `setPhoneNumber()`, `setIntrinsicBounds()`, `setDrawableBottom()`, `setDrawableLeft()`, `setDrawableRight()`, `setDrawableTop()`, `setDrawableStart()`, `setDrawableEnd()`, `setImeActionLabel()`, `setInputMethod()`, `setLineSpacingExtra()`, `setLineSpacingMultiplier()`, `setMaxLength()`, `while()`, `setPassword()`, `setShadowColor()`, `setShadowDx()`, `setShadowDy()`, `setShadowRadius()`, `setTextSize()`, `haveContentsChanged()`, `for()`, `setTextWatcher()`
- **`TimePickerBindingAdapter`** — 7 function(s): `setHour()`, `if()`, `setMinute()`, `getHour()`, `getMinute()`, `setListeners()`, `onTimeChanged()`
- **`ViewBindingAdapter`** — 19 function(s): `onViewAttachedToWindow()`, `onViewDetachedFromWindow()`, `pixelsToDimensionPixelSize()`, `if()`, `setPadding()`, `setPaddingBottom()`, `setPaddingEnd()`, `setPaddingLeft()`, `setPaddingRight()`, `setPaddingStart()`, `setPaddingTop()`, `setRequiresFadingEdge()`, `setClickListener()`, `setOnClick()`, `setOnLongClickListener()`, `setOnLongClick()`, `setOnAttachStateChangeListener()`, `setOnLayoutChangeListener()`, `setBackground()`
- **`ViewGroupBindingAdapter`** — 8 function(s): `onAnimationEnd()`, `onAnimationRepeat()`, `onAnimationStart()`, `onChildViewAdded()`, `onChildViewRemoved()`, `setAnimateLayoutChanges()`, `if()`, `setListener()`
- **`ViewStubBindingAdapter`** — 1 function(s): `setOnInflateListener()`

</details>

### Package `androidx.databinding.library`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BuildConfig` | class | — | 12 | 0 |
| `R` | class | — | 16 | 2 |

<details>
<summary><b>Function list for <code>androidx.databinding.library</code></b> (click to expand)</summary>

- **`R`** — 2 function(s): `R()`, `id()`

</details>

### Package `androidx.databinding.library.baseAdapters`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BR` | class | — | 8 | 0 |
| `BuildConfig` | class | — | 12 | 0 |
| `DataBinderMapperImpl` | class | DataBinderMapper | 72 | 13 |
| `R` | class | — | 19 | 2 |

<details>
<summary><b>Function list for <code>androidx.databinding.library.baseAdapters</code></b> (click to expand)</summary>

- **`DataBinderMapperImpl`** — 9 function(s): `getDataBinder()`, `if()`, `RuntimeException()`, `getLayoutId()`, `convertBrIdToString()`, `collectDependencies()`, `ArrayList()`, `InnerBrLookup()`, `InnerLayoutIdLookup()`
- **`R`** — 2 function(s): `R()`, `id()`

</details>

### Package `androidx.documentfile`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.documentfile</code></b> (click to expand)</summary>

- **`R`** — 1 function(s): `R()`

</details>

### Package `androidx.documentfile.provider`  (5 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `DocumentFile` | class | — | 104 | 31 |
| `DocumentsContractApi19` | class | — | 201 | 44 |
| `RawDocumentFile` | class | DocumentFile | 162 | 36 |
| `SingleDocumentFile` | class | DocumentFile | 108 | 22 |
| `TreeDocumentFile` | class | DocumentFile | 195 | 32 |

<details>
<summary><b>Function list for <code>androidx.documentfile.provider</code></b> (click to expand)</summary>

- **`DocumentFile`** — 28 function(s): `canRead()`, `canWrite()`, `createDirectory()`, `createFile()`, `delete()`, `exists()`, `getName()`, `getType()`, `getUri()`, `isDirectory()`, `isFile()`, `isVirtual()`, `lastModified()`, `length()`, `listFiles()`, `renameTo()`, `DocumentFile()`, `fromFile()`, `RawDocumentFile()`, `fromSingleUri()`, `if()`, `SingleDocumentFile()`, `fromTreeUri()`, `TreeDocumentFile()`, `isDocumentUri()`, `getParentFile()`, `findFile()`, `for()`
- **`DocumentsContractApi19`** — 19 function(s): `isVirtual()`, `getName()`, `queryForString()`, `getRawType()`, `getType()`, `if()`, `getFlags()`, `queryForLong()`, `isDirectory()`, `isFile()`, `return()`, `lastModified()`, `length()`, `canRead()`, `canWrite()`, `exists()`, `closeQuietly()`, `queryForInt()`, `DocumentsContractApi19()`
- **`RawDocumentFile`** — 23 function(s): `isVirtual()`, `RawDocumentFile()`, `super()`, `createFile()`, `if()`, `createDirectory()`, `getUri()`, `getName()`, `getType()`, `getTypeForName()`, `isDirectory()`, `isFile()`, `lastModified()`, `length()`, `canRead()`, `canWrite()`, `delete()`, `deleteContents()`, `exists()`, `listFiles()`, `for()`, `return()`, `renameTo()`
- **`SingleDocumentFile`** — 19 function(s): `SingleDocumentFile()`, `super()`, `createFile()`, `UnsupportedOperationException()`, `createDirectory()`, `getUri()`, `getName()`, `getType()`, `isDirectory()`, `isFile()`, `isVirtual()`, `lastModified()`, `length()`, `canRead()`, `canWrite()`, `delete()`, `exists()`, `listFiles()`, `renameTo()`
- **`TreeDocumentFile`** — 22 function(s): `TreeDocumentFile()`, `super()`, `createFile()`, `if()`, `createDirectory()`, `getUri()`, `getName()`, `getType()`, `isDirectory()`, `isFile()`, `isVirtual()`, `lastModified()`, `length()`, `canRead()`, `canWrite()`, `delete()`, `exists()`, `listFiles()`, `while()`, `closeQuietly()`, `for()`, `renameTo()`

</details>

### Package `androidx.drawerlayout`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 209 | 11 |

<details>
<summary><b>Function list for <code>androidx.drawerlayout</code></b> (click to expand)</summary>

- **`R`** — 11 function(s): `R()`, `attr()`, `color()`, `dimen()`, `drawable()`, `id()`, `integer()`, `layout()`, `string()`, `style()`, `styleable()`

</details>

### Package `androidx.drawerlayout.widget`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `DrawerLayout` | class | ViewGroup | 1,730 | 421 |

<details>
<summary><b>Function list for <code>androidx.drawerlayout.widget</code></b> (click to expand)</summary>

- **`DrawerLayout`** — 125 function(s): `onDrawerClosed()`, `onDrawerOpened()`, `onDrawerSlide()`, `onDrawerStateChanged()`, `if()`, `DrawerLayout()`, `this()`, `super()`, `setDescendantFocusability()`, `setFocusableInTouchMode()`, `setMotionEventSplittingEnabled()`, `setOnApplyWindowInsetsListener()`, `onApplyWindowInsets()`, `setSystemUiVisibility()`, `setDrawerElevation()`, `for()`, `getDrawerElevation()`, `setChildInsets()`, `setWillNotDraw()`, `requestLayout()`, `setDrawerShadow()`, `resolveShadowDrawables()`, `invalidate()`, `setScrimColor()`, `setDrawerListener()`, `removeDrawerListener()`, `addDrawerListener()`, `setDrawerLockMode()`, `switch()`, `closeDrawer()`, `openDrawer()`, `IllegalArgumentException()`, `getDrawerLockMode()`, `setDrawerTitle()`, `getDrawerTitle()`, `isInBoundsOfChild()`, `dispatchTransformedGenericPointerEvent()`, `getTransformedMotionEvent()`, `updateDrawerState()`, `dispatchOnDrawerClosed()`, `dispatchOnDrawerOpened()`, `updateChildrenImportantForAccessibility()`, `sendAccessibilityEvent()`, `dispatchOnDrawerSlide()`, `setDrawerViewOffset()`, `getDrawerViewOffset()`, `return()`, `getDrawerViewAbsoluteGravity()`, `checkDrawerViewAbsoluteGravity()`, `findOpenDrawer()`, `moveDrawerToOffset()`, `findDrawerWithGravity()`, `gravityToString()`, `onDetachedFromWindow()`, `onAttachedToWindow()`, `onMeasure()`, `setMeasuredDimension()`, `while()`, `IllegalStateException()`, `resolveLeftShadow()`, `mirror()`, `resolveRightShadow()`, `onLayout()`, `computeScroll()`, `hasOpaqueBackground()`, `setStatusBarBackground()`, `getStatusBarBackgroundDrawable()`, `setStatusBarBackgroundColor()`, `onRtlPropertiesChanged()`, `onDraw()`, `drawChild()`, `isContentView()`, `isDrawerView()`, `onInterceptTouchEvent()`, `closeDrawers()`, `dispatchGenericMotionEvent()`, `onTouchEvent()`, `requestDisallowInterceptTouchEvent()`, `isDrawerOpen()`, `isDrawerVisible()`, `hasPeekingDrawer()`, `generateDefaultLayoutParams()`, `LayoutParams()`, `generateLayoutParams()`, `checkLayoutParams()`, `addFocusables()`, `hasVisibleDrawer()`, `findVisibleDrawer()`, `cancelChildViewTouch()`, `getChildAt()`, `onKeyDown()`, `onKeyUp()`, `onRestoreInstanceState()`, `onSaveInstanceState()`, `addView()`, `includeChildForAccessibility()`, `createFromParcel()`, `SavedState()`, `newArray()`, `writeToParcel()`, `run()`, `onEdgeLock()`, `ViewDragCallback()`, `setDragger()`, `removeCallbacks()`, `tryCaptureView()`, `onViewDragStateChanged()`, `onViewPositionChanged()`, `onViewCaptured()`, `closeOtherDrawer()`, `onViewReleased()`, `onEdgeTouched()`, `peekDrawer()`, `onEdgeDragStarted()`, `getViewHorizontalDragRange()`, `clampViewPositionHorizontal()`, `clampViewPositionVertical()`, `AccessibilityDelegate()`, `onInitializeAccessibilityNodeInfo()`, `copyNodeInfoNoChildren()`, `addChildrenForAccessibility()`, `onInitializeAccessibilityEvent()`, `dispatchPopulateAccessibilityEvent()`, `onRequestSendAccessibilityEvent()`, `ChildAccessibilityDelegate()`

</details>

### Package `androidx.fragment`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 237 | 11 |

<details>
<summary><b>Function list for <code>androidx.fragment</code></b> (click to expand)</summary>

- **`R`** — 11 function(s): `R()`, `attr()`, `color()`, `dimen()`, `drawable()`, `id()`, `integer()`, `layout()`, `string()`, `style()`, `styleable()`

</details>

### Package `androidx.fragment.app`  (23 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BackStackRecord` | class | FragmentTransaction implements FragmentManager.BackStackEntry, FragmentManagerImpl.OpGe... | 848 | 176 |
| `BackStackState` | class | Parcelable | 162 | 14 |
| `DialogFragment` | class | Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener | 286 | 63 |
| `Fragment` | class | ComponentCallbacks, View.OnCreateContextMenuListener, LifecycleOwner, ViewModelStoreOwner | 1,604 | 418 |
| `FragmentActivity` | class | ComponentActivity implements ViewModelStoreOwner, ActivityCompat.OnRequestPermissionsRe... | 674 | 142 |
| `FragmentContainer` | class | — | 20 | 3 |
| `FragmentController` | class | — | 199 | 45 |
| `FragmentHostCallback` | class | FragmentContainer | 138 | 28 |
| `FragmentManager` | class | — | 156 | 48 |
| `FragmentManagerImpl` | class | FragmentManager implements LayoutInflater.Factory2 | 3,010 | 828 |
| `FragmentManagerNonConfig` | class | — | 34 | 4 |
| `FragmentManagerState` | class | Parcelable | 56 | 7 |
| `FragmentPagerAdapter` | class | PagerAdapter | 104 | 22 |
| `FragmentState` | class | Parcelable | 121 | 12 |
| `FragmentStatePagerAdapter` | class | PagerAdapter | 157 | 33 |
| `FragmentTabHost` | class | TabHost implements TabHost.OnTabChangeListener | 300 | 64 |
| `FragmentTransaction` | class | — | 109 | 31 |
| `FragmentTransition` | class | — | 853 | 185 |
| `FragmentTransitionCompat21` | class | FragmentTransitionImpl | 269 | 66 |
| `FragmentTransitionImpl` | class | — | 214 | 59 |
| `ListFragment` | class | Fragment | 229 | 51 |
| `OneShotPreDrawListener` | class | ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener | 51 | 9 |
| `SuperNotCalledException` | class | AndroidRuntimeException | 11 | 2 |

<details>
<summary><b>Function list for <code>androidx.fragment.app</code></b> (click to expand)</summary>

- **`BackStackRecord`** — 58 function(s): `Op()`, `toString()`, `if()`, `dump()`, `for()`, `switch()`, `BackStackRecord()`, `getId()`, `getBreadCrumbTitleRes()`, `getBreadCrumbShortTitleRes()`, `getBreadCrumbTitle()`, `getBreadCrumbShortTitle()`, `addOp()`, `add()`, `doAddOp()`, `IllegalStateException()`, `IllegalArgumentException()`, `replace()`, `remove()`, `hide()`, `show()`, `detach()`, `attach()`, `setPrimaryNavigationFragment()`, `setCustomAnimations()`, `setTransition()`, `addSharedElement()`, `setTransitionStyle()`, `addToBackStack()`, `isAddToBackStackAllowed()`, `disallowAddToBackStack()`, `setBreadCrumbTitle()`, `setBreadCrumbShortTitle()`, `bumpBackStackNesting()`, `runOnCommit()`, `runOnCommitRunnables()`, `commit()`, `commitInternal()`, `commitAllowingStateLoss()`, `commitNow()`, `commitNowAllowingStateLoss()`, `setReorderingAllowed()`, `setAllowOptimization()`, `generateOps()`, `interactsWith()`, `executeOps()`, `executePopOps()`, `expandOps()`, `while()`, `trackAddedFragmentsInPop()`, `isPostponed()`, `setOnStartPostponedListener()`, `isFragmentPostponed()`, `return()`, `getName()`, `getTransition()`, `getTransitionStyle()`, `isEmpty()`
- **`BackStackState`** — 9 function(s): `createFromParcel()`, `BackStackState()`, `newArray()`, `describeContents()`, `if()`, `IllegalStateException()`, `while()`, `instantiate()`, `writeToParcel()`
- **`DialogFragment`** — 31 function(s): `onCancel()`, `setStyle()`, `if()`, `show()`, `showNow()`, `dismiss()`, `dismissInternal()`, `dismissAllowingStateLoss()`, `getFragmentManager()`, `getDialog()`, `getTheme()`, `setCancelable()`, `isCancelable()`, `setShowsDialog()`, `getShowsDialog()`, `onAttach()`, `onDetach()`, `onCreate()`, `onGetLayoutInflater()`, `setupDialog()`, `return()`, `switch()`, `onCreateDialog()`, `Dialog()`, `onDismiss()`, `onActivityCreated()`, `IllegalStateException()`, `onStart()`, `onSaveInstanceState()`, `onStop()`, `onDestroyView()`
- **`Fragment`** — 178 function(s): `onStartEnterTransition()`, `startListening()`, `onActivityResult()`, `onAttachFragment()`, `onContextItemSelected()`, `onCreateAnimation()`, `onCreateAnimator()`, `onCreateOptionsMenu()`, `onCreateView()`, `onDestroyOptionsMenu()`, `onHiddenChanged()`, `onMultiWindowModeChanged()`, `onOptionsItemSelected()`, `onOptionsMenuClosed()`, `onPictureInPictureModeChanged()`, `onPrepareOptionsMenu()`, `onRequestPermissionsResult()`, `onSaveInstanceState()`, `onViewCreated()`, `getLifecycle()`, `getViewLifecycleOwner()`, `if()`, `IllegalStateException()`, `getViewLifecycleOwnerLiveData()`, `getViewModelStore()`, `createFromParcel()`, `SavedState()`, `newArray()`, `describeContents()`, `writeToParcel()`, `InstantiationException()`, `super()`, `instantiate()`, `isSupportFragmentClass()`, `restoreViewState()`, `onViewStateRestored()`, `SuperNotCalledException()`, `setIndex()`, `isInBackStack()`, `equals()`, `hashCode()`, `toString()`, `getId()`, `getTag()`, `setArguments()`, `getArguments()`, `isStateSaved()`, `setInitialSavedState()`, `setTargetFragment()`, `IllegalArgumentException()`, `for()`, `getTargetFragment()`, `getTargetRequestCode()`, `getContext()`, `requireContext()`, `getActivity()`, `return()`, `requireActivity()`, `getHost()`, `requireHost()`, `getResources()`, `getText()`, `getString()`, `getFragmentManager()`, `requireFragmentManager()`, `getChildFragmentManager()`, `instantiateChildFragmentManager()`, `peekChildFragmentManager()`, `getParentFragment()`, `isAdded()`, `isDetached()`, `isRemoving()`, `isInLayout()`, `isResumed()`, `isVisible()`, `isHidden()`, `hasOptionsMenu()`, `isMenuVisible()`, `setRetainInstance()`, `getRetainInstance()`, `setHasOptionsMenu()`, `setMenuVisibility()`, `setUserVisibleHint()`, `getUserVisibleHint()`, `getLoaderManager()`, `startActivity()`, `startActivityForResult()`, `startIntentSenderForResult()`, `requestPermissions()`, `shouldShowRequestPermissionRationale()`, `onGetLayoutInflater()`, `getLayoutInflater()`, `performGetLayoutInflater()`, `onInflate()`, `onAttach()`, `onCreate()`, `restoreChildFragmentState()`, `getView()`, `onActivityCreated()`, `onStart()`, `onResume()`, `onConfigurationChanged()`, `onPause()`, `onStop()`, `onLowMemory()`, `onDestroyView()`, `onDestroy()`, `initState()`, `onDetach()`, `onCreateContextMenu()`, `registerForContextMenu()`, `unregisterForContextMenu()`, `setEnterSharedElementCallback()`, `ensureAnimationInfo()`, `setExitSharedElementCallback()`, `setEnterTransition()`, `getEnterTransition()`, `setReturnTransition()`, `getReturnTransition()`, `setExitTransition()`, `getExitTransition()`, `setReenterTransition()`, `getReenterTransition()`, `setSharedElementEnterTransition()`, `getSharedElementEnterTransition()`, `setSharedElementReturnTransition()`, `getSharedElementReturnTransition()`, `setAllowEnterTransitionOverlap()`, `getAllowEnterTransitionOverlap()`, `setAllowReturnTransitionOverlap()`, `getAllowReturnTransitionOverlap()`, `postponeEnterTransition()`, `startPostponedEnterTransition()`, `run()`, `callStartTransitionListener()`, `dump()`, `findFragmentByWho()`, `onFindViewById()`, `onHasView()`, `performCreate()`, `performCreateView()`, `performActivityCreated()`, `performStart()`, `performResume()`, `noteStateNotSaved()`, `performMultiWindowModeChanged()`, `performPictureInPictureModeChanged()`, `performConfigurationChanged()`, `performLowMemory()`, `performCreateOptionsMenu()`, `performPrepareOptionsMenu()`, `performOptionsItemSelected()`, `performContextItemSelected()`, `performOptionsMenuClosed()`, `performSaveInstanceState()`, `performPause()`, `performStop()`, `performDestroyView()`, `performDestroy()`, `performDetach()`, `setOnStartEnterTransitionListener()`, `getNextAnim()`, `setNextAnim()`, `getNextTransition()`, `setNextTransition()`, `getNextTransitionStyle()`, `getEnterTransitionCallback()`, `getExitTransitionCallback()`, `getAnimatingAway()`, `setAnimatingAway()`, `setAnimator()`, `getAnimator()`, `getStateAfterAnimating()`, `setStateAfterAnimating()`, `isPostponed()`, `isHideReplaced()`, `setHideReplaced()`, `AnimationInfo()`
- **`FragmentActivity`** — 74 function(s): `handleMessage()`, `if()`, `onAttachFragment()`, `onRetainCustomNonConfigurationInstance()`, `NonConfigurationInstances()`, `onActivityResult()`, `onBackPressed()`, `supportFinishAfterTransition()`, `setEnterSharedElementCallback()`, `setExitSharedElementCallback()`, `supportPostponeEnterTransition()`, `supportStartPostponedEnterTransition()`, `onMultiWindowModeChanged()`, `onPictureInPictureModeChanged()`, `onConfigurationChanged()`, `getViewModelStore()`, `IllegalStateException()`, `getLifecycle()`, `onCreate()`, `for()`, `onCreatePanelMenu()`, `onCreateView()`, `dispatchFragmentsOnCreateView()`, `onDestroy()`, `onLowMemory()`, `onMenuItemSelected()`, `onPanelClosed()`, `onPause()`, `onResumeFragments()`, `onNewIntent()`, `onStateNotSaved()`, `onResume()`, `onPostResume()`, `onPreparePanel()`, `onPrepareOptionsPanel()`, `onRetainNonConfigurationInstance()`, `onSaveInstanceState()`, `markFragmentsCreated()`, `onStart()`, `onStop()`, `getLastCustomNonConfigurationInstance()`, `supportInvalidateOptionsMenu()`, `invalidateOptionsMenu()`, `dump()`, `getSupportFragmentManager()`, `getSupportLoaderManager()`, `startActivityForResult()`, `checkForValidRequestCode()`, `startIntentSenderForResult()`, `IllegalArgumentException()`, `validateRequestPermissionsRequestCode()`, `onRequestPermissionsResult()`, `startActivityFromFragment()`, `startIntentSenderFromFragment()`, `allocateRequestIndex()`, `while()`, `requestPermissionsFromFragment()`, `HostCallbacks()`, `super()`, `onDump()`, `onShouldSaveFragmentState()`, `onGetLayoutInflater()`, `onGetHost()`, `onSupportInvalidateOptionsMenu()`, `onStartActivityFromFragment()`, `onStartIntentSenderFromFragment()`, `onRequestPermissionsFromFragment()`, `onShouldShowRequestPermissionRationale()`, `onHasWindowAnimations()`, `onGetWindowAnimations()`, `onFindViewById()`, `onHasView()`, `return()`, `markState()`
- **`FragmentContainer`** — 3 function(s): `onFindViewById()`, `onHasView()`, `instantiate()`
- **`FragmentController`** — 43 function(s): `dispatchReallyStop()`, `doLoaderDestroy()`, `doLoaderRetain()`, `doLoaderStart()`, `doLoaderStop()`, `dumpLoaders()`, `reportLoaderStart()`, `restoreLoaderNonConfig()`, `retainLoaderNonConfig()`, `createController()`, `FragmentController()`, `getSupportFragmentManager()`, `getSupportLoaderManager()`, `UnsupportedOperationException()`, `findFragmentByWho()`, `getActiveFragmentsCount()`, `getActiveFragments()`, `attachHost()`, `onCreateView()`, `noteStateNotSaved()`, `saveAllState()`, `restoreAllState()`, `retainNonConfig()`, `if()`, `retainNestedNonConfig()`, `dispatchCreate()`, `dispatchActivityCreated()`, `dispatchStart()`, `dispatchResume()`, `dispatchPause()`, `dispatchStop()`, `dispatchDestroyView()`, `dispatchDestroy()`, `dispatchMultiWindowModeChanged()`, `dispatchPictureInPictureModeChanged()`, `dispatchConfigurationChanged()`, `dispatchLowMemory()`, `dispatchCreateOptionsMenu()`, `dispatchPrepareOptionsMenu()`, `dispatchOptionsItemSelected()`, `dispatchContextItemSelected()`, `dispatchOptionsMenuClosed()`, `execPendingActions()`
- **`FragmentHostCallback`** — 22 function(s): `onAttachFragment()`, `onDump()`, `onFindViewById()`, `onGetHost()`, `onHasView()`, `onHasWindowAnimations()`, `onRequestPermissionsFromFragment()`, `onShouldSaveFragmentState()`, `onShouldShowRequestPermissionRationale()`, `onSupportInvalidateOptionsMenu()`, `FragmentHostCallback()`, `this()`, `onGetLayoutInflater()`, `onStartActivityFromFragment()`, `if()`, `IllegalStateException()`, `onStartIntentSenderFromFragment()`, `onGetWindowAnimations()`, `getActivity()`, `getContext()`, `getHandler()`, `getFragmentManagerImpl()`
- **`FragmentManager`** — 43 function(s): `getBreadCrumbShortTitle()`, `getBreadCrumbShortTitleRes()`, `getBreadCrumbTitle()`, `getBreadCrumbTitleRes()`, `getId()`, `getName()`, `onFragmentActivityCreated()`, `onFragmentAttached()`, `onFragmentCreated()`, `onFragmentDestroyed()`, `onFragmentDetached()`, `onFragmentPaused()`, `onFragmentPreAttached()`, `onFragmentPreCreated()`, `onFragmentResumed()`, `onFragmentSaveInstanceState()`, `onFragmentStarted()`, `onFragmentStopped()`, `onFragmentViewCreated()`, `onFragmentViewDestroyed()`, `onBackStackChanged()`, `addOnBackStackChangedListener()`, `beginTransaction()`, `dump()`, `executePendingTransactions()`, `findFragmentById()`, `findFragmentByTag()`, `getBackStackEntryAt()`, `getBackStackEntryCount()`, `getFragment()`, `getFragments()`, `getPrimaryNavigationFragment()`, `isDestroyed()`, `isStateSaved()`, `popBackStack()`, `popBackStackImmediate()`, `putFragment()`, `registerFragmentLifecycleCallbacks()`, `removeOnBackStackChangedListener()`, `saveFragmentInstanceState()`, `unregisterFragmentLifecycleCallbacks()`, `openTransaction()`, `enableDebugLogging()`
- **`FragmentManagerImpl`** — 153 function(s): `run()`, `generateOps()`, `reverseTransit()`, `if()`, `transitToStyleIndex()`, `getLayoutInflaterFactory()`, `FragmentLifecycleCallbacksHolder()`, `modifiesAlpha()`, `for()`, `shouldRunOnHWLayer()`, `throwException()`, `dump()`, `beginTransaction()`, `BackStackRecord()`, `executePendingTransactions()`, `forcePostponedTransactions()`, `popBackStack()`, `enqueueAction()`, `popBackStackImmediate()`, `checkStateLoss()`, `IllegalArgumentException()`, `execPendingActions()`, `ensureExecReady()`, `removeRedundantOperationsAndExecute()`, `cleanupExec()`, `doPendingDeferredStart()`, `burpActive()`, `getBackStackEntryCount()`, `getBackStackEntryAt()`, `addOnBackStackChangedListener()`, `removeOnBackStackChangedListener()`, `putFragment()`, `getFragment()`, `getFragments()`, `synchronized()`, `getActiveFragments()`, `getActiveFragmentCount()`, `saveFragmentInstanceState()`, `isDestroyed()`, `toString()`, `makeOpenCloseAnimation()`, `AnimationOrAnimator()`, `makeFadeAnimation()`, `loadAnimation()`, `switch()`, `performPendingDeferredStart()`, `moveToState()`, `setHWLayerAnimListenerIfAlpha()`, `getAnimationListener()`, `return()`, `isStateAtLeast()`, `IllegalStateException()`, `dispatchOnFragmentPreAttached()`, `SuperNotCalledException()`, `dispatchOnFragmentAttached()`, `dispatchOnFragmentPreCreated()`, `dispatchOnFragmentCreated()`, `ensureInflatedFragmentView()`, `dispatchOnFragmentViewCreated()`, `dispatchOnFragmentActivityCreated()`, `dispatchOnFragmentStarted()`, `dispatchOnFragmentResumed()`, `dispatchOnFragmentPaused()`, `dispatchOnFragmentStopped()`, `saveFragmentViewState()`, `dispatchOnFragmentViewDestroyed()`, `animateRemoveFragment()`, `dispatchOnFragmentDestroyed()`, `dispatchOnFragmentDetached()`, `makeInactive()`, `onAnimationEnd()`, `completeShowHideFragment()`, `moveFragmentToExpectedState()`, `startPendingDeferredFragments()`, `makeActive()`, `addFragment()`, `removeFragment()`, `hideFragment()`, `showFragment()`, `detachFragment()`, `attachFragment()`, `findFragmentById()`, `findFragmentByTag()`, `findFragmentByWho()`, `isStateSaved()`, `scheduleCommit()`, `allocBackStackIndex()`, `setBackStackIndex()`, `while()`, `freeBackStackIndex()`, `executePostponedTransaction()`, `execSingleAction()`, `executeOpsTogether()`, `executeOps()`, `addAddedFragments()`, `makeRemovedFragmentsInvisible()`, `reportBackStackChanged()`, `postponePostponableTransactions()`, `completeExecute()`, `findFragmentUnder()`, `endAnimatingAwayFragments()`, `generateOpsForPendingActions()`, `addBackStackState()`, `popBackStackState()`, `retainNonConfig()`, `setRetaining()`, `saveNonConfig()`, `saveFragmentBasicState()`, `dispatchOnFragmentSaveInstanceState()`, `saveAllState()`, `restoreAllState()`, `attachController()`, `noteStateNotSaved()`, `dispatchCreate()`, `dispatchStateChange()`, `dispatchActivityCreated()`, `dispatchStart()`, `dispatchResume()`, `dispatchPause()`, `dispatchStop()`, `dispatchDestroyView()`, `dispatchDestroy()`, `dispatchMultiWindowModeChanged()`, `dispatchPictureInPictureModeChanged()`, `dispatchConfigurationChanged()`, `dispatchLowMemory()`, `dispatchCreateOptionsMenu()`, `dispatchPrepareOptionsMenu()`, `dispatchOptionsItemSelected()`, `dispatchContextItemSelected()`, `dispatchOptionsMenuClosed()`, `setPrimaryNavigationFragment()`, `getPrimaryNavigationFragment()`, `registerFragmentLifecycleCallbacks()`, `unregisterFragmentLifecycleCallbacks()`, `onCreateView()`, `FragmentTag()`, `PopBackStackState()`, `StartEnterTransitionListener()`, `onStartEnterTransition()`, `startListening()`, `isReady()`, `completeTransaction()`, `cancelTransaction()`, `AnimationListenerWrapper()`, `onAnimationStart()`, `onAnimationRepeat()`, `AnimateOnHWLayerIfNeededListener()`, `super()`, `AnimatorOnHWLayerIfNeededListener()`, `EndViewTransitionAnimator()`, `addAnimation()`, `getTransformation()`
- **`FragmentManagerNonConfig`** — 4 function(s): `FragmentManagerNonConfig()`, `getFragments()`, `getChildNonConfigs()`, `getViewModelStores()`
- **`FragmentManagerState`** — 5 function(s): `createFromParcel()`, `FragmentManagerState()`, `newArray()`, `describeContents()`, `writeToParcel()`
- **`FragmentPagerAdapter`** — 15 function(s): `getItem()`, `getItemId()`, `restoreState()`, `saveState()`, `FragmentPagerAdapter()`, `startUpdate()`, `if()`, `IllegalStateException()`, `instantiateItem()`, `destroyItem()`, `setPrimaryItem()`, `finishUpdate()`, `isViewFromObject()`, `return()`, `makeFragmentName()`
- **`FragmentState`** — 7 function(s): `createFromParcel()`, `FragmentState()`, `newArray()`, `describeContents()`, `instantiate()`, `if()`, `writeToParcel()`
- **`FragmentStatePagerAdapter`** — 15 function(s): `getItem()`, `FragmentStatePagerAdapter()`, `startUpdate()`, `if()`, `IllegalStateException()`, `instantiateItem()`, `while()`, `destroyItem()`, `setPrimaryItem()`, `finishUpdate()`, `isViewFromObject()`, `return()`, `saveState()`, `for()`, `restoreState()`
- **`FragmentTabHost`** — 29 function(s): `TabInfo()`, `DummyTabFactory()`, `createTabContent()`, `createFromParcel()`, `SavedState()`, `newArray()`, `super()`, `writeToParcel()`, `toString()`, `FragmentTabHost()`, `initFragmentTabHost()`, `ensureHierarchy()`, `if()`, `addView()`, `setup()`, `IllegalStateException()`, `ensureContent()`, `setId()`, `setOnTabChangedListener()`, `addTab()`, `onAttachedToWindow()`, `for()`, `onDetachedFromWindow()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `setCurrentTabByTag()`, `onTabChanged()`, `doTabChanged()`, `getTabInfoForTag()`
- **`FragmentTransaction`** — 25 function(s): `add()`, `addSharedElement()`, `addToBackStack()`, `attach()`, `commit()`, `commitAllowingStateLoss()`, `commitNow()`, `commitNowAllowingStateLoss()`, `detach()`, `disallowAddToBackStack()`, `hide()`, `isAddToBackStackAllowed()`, `isEmpty()`, `remove()`, `replace()`, `runOnCommit()`, `setAllowOptimization()`, `setBreadCrumbShortTitle()`, `setBreadCrumbTitle()`, `setCustomAnimations()`, `setPrimaryNavigationFragment()`, `setReorderingAllowed()`, `setTransition()`, `setTransitionStyle()`, `show()`
- **`FragmentTransition`** — 38 function(s): `resolveSupportImpl()`, `return()`, `startTransitions()`, `if()`, `for()`, `calculatePopFragments()`, `calculateFragments()`, `configureTransitionsReordered()`, `configureTransitionsOrdered()`, `calculateNameOverrides()`, `setViewVisibility()`, `replaceHide()`, `run()`, `scheduleTargetChange()`, `chooseImpl()`, `IllegalArgumentException()`, `canHandleAll()`, `getSharedElementTransition()`, `getEnterTransition()`, `getExitTransition()`, `configureSharedElementsReordered()`, `addSharedElementsWithMatchingNames()`, `callSharedElementStartEnd()`, `setOutEpicenter()`, `configureSharedElementsOrdered()`, `captureOutSharedElements()`, `captureInSharedElements()`, `retainValues()`, `findKeyForValue()`, `getInEpicenterView()`, `configureEnteringExitingViews()`, `mergeTransitions()`, `addToFirstInLastOut()`, `supportsTransition()`, `switch()`, `ensureContainer()`, `FragmentContainerTransition()`, `FragmentTransition()`
- **`FragmentTransitionCompat21`** — 28 function(s): `canHandle()`, `cloneTransition()`, `if()`, `return()`, `wrapTransitionInSet()`, `setSharedElementTargets()`, `for()`, `bfsAddViewChildren()`, `addTargets()`, `setEpicenter()`, `getBoundsOnScreen()`, `onGetEpicenter()`, `while()`, `hasSimpleTarget()`, `mergeTransitionsTogether()`, `scheduleHideFragmentView()`, `onTransitionCancel()`, `onTransitionPause()`, `onTransitionResume()`, `onTransitionStart()`, `onTransitionEnd()`, `mergeTransitionsInSequence()`, `beginDelayedTransition()`, `scheduleRemoveTargets()`, `swapSharedElementTargets()`, `replaceTargets()`, `addTarget()`, `removeTarget()`
- **`FragmentTransitionImpl`** — 30 function(s): `addTarget()`, `addTargets()`, `beginDelayedTransition()`, `canHandle()`, `cloneTransition()`, `mergeTransitionsInSequence()`, `mergeTransitionsTogether()`, `removeTarget()`, `replaceTargets()`, `scheduleHideFragmentView()`, `scheduleRemoveTargets()`, `setEpicenter()`, `setSharedElementTargets()`, `swapSharedElementTargets()`, `wrapTransitionInSet()`, `getBoundsOnScreen()`, `prepareSetNameOverridesReordered()`, `for()`, `setNameOverridesReordered()`, `if()`, `while()`, `run()`, `captureTransitioningViews()`, `findNamedViews()`, `setNameOverridesOrdered()`, `scheduleNameReset()`, `bfsAddViewChildren()`, `containedBeforeIndex()`, `isNullOrEmpty()`, `findKeyForValue()`
- **`ListFragment`** — 19 function(s): `run()`, `onItemClick()`, `onListItemClick()`, `onCreateView()`, `onViewCreated()`, `ensureList()`, `onDestroyView()`, `setListAdapter()`, `if()`, `setListShown()`, `setSelection()`, `getSelectedItemPosition()`, `getSelectedItemId()`, `getListView()`, `setEmptyText()`, `IllegalStateException()`, `setListShownNoAnimation()`, `getListAdapter()`, `RuntimeException()`
- **`OneShotPreDrawListener`** — 7 function(s): `OneShotPreDrawListener()`, `add()`, `onPreDraw()`, `removeListener()`, `if()`, `onViewAttachedToWindow()`, `onViewDetachedFromWindow()`
- **`SuperNotCalledException`** — 2 function(s): `SuperNotCalledException()`, `super()`

</details>

### Package `androidx.interpolator`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.interpolator</code></b> (click to expand)</summary>

- **`R`** — 1 function(s): `R()`

</details>

### Package `androidx.interpolator.view.animation`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `FastOutLinearInInterpolator` | class | LookupTableInterpolator | 16 | 2 |
| `FastOutSlowInInterpolator` | class | LookupTableInterpolator | 16 | 2 |
| `LinearOutSlowInInterpolator` | class | LookupTableInterpolator | 16 | 2 |
| `LookupTableInterpolator` | class | Interpolator | 28 | 4 |

<details>
<summary><b>Function list for <code>androidx.interpolator.view.animation</code></b> (click to expand)</summary>

- **`FastOutLinearInInterpolator`** — 2 function(s): `FastOutLinearInInterpolator()`, `super()`
- **`FastOutSlowInInterpolator`** — 2 function(s): `FastOutSlowInInterpolator()`, `super()`
- **`LinearOutSlowInInterpolator`** — 2 function(s): `LinearOutSlowInInterpolator()`, `super()`
- **`LookupTableInterpolator`** — 3 function(s): `LookupTableInterpolator()`, `getInterpolation()`, `if()`

</details>

### Package `androidx.legacy.app`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ActionBarDrawerToggle` | class | DrawerLayout.DrawerListener | 349 | 71 |

<details>
<summary><b>Function list for <code>androidx.legacy.app</code></b> (click to expand)</summary>

- **`ActionBarDrawerToggle`** — 27 function(s): `getThemeUpIndicator()`, `setActionBarDescription()`, `setActionBarUpIndicator()`, `getDrawerToggleDelegate()`, `onDrawerStateChanged()`, `ActionBarDrawerToggle()`, `this()`, `assumeMaterial()`, `if()`, `syncState()`, `setHomeAsUpIndicator()`, `setDrawerIndicatorEnabled()`, `isDrawerIndicatorEnabled()`, `onConfigurationChanged()`, `onOptionsItemSelected()`, `onDrawerSlide()`, `onDrawerOpened()`, `onDrawerClosed()`, `SetIndicatorInfo()`, `SlideDrawable()`, `super()`, `setPosition()`, `invalidateSelf()`, `getPosition()`, `setOffset()`, `draw()`, `copyBounds()`

</details>

### Package `androidx.legacy.content`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `WakefulBroadcastReceiver` | class | BroadcastReceiver | 55 | 8 |

<details>
<summary><b>Function list for <code>androidx.legacy.content</code></b> (click to expand)</summary>

- **`WakefulBroadcastReceiver`** — 4 function(s): `startWakefulService()`, `synchronized()`, `if()`, `completeWakefulIntent()`

</details>

### Package `androidx.legacy.coreui`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 237 | 11 |

<details>
<summary><b>Function list for <code>androidx.legacy.coreui</code></b> (click to expand)</summary>

- **`R`** — 11 function(s): `R()`, `attr()`, `color()`, `dimen()`, `drawable()`, `id()`, `integer()`, `layout()`, `string()`, `style()`, `styleable()`

</details>

### Package `androidx.legacy.coreutils`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 209 | 11 |

<details>
<summary><b>Function list for <code>androidx.legacy.coreutils</code></b> (click to expand)</summary>

- **`R`** — 11 function(s): `R()`, `attr()`, `color()`, `dimen()`, `drawable()`, `id()`, `integer()`, `layout()`, `string()`, `style()`, `styleable()`

</details>

### Package `androidx.legacy.widget`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `Space` | class | View | 53 | 14 |

<details>
<summary><b>Function list for <code>androidx.legacy.widget</code></b> (click to expand)</summary>

- **`Space`** — 10 function(s): `draw()`, `Space()`, `super()`, `if()`, `setVisibility()`, `this()`, `getDefaultSize2()`, `return()`, `onMeasure()`, `setMeasuredDimension()`

</details>

### Package `androidx.lifecycle`  (29 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AndroidViewModel` | class | ViewModel | 22 | 3 |
| `ClassesInfoCache` | class | — | 202 | 50 |
| `CompositeGeneratedAdaptersObserver` | class | GenericLifecycleObserver | 27 | 4 |
| `ComputableLiveData` | class | — | 94 | 14 |
| `FullLifecycleObserver` | class | LifecycleObserver | 17 | 6 |
| `FullLifecycleObserverAdapter` | class | GenericLifecycleObserver | 43 | 4 |
| `GeneratedAdapter` | class | — | 11 | 1 |
| `GenericLifecycleObserver` | class | LifecycleObserver | 11 | 1 |
| `Lifecycle` | class | — | 43 | 5 |
| `LifecycleObserver` | class | — | 6 | 0 |
| `LifecycleOwner` | class | — | 10 | 1 |
| `LifecycleRegistry` | class | Lifecycle | 231 | 58 |
| `LifecycleRegistryOwner` | class | LifecycleOwner | 12 | 1 |
| `Lifecycling` | class | — | 141 | 35 |
| `LiveData` | class | LiveData<T>.ObserverWrapper implements GenericLifecycleObserver | 273 | 68 |
| `MediatorLiveData` | class | MutableLiveData<T> | 81 | 15 |
| `MethodCallsLogger` | class | — | 21 | 1 |
| `MutableLiveData` | class | LiveData<T> | 15 | 2 |
| `Observer` | class | — | 7 | 1 |
| `OnLifecycleEvent` | class | — | 15 | 1 |
| `R` | class | — | 8 | 1 |
| `ReflectiveGenericLifecycleObserver` | class | GenericLifecycleObserver | 23 | 2 |
| `ReportFragment` | class | Fragment | 113 | 32 |
| `SingleGeneratedAdapterObserver` | class | GenericLifecycleObserver | 22 | 2 |
| `Transformations` | class | — | 54 | 9 |
| `ViewModel` | class | — | 9 | 1 |
| `ViewModelProvider` | class | Factory | 103 | 23 |
| `ViewModelStore` | class | — | 31 | 5 |
| `ViewModelStoreOwner` | class | — | 10 | 1 |

<details>
<summary><b>Function list for <code>androidx.lifecycle</code></b> (click to expand)</summary>

- **`AndroidViewModel`** — 3 function(s): `AndroidViewModel()`, `getApplication()`, `return()`
- **`ClassesInfoCache`** — 18 function(s): `hasLifecycleMethods()`, `if()`, `for()`, `createInfo()`, `getDeclaredMethods()`, `IllegalArgumentException()`, `getInfo()`, `verifyAndPutHandler()`, `CallbackInfo()`, `invokeCallbacks()`, `invokeMethodsForEvent()`, `MethodReference()`, `invokeCallback()`, `switch()`, `RuntimeException()`, `equals()`, `hashCode()`, `return()`
- **`CompositeGeneratedAdaptersObserver`** — 3 function(s): `CompositeGeneratedAdaptersObserver()`, `onStateChanged()`, `for()`
- **`ComputableLiveData`** — 9 function(s): `compute()`, `ComputableLiveData()`, `this()`, `run()`, `if()`, `while()`, `onActive()`, `getLiveData()`, `invalidate()`
- **`FullLifecycleObserver`** — 6 function(s): `onCreate()`, `onDestroy()`, `onPause()`, `onResume()`, `onStart()`, `onStop()`
- **`FullLifecycleObserverAdapter`** — 4 function(s): `FullLifecycleObserverAdapter()`, `onStateChanged()`, `switch()`, `IllegalArgumentException()`
- **`GeneratedAdapter`** — 1 function(s): `callMethods()`
- **`GenericLifecycleObserver`** — 1 function(s): `onStateChanged()`
- **`Lifecycle`** — 5 function(s): `addObserver()`, `getCurrentState()`, `removeObserver()`, `isAtLeast()`, `compareTo()`
- **`LifecycleOwner`** — 1 function(s): `getLifecycle()`
- **`LifecycleRegistry`** — 26 function(s): `LifecycleRegistry()`, `markState()`, `moveToState()`, `handleLifecycleEvent()`, `if()`, `sync()`, `isSynced()`, `calculateTargetState()`, `min()`, `addObserver()`, `while()`, `pushParentState()`, `popParentState()`, `removeObserver()`, `getObserverCount()`, `getCurrentState()`, `getStateAfter()`, `switch()`, `IllegalArgumentException()`, `downEvent()`, `upEvent()`, `forwardPass()`, `backwardPass()`, `return()`, `ObserverWithState()`, `dispatchEvent()`
- **`LifecycleRegistryOwner`** — 1 function(s): `getLifecycle()`
- **`Lifecycling`** — 15 function(s): `getCallback()`, `if()`, `FullLifecycleObserverAdapter()`, `return()`, `SingleGeneratedAdapterObserver()`, `for()`, `CompositeGeneratedAdaptersObserver()`, `ReflectiveGenericLifecycleObserver()`, `createGeneratedAdapter()`, `RuntimeException()`, `getObserverConstructorType()`, `resolveObserverCallbackType()`, `isLifecycleParent()`, `getAdapterName()`, `Lifecycling()`
- **`LiveData`** — 30 function(s): `run()`, `synchronized()`, `onActive()`, `onInactive()`, `considerNotify()`, `if()`, `dispatchingValue()`, `while()`, `observe()`, `assertMainThread()`, `IllegalArgumentException()`, `observeForever()`, `removeObserver()`, `removeObservers()`, `postValue()`, `setValue()`, `getValue()`, `getVersion()`, `hasObservers()`, `hasActiveObservers()`, `LifecycleBoundObserver()`, `super()`, `shouldBeActive()`, `onStateChanged()`, `activeStateChanged()`, `isAttachedTo()`, `detachObserver()`, `ObserverWrapper()`, `AlwaysActiveObserver()`, `IllegalStateException()`
- **`MediatorLiveData`** — 11 function(s): `addSource()`, `if()`, `IllegalArgumentException()`, `removeSource()`, `onActive()`, `while()`, `onInactive()`, `Source()`, `plug()`, `unplug()`, `onChanged()`
- **`MethodCallsLogger`** — 1 function(s): `approveCall()`
- **`MutableLiveData`** — 2 function(s): `postValue()`, `setValue()`
- **`Observer`** — 1 function(s): `onChanged()`
- **`OnLifecycleEvent`** — 1 function(s): `value()`
- **`R`** — 1 function(s): `R()`
- **`ReflectiveGenericLifecycleObserver`** — 2 function(s): `ReflectiveGenericLifecycleObserver()`, `onStateChanged()`
- **`ReportFragment`** — 16 function(s): `onCreate()`, `onResume()`, `onStart()`, `injectIfNeededIn()`, `if()`, `get()`, `return()`, `dispatchCreate()`, `dispatchStart()`, `dispatchResume()`, `onActivityCreated()`, `dispatch()`, `onPause()`, `onStop()`, `onDestroy()`, `setProcessListener()`
- **`SingleGeneratedAdapterObserver`** — 2 function(s): `SingleGeneratedAdapterObserver()`, `onStateChanged()`
- **`Transformations`** — 5 function(s): `Transformations()`, `map()`, `onChanged()`, `switchMap()`, `if()`
- **`ViewModel`** — 1 function(s): `onCleared()`
- **`ViewModelProvider`** — 10 function(s): `create()`, `ViewModelProvider()`, `this()`, `get()`, `if()`, `IllegalArgumentException()`, `return()`, `RuntimeException()`, `getInstance()`, `AndroidViewModelFactory()`
- **`ViewModelStore`** — 5 function(s): `put()`, `if()`, `get()`, `clear()`, `while()`
- **`ViewModelStoreOwner`** — 1 function(s): `getViewModelStore()`

</details>

### Package `androidx.lifecycle.livedata`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.lifecycle.livedata</code></b> (click to expand)</summary>

- **`R`** — 1 function(s): `R()`

</details>

### Package `androidx.lifecycle.livedata.core`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.lifecycle.livedata.core</code></b> (click to expand)</summary>

- **`R`** — 1 function(s): `R()`

</details>

### Package `androidx.lifecycle.viewmodel`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.lifecycle.viewmodel</code></b> (click to expand)</summary>

- **`R`** — 1 function(s): `R()`

</details>

### Package `androidx.loader`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 209 | 11 |

<details>
<summary><b>Function list for <code>androidx.loader</code></b> (click to expand)</summary>

- **`R`** — 11 function(s): `R()`, `attr()`, `color()`, `dimen()`, `drawable()`, `id()`, `integer()`, `layout()`, `string()`, `style()`, `styleable()`

</details>

### Package `androidx.loader.app`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `LoaderManager` | class | — | 61 | 13 |
| `LoaderManagerImpl` | class | LoaderManager | 465 | 101 |

<details>
<summary><b>Function list for <code>androidx.loader.app</code></b> (click to expand)</summary>

- **`LoaderManager`** — 13 function(s): `onCreateLoader()`, `onLoadFinished()`, `onLoaderReset()`, `destroyLoader()`, `dump()`, `getLoader()`, `hasRunningLoaders()`, `initLoader()`, `markForRedelivery()`, `restartLoader()`, `getInstance()`, `LoaderManagerImpl()`, `enableDebugLogging()`
- **`LoaderManagerImpl`** — 39 function(s): `LoaderInfo()`, `getLoader()`, `onActive()`, `if()`, `onInactive()`, `setCallback()`, `observe()`, `removeObserver()`, `markForRedelivery()`, `isCallbackWaitingForData()`, `return()`, `destroy()`, `onLoadComplete()`, `setValue()`, `postValue()`, `toString()`, `dump()`, `LoaderObserver()`, `onChanged()`, `hasDeliveredData()`, `reset()`, `create()`, `LoaderViewModel()`, `getInstance()`, `startCreatingLoader()`, `isCreatingLoader()`, `finishCreatingLoader()`, `putLoader()`, `removeLoader()`, `hasRunningLoaders()`, `for()`, `onCleared()`, `LoaderManagerImpl()`, `createAndInstallLoader()`, `IllegalArgumentException()`, `initLoader()`, `IllegalStateException()`, `restartLoader()`, `destroyLoader()`

</details>

### Package `androidx.loader.content`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AsyncTaskLoader` | class | Loader<D> | 234 | 54 |
| `CursorLoader` | class | AsyncTaskLoader<Cursor> | 210 | 42 |
| `Loader` | class | ContentObserver | 265 | 63 |
| `ModernAsyncTask` | class | Handler | 253 | 50 |

<details>
<summary><b>Function list for <code>androidx.loader.content</code></b> (click to expand)</summary>

- **`AsyncTaskLoader`** — 28 function(s): `cancelLoadInBackground()`, `loadInBackground()`, `onCanceled()`, `LoadTask()`, `doInBackground()`, `return()`, `if()`, `onPostExecute()`, `onCancelled()`, `run()`, `waitForLoader()`, `AsyncTaskLoader()`, `this()`, `super()`, `setUpdateThrottle()`, `onForceLoad()`, `cancelLoad()`, `executePendingTask()`, `onCancelLoad()`, `dispatchOnCancelled()`, `rollbackContentChanged()`, `deliverCancellation()`, `dispatchOnLoadComplete()`, `commitContentChanged()`, `deliverResult()`, `onLoadInBackground()`, `isLoadInBackgroundCanceled()`, `dump()`
- **`CursorLoader`** — 25 function(s): `loadInBackground()`, `synchronized()`, `if()`, `OperationCanceledException()`, `cancelLoadInBackground()`, `deliverResult()`, `CursorLoader()`, `super()`, `onStartLoading()`, `forceLoad()`, `onStopLoading()`, `cancelLoad()`, `onCanceled()`, `onReset()`, `getUri()`, `setUri()`, `getProjection()`, `setProjection()`, `getSelection()`, `setSelection()`, `getSelectionArgs()`, `setSelectionArgs()`, `getSortOrder()`, `setSortOrder()`, `dump()`
- **`Loader`** — 40 function(s): `onLoadCanceled()`, `onLoadComplete()`, `onAbandon()`, `onCancelLoad()`, `onForceLoad()`, `onReset()`, `onStartLoading()`, `onStopLoading()`, `deliverSelfNotifications()`, `ForceLoadContentObserver()`, `super()`, `onChange()`, `Loader()`, `deliverResult()`, `if()`, `deliverCancellation()`, `getContext()`, `getId()`, `registerListener()`, `IllegalStateException()`, `unregisterListener()`, `IllegalArgumentException()`, `registerOnLoadCanceledListener()`, `unregisterOnLoadCanceledListener()`, `isStarted()`, `isAbandoned()`, `isReset()`, `startLoading()`, `cancelLoad()`, `forceLoad()`, `stopLoading()`, `abandon()`, `reset()`, `takeContentChanged()`, `commitContentChanged()`, `rollbackContentChanged()`, `onContentChanged()`, `dataToString()`, `toString()`, `dump()`
- **`ModernAsyncTask`** — 31 function(s): `newThread()`, `Thread()`, `call()`, `done()`, `RuntimeException()`, `doInBackground()`, `onCancelled()`, `onPostExecute()`, `onPreExecute()`, `onProgressUpdate()`, `getHandler()`, `synchronized()`, `if()`, `setDefaultExecutor()`, `postResultIfNotInvoked()`, `postResult()`, `getStatus()`, `isCancelled()`, `cancel()`, `get()`, `execute()`, `executeOnExecutor()`, `switch()`, `IllegalStateException()`, `publishProgress()`, `finish()`, `InternalHandler()`, `super()`, `handleMessage()`, `WorkerRunnable()`, `AsyncTaskResult()`

</details>

### Package `androidx.localbroadcastmanager`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.localbroadcastmanager</code></b> (click to expand)</summary>

- **`R`** — 1 function(s): `R()`

</details>

### Package `androidx.localbroadcastmanager.content`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `LocalBroadcastManager` | class | — | 274 | 49 |

<details>
<summary><b>Function list for <code>androidx.localbroadcastmanager.content</code></b> (click to expand)</summary>

- **`LocalBroadcastManager`** — 16 function(s): `ReceiverRecord()`, `toString()`, `if()`, `BroadcastRecord()`, `getInstance()`, `synchronized()`, `LocalBroadcastManager()`, `handleMessage()`, `registerReceiver()`, `for()`, `unregisterReceiver()`, `sendBroadcast()`, `while()`, `switch()`, `sendBroadcastSync()`, `executePendingBroadcasts()`

</details>

### Package `androidx.print`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `PrintHelper` | class | PrintDocumentAdapter | 502 | 85 |
| `R` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.print</code></b> (click to expand)</summary>

- **`PrintHelper`** — 32 function(s): `onFinish()`, `systemSupportsPrint()`, `PrintHelper()`, `setScaleMode()`, `getScaleMode()`, `setColorMode()`, `getColorMode()`, `setOrientation()`, `getOrientation()`, `if()`, `printBitmap()`, `PrintBitmapAdapter()`, `onLayout()`, `onWrite()`, `PrintUriAdapter()`, `synchronized()`, `onPreExecute()`, `onCancel()`, `cancel()`, `doInBackground()`, `onPostExecute()`, `onCancelled()`, `cancelLoad()`, `isPortrait()`, `copyAttributes()`, `getMatrix()`, `writeBitmap()`, `loadConstrainedBitmap()`, `IllegalArgumentException()`, `loadBitmap()`, `while()`, `convertBitmapForColorMode()`
- **`R`** — 1 function(s): `R()`

</details>

### Package `androidx.slidingpanelayout`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 209 | 11 |

<details>
<summary><b>Function list for <code>androidx.slidingpanelayout</code></b> (click to expand)</summary>

- **`R`** — 11 function(s): `R()`, `attr()`, `color()`, `dimen()`, `drawable()`, `id()`, `integer()`, `layout()`, `string()`, `style()`, `styleable()`

</details>

### Package `androidx.slidingpanelayout.widget`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `SlidingPaneLayout` | class | ViewGroup | 1,204 | 257 |

<details>
<summary><b>Function list for <code>androidx.slidingpanelayout.widget</code></b> (click to expand)</summary>

- **`SlidingPaneLayout`** — 89 function(s): `onPanelClosed()`, `onPanelOpened()`, `onPanelSlide()`, `SlidingPaneLayout()`, `this()`, `super()`, `setWillNotDraw()`, `setParallaxDistance()`, `requestLayout()`, `getParallaxDistance()`, `setSliderFadeColor()`, `getSliderFadeColor()`, `setCoveredFadeColor()`, `getCoveredFadeColor()`, `setPanelSlideListener()`, `dispatchOnPanelSlide()`, `if()`, `dispatchOnPanelOpened()`, `sendAccessibilityEvent()`, `dispatchOnPanelClosed()`, `updateObscuredViewsVisibility()`, `while()`, `setAllChildrenVisible()`, `for()`, `viewIsOpaque()`, `onAttachedToWindow()`, `onDetachedFromWindow()`, `onMeasure()`, `IllegalStateException()`, `setMeasuredDimension()`, `onLayout()`, `parallaxOtherViews()`, `dimChildView()`, `onSizeChanged()`, `requestChildFocus()`, `onInterceptTouchEvent()`, `onTouchEvent()`, `switch()`, `closePane()`, `openPane()`, `smoothSlideOpen()`, `smoothSlideClosed()`, `isOpen()`, `canSlide()`, `isSlideable()`, `onPanelDragged()`, `invalidateChildRegion()`, `drawChild()`, `smoothSlideTo()`, `computeScroll()`, `setShadowDrawable()`, `setShadowDrawableLeft()`, `setShadowDrawableRight()`, `setShadowResource()`, `setShadowResourceLeft()`, `setShadowResourceRight()`, `draw()`, `canScroll()`, `isDimmed()`, `generateDefaultLayoutParams()`, `LayoutParams()`, `generateLayoutParams()`, `checkLayoutParams()`, `return()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `DragHelperCallback()`, `tryCaptureView()`, `onViewDragStateChanged()`, `onViewCaptured()`, `onViewPositionChanged()`, `onViewReleased()`, `getViewHorizontalDragRange()`, `clampViewPositionHorizontal()`, `clampViewPositionVertical()`, `onEdgeDragStarted()`, `createFromParcel()`, `SavedState()`, `newArray()`, `writeToParcel()`, `AccessibilityDelegate()`, `onInitializeAccessibilityNodeInfo()`, `copyNodeInfoNoChildren()`, `onInitializeAccessibilityEvent()`, `onRequestSendAccessibilityEvent()`, `filter()`, `DisableLayerRunnable()`, `run()`, `isLayoutRtlSupport()`

</details>

### Package `androidx.swiperefreshlayout`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 209 | 11 |

<details>
<summary><b>Function list for <code>androidx.swiperefreshlayout</code></b> (click to expand)</summary>

- **`R`** — 11 function(s): `R()`, `attr()`, `color()`, `dimen()`, `drawable()`, `id()`, `integer()`, `layout()`, `string()`, `style()`, `styleable()`

</details>

### Package `androidx.swiperefreshlayout.widget`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CircleImageView` | class | ImageView | 126 | 24 |
| `CircularProgressDrawable` | class | Drawable implements Animatable | 595 | 127 |
| `SwipeRefreshLayout` | class | ViewGroup implements NestedScrollingParent, NestedScrollingChild | 854 | 199 |

<details>
<summary><b>Function list for <code>androidx.swiperefreshlayout.widget</code></b> (click to expand)</summary>

- **`CircleImageView`** — 17 function(s): `CircleImageView()`, `super()`, `if()`, `setLayerType()`, `setPadding()`, `elevationSupported()`, `onMeasure()`, `setMeasuredDimension()`, `setAnimationListener()`, `onAnimationStart()`, `onAnimationEnd()`, `setBackgroundColorRes()`, `setBackgroundColor()`, `OvalShadow()`, `updateRadialGradient()`, `onResize()`, `draw()`
- **`CircularProgressDrawable`** — 67 function(s): `evaluateColorChange()`, `return()`, `getOpacity()`, `CircularProgressDrawable()`, `setStrokeWidth()`, `setupAnimators()`, `setSizeParameters()`, `setStyle()`, `if()`, `invalidateSelf()`, `getStrokeWidth()`, `getCenterRadius()`, `setCenterRadius()`, `setStrokeCap()`, `getStrokeCap()`, `getArrowWidth()`, `getArrowHeight()`, `setArrowDimensions()`, `getArrowEnabled()`, `setArrowEnabled()`, `getArrowScale()`, `setArrowScale()`, `getStartTrim()`, `getEndTrim()`, `setStartEndTrim()`, `getProgressRotation()`, `setProgressRotation()`, `getBackgroundColor()`, `setBackgroundColor()`, `getColorSchemeColors()`, `setColorSchemeColors()`, `draw()`, `setAlpha()`, `getAlpha()`, `setColorFilter()`, `setRotation()`, `getRotation()`, `isRunning()`, `start()`, `stop()`, `updateRingColor()`, `applyFinishTranslation()`, `applyTransformation()`, `onAnimationUpdate()`, `onAnimationCancel()`, `onAnimationEnd()`, `onAnimationStart()`, `onAnimationRepeat()`, `Ring()`, `drawTriangle()`, `setColors()`, `setColorIndex()`, `getColors()`, `setColor()`, `getNextColor()`, `getNextColorIndex()`, `goToNextColor()`, `setStartTrim()`, `getStartingStartTrim()`, `getStartingEndTrim()`, `getStartingColor()`, `setEndTrim()`, `setShowArrow()`, `getShowArrow()`, `getStartingRotation()`, `storeOriginals()`, `resetOriginals()`
- **`SwipeRefreshLayout`** — 79 function(s): `canChildScrollUp()`, `onRefresh()`, `reset()`, `setColorViewAlpha()`, `if()`, `setAnimationProgress()`, `setTargetOffsetTopAndBottom()`, `setEnabled()`, `onDetachedFromWindow()`, `setProgressViewOffset()`, `getProgressViewStartOffset()`, `getProgressViewEndOffset()`, `setProgressViewEndTarget()`, `setSlingshotDistance()`, `setSize()`, `SwipeRefreshLayout()`, `this()`, `super()`, `onAnimationRepeat()`, `onAnimationStart()`, `onAnimationEnd()`, `applyTransformation()`, `setWillNotDraw()`, `createProgressView()`, `setChildrenDrawingOrderEnabled()`, `setNestedScrollingEnabled()`, `moveToStart()`, `getChildDrawingOrder()`, `addView()`, `setOnRefreshListener()`, `setRefreshing()`, `startScaleUpAnimation()`, `ensureTarget()`, `animateOffsetToCorrectPosition()`, `startScaleDownAnimation()`, `startProgressAlphaStartAnimation()`, `startProgressAlphaMaxAnimation()`, `startAlphaAnimation()`, `setProgressBackgroundColor()`, `setProgressBackgroundColorSchemeResource()`, `setProgressBackgroundColorSchemeColor()`, `setColorScheme()`, `setColorSchemeResources()`, `for()`, `setColorSchemeColors()`, `isRefreshing()`, `setDistanceToTriggerSync()`, `onLayout()`, `onMeasure()`, `getProgressCircleDiameter()`, `setOnChildScrollUpCallback()`, `onInterceptTouchEvent()`, `switch()`, `startDragging()`, `onSecondaryPointerUp()`, `requestDisallowInterceptTouchEvent()`, `onStartNestedScroll()`, `return()`, `onNestedScrollAccepted()`, `startNestedScroll()`, `onNestedPreScroll()`, `moveSpinner()`, `getNestedScrollAxes()`, `onStopNestedScroll()`, `finishSpinner()`, `stopNestedScroll()`, `onNestedScroll()`, `dispatchNestedScroll()`, `isNestedScrollingEnabled()`, `hasNestedScrollingParent()`, `dispatchNestedPreScroll()`, `onNestedPreFling()`, `dispatchNestedPreFling()`, `onNestedFling()`, `dispatchNestedFling()`, `isAnimationRunning()`, `animateOffsetToStartPosition()`, `onTouchEvent()`, `startScaleDownReturnToStartAnimation()`

</details>

### Package `androidx.vectordrawable`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 237 | 11 |

<details>
<summary><b>Function list for <code>androidx.vectordrawable</code></b> (click to expand)</summary>

- **`R`** — 11 function(s): `R()`, `attr()`, `color()`, `dimen()`, `drawable()`, `id()`, `integer()`, `layout()`, `string()`, `style()`, `styleable()`

</details>

### Package `androidx.vectordrawable.graphics.drawable`  (9 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AndroidResources` | class | — | 93 | 1 |
| `Animatable2Compat` | class | Animatable | 47 | 9 |
| `AnimatedVectorDrawableCompat` | class | VectorDrawableCommon implements Animatable2Compat | 726 | 152 |
| `AnimationUtilsCompat` | class | — | 133 | 18 |
| `AnimatorInflaterCompat` | class | — | 627 | 126 |
| `ArgbEvaluator` | class | TypeEvaluator | 32 | 2 |
| `PathInterpolatorCompat` | class | Interpolator | 156 | 40 |
| `VectorDrawableCommon` | class | Drawable implements TintAwareDrawable | 159 | 36 |
| `VectorDrawableCompat` | class | VectorDrawableCommon | 1,573 | 303 |

<details>
<summary><b>Function list for <code>androidx.vectordrawable.graphics.drawable</code></b> (click to expand)</summary>

- **`AndroidResources`** — 1 function(s): `AndroidResources()`
- **`Animatable2Compat`** — 7 function(s): `clearAnimationCallbacks()`, `registerAnimationCallback()`, `unregisterAnimationCallback()`, `onAnimationEnd()`, `onAnimationStart()`, `getPlatformCallback()`, `if()`
- **`AnimatedVectorDrawableCompat`** — 54 function(s): `this()`, `AnimatedVectorDrawableCompat()`, `invalidateDrawable()`, `scheduleDrawable()`, `unscheduleDrawable()`, `if()`, `mutate()`, `create()`, `XmlPullParserException()`, `createFromXmlInner()`, `getConstantState()`, `AnimatedVectorDrawableDelegateState()`, `getChangingConfigurations()`, `draw()`, `invalidateSelf()`, `onBoundsChange()`, `onStateChange()`, `onLevelChange()`, `getAlpha()`, `setAlpha()`, `setColorFilter()`, `setTint()`, `setTintList()`, `setTintMode()`, `setVisible()`, `isStateful()`, `getOpacity()`, `getIntrinsicWidth()`, `getIntrinsicHeight()`, `isAutoMirrored()`, `setAutoMirrored()`, `inflate()`, `while()`, `setupAnimatorsForTarget()`, `IllegalStateException()`, `applyTheme()`, `canApplyTheme()`, `newDrawable()`, `AnimatedVectorDrawableCompatState()`, `for()`, `setupAnimatorSet()`, `setupColorAnimator()`, `isRunning()`, `return()`, `start()`, `stop()`, `unregisterPlatformCallback()`, `registerAnimationCallback()`, `registerPlatformCallback()`, `onAnimationStart()`, `onAnimationEnd()`, `removeAnimatorSetListener()`, `unregisterAnimationCallback()`, `clearAnimationCallbacks()`
- **`AnimationUtilsCompat`** — 9 function(s): `loadInterpolator()`, `if()`, `FastOutLinearInInterpolator()`, `FastOutSlowInInterpolator()`, `LinearOutSlowInInterpolator()`, `createInterpolatorFromXml()`, `while()`, `RuntimeException()`, `AnimationUtilsCompat()`
- **`AnimatorInflaterCompat`** — 27 function(s): `isColorType()`, `loadAnimator()`, `if()`, `PathDataEvaluator()`, `evaluate()`, `IllegalArgumentException()`, `for()`, `getPVH()`, `InflateException()`, `parseAnimatorFromTypeArray()`, `setupObjectAnimator()`, `setupPathMotion()`, `while()`, `createAnimatorFromXml()`, `RuntimeException()`, `loadValues()`, `inferValueTypeOfKeyframe()`, `inferValueTypeFromValues()`, `return()`, `dumpKeyframes()`, `loadPvh()`, `distributeKeyframes()`, `createNewKeyframe()`, `loadKeyframe()`, `switch()`, `loadObjectAnimator()`, `AnimatorInflaterCompat()`
- **`ArgbEvaluator`** — 2 function(s): `getInstance()`, `evaluate()`
- **`PathInterpolatorCompat`** — 12 function(s): `PathInterpolatorCompat()`, `this()`, `parseInterpolatorFromTypeArray()`, `if()`, `InflateException()`, `initPath()`, `initQuad()`, `initCubic()`, `IllegalArgumentException()`, `for()`, `while()`, `getInterpolation()`
- **`VectorDrawableCommon`** — 19 function(s): `setColorFilter()`, `if()`, `getColorFilter()`, `onLevelChange()`, `onBoundsChange()`, `setHotspot()`, `setHotspotBounds()`, `setFilterBitmap()`, `jumpToCurrentState()`, `applyTheme()`, `clearColorFilter()`, `getCurrent()`, `getMinimumWidth()`, `getMinimumHeight()`, `getPadding()`, `getState()`, `getTransparentRegion()`, `setChangingConfigurations()`, `setState()`
- **`VectorDrawableCompat`** — 114 function(s): `mutate()`, `if()`, `getTargetByName()`, `getConstantState()`, `VectorDrawableDelegateState()`, `draw()`, `copyBounds()`, `getAlpha()`, `setAlpha()`, `invalidateSelf()`, `setColorFilter()`, `updateTintFilter()`, `PorterDuffColorFilter()`, `setTint()`, `setTintList()`, `setTintMode()`, `isStateful()`, `onStateChange()`, `getOpacity()`, `getIntrinsicWidth()`, `return()`, `getIntrinsicHeight()`, `canApplyTheme()`, `isAutoMirrored()`, `setAutoMirrored()`, `getPixelSize()`, `create()`, `XmlPullParserException()`, `createFromXmlInner()`, `applyAlpha()`, `inflate()`, `updateStateFromTypedArray()`, `inflateInternal()`, `parseTintModeCompat()`, `switch()`, `while()`, `printGroupTree()`, `for()`, `setAllowCaching()`, `needMirroring()`, `onBoundsChange()`, `getChangingConfigurations()`, `scheduleSelf()`, `setVisible()`, `unscheduleSelf()`, `newDrawable()`, `VectorDrawableCompatState()`, `drawCachedBitmapWithRootAlpha()`, `hasTranslucentRoot()`, `getPaint()`, `updateCachedBitmap()`, `createCachedBitmapIfNeeded()`, `canReuseBitmap()`, `canReuseCache()`, `updateCacheStates()`, `VectorDrawableCompat()`, `onStateChanged()`, `cross()`, `VPathRenderer()`, `setRootAlpha()`, `getRootAlpha()`, `drawGroupTree()`, `drawPath()`, `getMatrixScale()`, `VObject()`, `VGroup()`, `super()`, `IllegalStateException()`, `getGroupName()`, `getLocalMatrix()`, `updateLocalMatrix()`, `getRotation()`, `setRotation()`, `getPivotX()`, `setPivotX()`, `getPivotY()`, `setPivotY()`, `getScaleX()`, `setScaleX()`, `getScaleY()`, `setScaleY()`, `getTranslateX()`, `setTranslateX()`, `getTranslateY()`, `setTranslateY()`, `applyTheme()`, `isClipPath()`, `VPath()`, `printVPath()`, `nodesToString()`, `toPath()`, `getPathName()`, `getPathData()`, `setPathData()`, `VClipPath()`, `VFullPath()`, `getStrokeLineCap()`, `getStrokeLineJoin()`, `getStrokeColor()`, `setStrokeColor()`, `getStrokeWidth()`, `setStrokeWidth()`, `getStrokeAlpha()`, `setStrokeAlpha()`, `getFillColor()`, `setFillColor()`, `getFillAlpha()`, `setFillAlpha()`, `getTrimPathStart()`, `setTrimPathStart()`, `getTrimPathEnd()`, `setTrimPathEnd()`, `getTrimPathOffset()`, `setTrimPathOffset()`

</details>

### Package `androidx.versionedparcelable`  (11 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CustomVersionedParcelable` | class | VersionedParcelable | 16 | 2 |
| `NonParcelField` | class | — | 15 | 0 |
| `ParcelField` | class | — | 16 | 1 |
| `ParcelImpl` | class | Parcelable | 47 | 10 |
| `ParcelUtils` | class | — | 35 | 10 |
| `R` | class | — | 8 | 1 |
| `VersionedParcel` | class | RuntimeException | 944 | 343 |
| `VersionedParcelParcel` | class | VersionedParcel | 214 | 41 |
| `VersionedParcelStream` | class | VersionedParcel | 508 | 107 |
| `VersionedParcelable` | class | — | 9 | 0 |
| `VersionedParcelize` | class | — | 24 | 5 |

<details>
<summary><b>Function list for <code>androidx.versionedparcelable</code></b> (click to expand)</summary>

- **`CustomVersionedParcelable`** — 2 function(s): `onPostParceling()`, `onPreParceling()`
- **`ParcelField`** — 1 function(s): `value()`
- **`ParcelImpl`** — 8 function(s): `createFromParcel()`, `ParcelImpl()`, `newArray()`, `describeContents()`, `getVersionedParcel()`, `return()`, `writeToParcel()`, `VersionedParcelParcel()`
- **`ParcelUtils`** — 9 function(s): `ParcelUtils()`, `toParcelable()`, `ParcelImpl()`, `fromParcelable()`, `if()`, `IllegalArgumentException()`, `return()`, `toOutputStream()`, `fromInputStream()`
- **`R`** — 1 function(s): `R()`
- **`VersionedParcel`** — 88 function(s): `closeField()`, `createSubParcel()`, `isStream()`, `readBoolean()`, `readBundle()`, `readByteArray()`, `readDouble()`, `readField()`, `readFloat()`, `readInt()`, `readLong()`, `readParcelable()`, `readString()`, `readStrongBinder()`, `setOutputField()`, `setSerializationFlags()`, `writeBoolean()`, `writeBundle()`, `writeByteArray()`, `writeDouble()`, `writeFloat()`, `writeInt()`, `writeLong()`, `writeParcelable()`, `writeString()`, `writeStrongBinder()`, `writeStrongInterface()`, `writeByte()`, `writeSize()`, `if()`, `writeSizeF()`, `writeSparseBooleanArray()`, `for()`, `writeBooleanArray()`, `readBooleanArray()`, `writeCharArray()`, `readCharArray()`, `writeIntArray()`, `readIntArray()`, `writeLongArray()`, `readLongArray()`, `writeFloatArray()`, `readFloatArray()`, `writeDoubleArray()`, `readDoubleArray()`, `writeSet()`, `writeCollection()`, `writeList()`, `switch()`, `while()`, `writeVersionedParcelable()`, `writeSerializable()`, `writeArray()`, `getType()`, `IllegalArgumentException()`, `writeVersionedParcelableCreator()`, `writeToParcel()`, `RuntimeException()`, `writeException()`, `writeNoException()`, `throw()`, `readException()`, `return()`, `readExceptionCode()`, `createException()`, `getRootCause()`, `UnsupportedOperationException()`, `NetworkOnMainThreadException()`, `IllegalStateException()`, `NullPointerException()`, `BadParcelableException()`, `SecurityException()`, `readByte()`, `readSize()`, `Size()`, `readSizeF()`, `SizeF()`, `readSparseBooleanArray()`, `readSet()`, `readList()`, `readCollection()`, `readArray()`, `readVersionedParcelable()`, `readSerializable()`, `readFromParcel()`, `findParcelClass()`, `ParcelException()`, `super()`
- **`VersionedParcelParcel`** — 31 function(s): `VersionedParcelParcel()`, `this()`, `readUntilField()`, `while()`, `if()`, `readField()`, `setOutputField()`, `closeField()`, `writeInt()`, `createSubParcel()`, `writeByteArray()`, `writeLong()`, `writeFloat()`, `writeDouble()`, `writeString()`, `writeStrongBinder()`, `writeParcelable()`, `writeBoolean()`, `writeStrongInterface()`, `writeBundle()`, `readInt()`, `readLong()`, `readFloat()`, `readDouble()`, `readString()`, `readStrongBinder()`, `readByteArray()`, `readParcelable()`, `return()`, `readBundle()`, `readBoolean()`
- **`VersionedParcelStream`** — 46 function(s): `isStream()`, `readParcelable()`, `readStrongBinder()`, `VersionedParcelStream()`, `setSerializationFlags()`, `if()`, `RuntimeException()`, `closeField()`, `createSubParcel()`, `readField()`, `while()`, `setOutputField()`, `writeByteArray()`, `writeInt()`, `writeLong()`, `writeFloat()`, `writeDouble()`, `writeString()`, `writeBoolean()`, `writeStrongBinder()`, `writeParcelable()`, `writeStrongInterface()`, `readInt()`, `readLong()`, `readFloat()`, `readDouble()`, `readString()`, `String()`, `readByteArray()`, `readBoolean()`, `writeBundle()`, `for()`, `writeObject()`, `readBundle()`, `readObject()`, `writeArray()`, `writeBooleanArray()`, `writeDoubleArray()`, `writeIntArray()`, `writeLongArray()`, `writeFloatArray()`, `IllegalArgumentException()`, `switch()`, `FieldBuffer()`, `flushField()`, `InputBuffer()`
- **`VersionedParcelize`** — 5 function(s): `allowSerialization()`, `deprecatedIds()`, `ignoreParcelables()`, `isCustom()`, `jetifyAs()`

</details>

### Package `androidx.viewpager`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `R` | class | — | 209 | 11 |

<details>
<summary><b>Function list for <code>androidx.viewpager</code></b> (click to expand)</summary>

- **`R`** — 11 function(s): `R()`, `attr()`, `color()`, `dimen()`, `drawable()`, `id()`, `integer()`, `layout()`, `string()`, `style()`, `styleable()`

</details>

### Package `androidx.viewpager.widget`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `PagerAdapter` | class | — | 111 | 31 |
| `PagerTabStrip` | class | PagerTitleStrip | 230 | 39 |
| `PagerTitleStrip` | class | ViewGroup | 379 | 71 |
| `ViewPager` | class | ViewGroup | 2,344 | 550 |

<details>
<summary><b>Function list for <code>androidx.viewpager.widget</code></b> (click to expand)</summary>

- **`PagerAdapter`** — 19 function(s): `finishUpdate()`, `getCount()`, `getItemPosition()`, `getPageTitle()`, `getPageWidth()`, `isViewFromObject()`, `restoreState()`, `saveState()`, `setPrimaryItem()`, `startUpdate()`, `instantiateItem()`, `destroyItem()`, `UnsupportedOperationException()`, `notifyDataSetChanged()`, `synchronized()`, `if()`, `registerDataSetObserver()`, `unregisterDataSetObserver()`, `setViewPagerObserver()`
- **`PagerTabStrip`** — 22 function(s): `PagerTabStrip()`, `this()`, `super()`, `setPadding()`, `setTextSpacing()`, `setWillNotDraw()`, `onClick()`, `if()`, `setTabIndicatorColor()`, `invalidate()`, `setTabIndicatorColorResource()`, `getTabIndicatorColor()`, `setBackgroundDrawable()`, `setBackgroundColor()`, `setBackgroundResource()`, `setDrawFullUnderline()`, `getDrawFullUnderline()`, `getMinHeight()`, `onTouchEvent()`, `switch()`, `onDraw()`, `updateTextPositions()`
- **`PagerTitleStrip`** — 31 function(s): `SingleLineAllCapsTransform()`, `getTransformation()`, `if()`, `setSingleLineAllCaps()`, `PagerTitleStrip()`, `this()`, `super()`, `addView()`, `setTextSize()`, `setNonPrimaryAlpha()`, `setTextSpacing()`, `requestLayout()`, `getTextSpacing()`, `setTextColor()`, `setGravity()`, `onAttachedToWindow()`, `IllegalStateException()`, `updateAdapter()`, `onDetachedFromWindow()`, `updateText()`, `updateTextPositions()`, `onMeasure()`, `setMeasuredDimension()`, `onLayout()`, `getMinHeight()`, `PageListener()`, `onPageScrolled()`, `onPageSelected()`, `onPageScrollStateChanged()`, `onAdapterChanged()`, `onChanged()`
- **`ViewPager`** — 133 function(s): `compare()`, `getInterpolation()`, `return()`, `onAdapterChanged()`, `onPageScrollStateChanged()`, `onPageScrolled()`, `onPageSelected()`, `transformPage()`, `ItemInfo()`, `ViewPager()`, `super()`, `run()`, `initViewPager()`, `setWillNotDraw()`, `setDescendantFocusability()`, `setFocusable()`, `if()`, `onApplyWindowInsets()`, `for()`, `onDetachedFromWindow()`, `removeCallbacks()`, `setScrollState()`, `enableLayers()`, `dispatchOnScrollStateChanged()`, `setAdapter()`, `removeNonDecorViews()`, `scrollTo()`, `setCurrentItemInternal()`, `populate()`, `requestLayout()`, `while()`, `removeViewAt()`, `getAdapter()`, `addOnAdapterChangeListener()`, `removeOnAdapterChangeListener()`, `getClientWidth()`, `setCurrentItem()`, `getCurrentItem()`, `setScrollingCacheEnabled()`, `dispatchOnPageSelected()`, `scrollToItem()`, `smoothScrollTo()`, `completeScroll()`, `pageScrolled()`, `setOnPageChangeListener()`, `addOnPageChangeListener()`, `removeOnPageChangeListener()`, `clearOnPageChangeListeners()`, `setPageTransformer()`, `setChildrenDrawingOrderEnabled()`, `getChildDrawingOrder()`, `setInternalPageChangeListener()`, `getOffscreenPageLimit()`, `setOffscreenPageLimit()`, `setPageMargin()`, `recomputeScrollPosition()`, `getPageMargin()`, `setPageMarginDrawable()`, `refreshDrawableState()`, `invalidate()`, `verifyDrawable()`, `drawableStateChanged()`, `distanceInfluenceForSnapDuration()`, `addNewItem()`, `dataSetChanged()`, `sortChildDrawingOrder()`, `IllegalStateException()`, `calculatePageOffsets()`, `createFromParcel()`, `SavedState()`, `newArray()`, `writeToParcel()`, `toString()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `addView()`, `addViewInLayout()`, `isDecorView()`, `removeView()`, `removeViewInLayout()`, `infoForChild()`, `infoForAnyChild()`, `infoForPosition()`, `onAttachedToWindow()`, `onMeasure()`, `setMeasuredDimension()`, `onSizeChanged()`, `onLayout()`, `computeScroll()`, `dispatchOnPageScrolled()`, `isGutterDrag()`, `getChildAt()`, `onInterceptTouchEvent()`, `resetTouch()`, `requestParentDisallowInterceptTouchEvent()`, `onSecondaryPointerUp()`, `onTouchEvent()`, `switch()`, `endDrag()`, `performDrag()`, `infoForCurrentScrollPosition()`, `determineTargetPage()`, `draw()`, `onDraw()`, `beginFakeDrag()`, `endFakeDrag()`, `fakeDragBy()`, `isFakeDragging()`, `canScrollHorizontally()`, `canScroll()`, `dispatchKeyEvent()`, `executeKeyEvent()`, `pageLeft()`, `arrowScroll()`, `pageRight()`, `playSoundEffect()`, `getChildRectInPagerCoordinates()`, `addFocusables()`, `addTouchables()`, `onRequestFocusInDescendants()`, `dispatchPopulateAccessibilityEvent()`, `generateDefaultLayoutParams()`, `LayoutParams()`, `generateLayoutParams()`, `checkLayoutParams()`, `MyAccessibilityDelegate()`, `onInitializeAccessibilityEvent()`, `onInitializeAccessibilityNodeInfo()`, `performAccessibilityAction()`, `PagerObserver()`, `onChanged()`, `onInvalidated()`, `ViewPositionComparator()`

</details>

### Package `?`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `package-info` | class | — | 6 | 0 |

<details>
<summary><b>Function list for <code>?</code></b> (click to expand)</summary>


</details>

### Package `com.yftech.vehicle.internal`  (6 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BaseApiManager` | class | — | 57 | 13 |
| `CarData` | class | — | 280 | 52 |
| `CarManager` | class | ISignalCallback.Stub | 511 | 116 |
| `ICarService` | class | IInterface | 182 | 26 |
| `ISignalCallback` | class | IInterface | 84 | 17 |
| `SignalReceiver` | class | — | 20 | 3 |

<details>
<summary><b>Function list for <code>com.yftech.vehicle.internal</code></b> (click to expand)</summary>

- **`BaseApiManager`** — 6 function(s): `getSignalValue()`, `getSignalsValue()`, `getSignalDataValue()`, `setSignalValue()`, `registerReceiver()`, `unregisterReceiver()`
- **`CarData`** — 15 function(s): `CarData()`, `this()`, `if()`, `getBytes()`, `numberValue()`, `isDataValue()`, `dataValue()`, `next()`, `byteValue()`, `return()`, `shortValue()`, `intValue()`, `longValue()`, `floatValue()`, `doubleValue()`
- **`CarManager`** — 32 function(s): `binderDied()`, `if()`, `while()`, `CarManager()`, `get()`, `synchronized()`, `isServiceConnected()`, `getSignalValue()`, `CarData()`, `getSignalsValue()`, `for()`, `getSignalDataValue()`, `setSignalValue()`, `setSignalValueInner()`, `registerReceiver()`, `newOrRetryRegisterSignalCallback()`, `unregisterReceiver()`, `getSignalValueInner()`, `getService()`, `getSignalsValueInner()`, `sendSignalCallback()`, `registerSignalCallback()`, `unregisterSignalCallback()`, `SignalCallback()`, `onValueChanged()`, `isObjectsEqual()`, `isSystemCalss()`, `SignalReceiverHolder()`, `hashCode()`, `return()`, `equals()`, `toString()`
- **`ICarService`** — 15 function(s): `getSignalValue()`, `getSignalsValue()`, `registerSignalCallback()`, `setSignalValue()`, `unregisterSignalCallback()`, `asBinder()`, `Stub()`, `attachInterface()`, `asInterface()`, `if()`, `return()`, `Proxy()`, `onTransact()`, `switch()`, `getInterfaceDescriptor()`
- **`ISignalCallback`** — 10 function(s): `onValueChanged()`, `asBinder()`, `Stub()`, `attachInterface()`, `asInterface()`, `if()`, `return()`, `Proxy()`, `onTransact()`, `getInterfaceDescriptor()`
- **`SignalReceiver`** — 3 function(s): `signalId()`, `signalsIdArray()`, `valueToEnabledState()`

</details>

### Package `com.yftech.vehicle.internal.adapter`  (32 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CarDMS` | class | IBaseApi | 117 | 40 |
| `CarMainifestPermission` | class | — | 7 | 0 |
| `CarMoto` | class | IBaseApi | 171 | 55 |
| `IAirCondition` | class | IBaseApi | 466 | 129 |
| `IBaseApi` | class | — | 80 | 20 |
| `IBaseCmd` | class | — | 80 | 0 |
| `ICanSignals` | class | — | 6 | 0 |
| `ICarBsp` | class | IBaseCmd | 55 | 4 |
| `ICarConfig` | class | — | 1,104 | 575 |
| `ICarDashBoard` | class | AbsDashBoardMsg | 1,172 | 156 |
| `ICarDevice` | class | IBaseApi | 145 | 60 |
| `ICarDoor` | class | IBaseApi | 358 | 100 |
| `ICarDrive` | class | IBaseApi | 422 | 147 |
| `ICarEvDevice` | class | IBaseApi | 566 | 190 |
| `ICarFragrance` | class | IBaseApi | 94 | 25 |
| `ICarIcm` | class | IBaseApi | 246 | 82 |
| `ICarInfo` | class | IBaseApi | 299 | 111 |
| `ICarKey` | class | IBaseCmd | 64 | 4 |
| `ICarLight` | class | IBaseApi | 196 | 48 |
| `ICarMisc` | class | IBaseCmd | 337 | 98 |
| `ICarParking` | class | IBaseApi | 105 | 26 |
| `ICarPower` | class | IBaseCmd | 47 | 17 |
| `ICarSeat` | class | IBaseApi | 434 | 165 |
| `ICarSettings` | class | IBaseApi | 1,231 | 372 |
| `ICarSwc` | class | IBaseApi | 31 | 6 |
| `ICarTBox` | class | IBaseApi | 111 | 39 |
| `ICarTire` | class | IBaseApi | 14 | 0 |
| `ICarWindow` | class | IBaseApi | 215 | 84 |
| `IDemo` | class | IBaseCmd | 6 | 0 |
| `IHostConfig` | class | — | 538 | 225 |
| `IMpuAvm` | class | IBaseCmd | 133 | 47 |
| `IMpuVersion` | class | — | 28 | 0 |

<details>
<summary><b>Function list for <code>com.yftech.vehicle.internal.adapter</code></b> (click to expand)</summary>

- **`CarDMS`** — 29 function(s): `UNAVAILABLE()`, `DRIVER_MONITOR_CAMERA_BLOCKED_BY_STEERINGWHEEL()`, `DRIVER_MONITOR_CAMERA_BLOCKED()`, `DMS_SYS_ERRO()`, `FF_LOSE_TEMPLATES()`, `IR_PROOF_SUNGLASS_DETECTED()`, `__UNKNOWN__()`, `DMSSysErrStatus()`, `valueOf()`, `OFF()`, `PASSIVE()`, `ACTIVE()`, `FAILURE()`, `DMSSwitch()`, `NO_COMMAND()`, `FATIGUE()`, `DISTRACTION()`, `FATIGUE_AND_DISTRACTION()`, `DMSMode()`, `UNKNOWN()`, `ATTENTIVE()`, `CAUTIONARY()`, `SEVERE()`, `MICROSLEEP()`, `DMSFatigWarn()`, `DISTRACTIVE()`, `NO_DISTRACTIVE()`, `SUSPECTED_DISTRACTIVE()`, `DMSDistrWarn()`
- **`CarMoto`** — 32 function(s): `N_GEAR()`, `LEVEL_1()`, `LEVEL_2()`, `LEVEL_3()`, `LEVEL_4()`, `LEVEL_5()`, `LEVEL_6()`, `LEVEL_ERRO()`, `__UNKNOWN__()`, `Gears()`, `valueOf()`, `OFF()`, `BLINK()`, `LEFT_LIGHT()`, `RIGHT_LIGHT()`, `TurnLightInfo()`, `MODE1()`, `MODE2()`, `MODE3()`, `RightModeKey()`, `HandlebarKeyHeat()`, `ON()`, `MOTOIGNStatus()`, `ENTER()`, `PreviewModeKey()`, `RELEASE()`, `GOUP_PRESS()`, `GODOWN_PRESS()`, `KnobUpDownKey()`, `RIGHT_PRESS()`, `LEFT_PRESS()`, `KnobLeftRightKey()`
- **`IAirCondition`** — 80 function(s): `LEVEL_1()`, `LEVEL_2()`, `LEVEL_3()`, `LEVEL_4()`, `LEVEL_5()`, `LEVEL_6()`, `LEVEL_7()`, `OFF()`, `__UNKNOWN__()`, `WindSpeed()`, `valueOf()`, `FACE()`, `FACE_FOOT()`, `FOOT()`, `FOOT_DEFROST()`, `DEFROST()`, `INVALID()`, `WindMode()`, `INNER_AIR_CIRCULATION()`, `OUTSIDE_AIR_CIRCULATION()`, `AUTO_INNER_AIR_CIRCULATION()`, `AUTO_OUT_AIR_CIRCULATION()`, `AirCirculationState()`, `MANUAL_MODE()`, `AUTO_MODE()`, `AutoMode()`, `LOW()`, `NORMAL()`, `HIGH()`, `FanSpeed()`, `AUTO()`, `MANUAL()`, `AirCirculationMode()`, `SOFT()`, `FAST()`, `ComfortCurveMode()`, `COMFORT()`, `ECONOMY()`, `VENT()`, `EcoMode()`, `CHECK_REAR_AC_FREEZEN_STATE()`, `DUALCIRCU_OFF()`, `DUALCIRCU_ON()`, `SYNC()`, `ION()`, `ACMAX()`, `WIND_MODE_FRONT()`, `RDEFROST()`, `FDEFROST()`, `CIRCULATION_MODE()`, `ACST()`, `AUTO_FRONT()`, `WIND_FRONT()`, `PASSENGER_TEMPERATURE()`, `DRIVER_TEMPERATURE()`, `ON_OFF()`, `NOT_REQUEST()`, `AcDisplayPopup()`, `ON()`, `OnOffByVrState()`, `HEAT_MODE()`, `COOL_MODE()`, `NO_COMMAND()`, `CupholderHeatCoolMode()`, `AUTO_MODE_OFF()`, `AUTO_MODE_ON()`, `CupholderAutoMode()`, `AirQualitySnsConfig()`, `HumiditySnsDefAutoConfig()`, `COMFORTSCENE()`, `FAST_COOLING_SCENE()`, `FAST_WARMING_SCENE()`, `SceneDisplay()`, `NOT_ACTIVE()`, `ACTIVE()`, `PM25CleanReqDisplay()`, `REQ()`, `NOT_REQ()`, `PM25CleanReqCfg()`, `IonPopReqDisplay()`
- **`IBaseApi`** — 10 function(s): `DISABLED()`, `ENABLED()`, `__UNKNOWN__()`, `EnableState()`, `valueOf()`, `EnableStateOp()`, `TURN_ON()`, `TURN_OFF()`, `SwitchState()`, `SwitchStateOp()`
- **`ICarBsp`** — 3 function(s): `DisplayDtc()`, `valueOf()`, `toString()`
- **`ICarConfig`** — 437 function(s): `VEHICLE_TYPE()`, `DRIVE_TYPE()`, `GEARBOX_TYPE()`, `VEHICLE_PLATFORM()`, `A_CAN()`, `B_CAN()`, `GPS()`, `ANTENNA()`, `MIC()`, `BCM()`, `HVAC()`, `ICM()`, `PAS()`, `GWM()`, `FCP()`, `PCS()`, `TBOX()`, `VCU()`, `AVAS()`, `RVC()`, `SVM()`, `FL_SPEAKER()`, `FR_SPEAKER()`, `RL_SPEAKER()`, `RR_SPEAKER()`, `STEERING_WHEEL_KEY()`, `FAPA()`, `HUD_SET()`, `EXTERNAL_SVM()`, `OMS()`, `GAC_LOGO()`, `TBOX_CONNECTION_MODE()`, `DMS_CONNECTION_MODE()`, `B_CALL_SWITCH()`, `E_CALL_SWITCH()`, `CALL_BACK()`, `RESTART_VEHICLE_COMMUNICATION_MODULE()`, `LOUDSPEAKER_NUMBER()`, `LOUDSPEAKER_SUPPLIER()`, `EXT_AMPLIFIERS()`, `AVAS_SOUND()`, `AVAS_SWITCH()`, `STORAGE_BOX_AUTOMATICALLY_FLIP_DOWN()`, `HIDDEN_DOOR_HANDLE()`, `WINTER_LONG_DISTANCE()`, `CHARGING_INSULATION()`, `INTELLIGENT_INSULATION_NOTIFICATION()`, `ENERGY_RECOVERY_MODE()`, `ELECTRO_DISCHARGE()`, `ECO_PLUS_MODE()`, `EPEDAL_MODE()`, `CREEP_MODE()`, `ENERGY_CONSUMPTION()`, `MONSTER_MODE_SWITCH()`, `HEALTH_CHARGE_SETTING()`, `DRIVING_MODE()`, `AUTO_MODE_OF_FRS_AND_REC_CONTROL()`, `COMFORT_CURVE()`, `QUALITY_SENSOR()`, `AUTO_DEFORST()`, `FAN_SPEED_OF_AUTO_MODE()`, `SOLAR_FEATURES()`, `FRAGRANCE()`, `ANION()`, `HEAT_PUMP_AIR_CONDITIONING()`, `AIR_CONDITIONING_ZONES()`, `REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING()`, `CONFIG_PM2_5()`, `AIR_CONDITION_TYPE()`, `CAMERA_NUMBER()`, `RADAR_NUMBER()`, `STANDARD_AND_HD_CAMERA_CONFIGURATION()`, `FOLLOW_TRACKING_LINE()`, `LOOK_AROUND_TO_DETECT_THE_DOOR()`, `REMOTE_FINDING_CAR()`, `CONTROL_DAYTIME_RUNNIG_LAMP()`, `SEAT_LAYOUT()`, `BACK_ROW_DISPLAY()`, `HEAD_ACOUSTICS()`, `DVR()`, `AR()`, `TIKTOK()`, `CEILING_SCREEN()`, `ADAPTIVE_HIGH_BEAM()`, `CONTROL_HIGH_BEAM_ASSISTANT()`, `CLOSE_WINDOW_WHILE_LOCK()`, `DOME_LIGHT_IN_DOOR_GEAR_POSITION()`, `CONTROL_SMART_WELCOME_LIGHT()`, `KEY_IDENTIFICATION()`, `FOLLOW_MUSIC_MODE()`, `EASY_OPEN_TAILGATE()`, `SMART_TAILGATE()`, `WIRELESS_CHARGING()`, `ACCESSORY_SMART_SCREEN()`, `PLGMFUNCCFG()`, `NFC()`, `WAL_AND_APU()`, `REMOTE_UNLOCK()`, `SPEED_LOCK()`, `AUTO_UNLOCKING()`, `EXTERIOR_REAR_VIEW_MIRROR_AUTO_FOLDING_AND_UNFOLDING()`, `EXTERIOR_REARVIEW_MIRROR_DIP()`, `REARVIEW_MIRROR_ADJUSTMENT()`, `STEERING_WHEEL_STEERING_HAND_FORCE()`, `ETC_SETTING()`, `WIPER_MAINTANENCE()`, `AUTO_WIPER()`, `LOCK_AND_UNLOCK_WHISTLE_NOTE()`, `LIGHT_TURNED_OFF_DELAY()`, `AMBIENCE_LIGHTS_CONTROL()`, `IAL()`, `DRIVER_EASY_ENTRY_AND_EXIT_FUNCTION()`, `SEAT_CONTROL()`, `ROOF_CONTROL()`, `STEERING_WHEEL_CONTROL()`, `SLIDING_DOOR_CONTROL()`, `WINDOW_CONTROL()`, `STEERING_WHEEL_CUSTOM_BUTTON()`, `LOCK_CONTROL()`, `SLIDING_DOOR_SPEED_ADJUSTMENT()`, `SLIDING_DOOR_CONTROL_MANUAL_AND_AUTOMATIC()`, `NAP_MODE()`, `RAINSTORM_MODE()`, `QISHI_MODE()`, `PARTY_MODE()`, `WAKE_UP_MODE()`, `STEERING_WHEEL_HEATING()`, `LIGHT_SHOW()`, `AMBIENCE_LIGHTS_COMNINATION()`, `PROMPT_TYPE()`, `HIGH_WAY_ASSIST()`, `NAVIGATION_DRIVING_ASSIST()`, `CLUSTER_VOLUME_SETTING()`, `CLUSTER_LANGUAGE_SETTING()`, `CLUSTER_MILEAGE_RESET()`, `CLUSTER_SPEED_UNIT()`, `CLUSTER_TEMPERATURE_UNIT()`, `CLUSTER_PRESSURE_UNIT()`, `REAR_SEAT_BELT_NOTIFICATION()`, `CLUSTER_DEFAULT_SETTING()`, `CLUSTER_FUEL_CONSUMPTION_UNIT()`, `CLUSTER_BACK_LIGHT()`, `TIME_IN_CLUSTER()`, `LANE_AUXILIARY_SWITCH()`, `LANE_ASSIST()`, `AUTO_EMERGENCY_BRAKING_BRAKING()`, `FRONT_COLLISION_WARNING()`, `IFC_CRUISEMODE()`, `BSD()`, `IMR()`, `DOOR_OPEN_WARNING()`, `OVERSPEED_WARNING()`, `SPEED_LIMTED_SIGN_RECOGNITION()`, `STEERING_MODE()`, `DRIVING_RECORDER()`, `EVENT_RECORD_FUNCTION_SWITCH()`, `LCA_CARD()`, `LANE_CHANGE_ASSIST()`, `DRIVER_STATE_OF_ALERT()`, `EMERGENCY_STEERING_MODE()`, `RAEB()`, `ALERT_MODE()`, `EMERGENCY_LANE_KEEPING_ASSIST()`, `REAR_CROSS_TRAFFIC_ALERT()`, `REAR_CROSS_TRAFFIC_ALERT_MODE()`, `REAR_APPROACHING_WARNING()`, `FRONT_CROSS_TRAFFIC_ALERT()`, `FRONT_CROSS_TRAFFIC_ALERT_MODE()`, `APA_VOICE_PROMPT_BUTTON()`, `FORWARD_COLLISION_WARNING_DISTANCE()`, `INDICATED_LANE_CHANGE()`, `OVERSPEED_ALARM_OF_TSR()`, `INTELLIGENT_SPEED_LIMIT_CONTROL()`, `DRIVER_ASSISTANCE_WARNING()`, `DISTRACTED_ALARM_INTERVAL_TIME()`, `TIRED_ALARM_INTERVAL_TIME()`, `APA_ALARM_DELAYED_TIME()`, `ESP_OFF_SWITCH()`, `HDC_SWITCH()`, `EBOOSTER_MODE()`, `DRIVER_MODE()`, `DRIVE_MODE_MEMORY_SWITCH()`, `ENGINE_WAVE_SWITCH()`, `SUSPENSION_DAMPING()`, `THROTTLE_SENSITIVITY()`, `AVDC()`, `ENERGY_RECOVERY()`, `VR_CONTROL_CRUISE()`, `VR_CONTROL_TURNLAMP()`, `VR_CONTROL_SUNSHADE()`, `VR_CONTROL_CARWINDOW()`, `VR_CONTROL_IAL()`, `VR_CONTROL_EXTLIGHT()`, `VR_CONTROL_TOPLIGHT()`, `VR_CONTROL_WIPER_AND_CLEANING()`, `VR_CONTROL_CHARGING_AND_FUEL_TANK_CAP()`, `VR_CONTROL_ENGINE_AND_MOTOR()`, `VR_CONTROL_INSTRUMENT_BACKLIGHT()`, `VR_CONTROL_HVAC()`, `SMART_HVAC()`, `SPORT_PLUS()`, `VR_CONTROL_SEAT_ADJUSTMENT()`, `VR_CONTROL_ROOF()`, `VR_CONTROL_PLGM()`, `VR_CONTROL_DMS_NOTIFICATION()`, `VR_CONTROL_WINDOWPOSITION()`, `VR_CONTROL_ROOFPOSITION()`, `VR_CONTROL()`, `VR_CONTROL_CHARGING_INSULATION_NOTIFICATION()`, `VR_CONTROL_CHARGING_INSULATION_MENU_SWITCH()`, `VR_CONTROL_CHARGING_BOOKING_MENU_SWITCH()`, `VR_CONTROL_CONTROL_DRIVER_MODE()`, `VR_CONTROL_ENERGY_RECOVERY()`, `VR_CONTROL_APA_CONTROL()`, `VR_CONTROL_PARKING()`, `DRIVER_DIRECT_VOICE_WAKE_UP()`, `COLD_AND_WARM_CUP_HOLDER()`, `AUTOHOLD()`, `TECHNOLOGY_SKYLIGHT()`, `ICC()`, `ANC()`, `REAR_APPROACHING_WARNING_MODE()`, `LEFT_RIGHT_HAND_DRIVE_VEHICLES()`, `ONE_CLICK_TO_TURN_ON_OFF_THE_CELLING_LIGHT()`, `RESERCED()`, `HEATING_AND_VENTILATION_FL()`, `HEATING_AND_VENTILATION_FR()`, `HEATING_AND_VENTILATION_RL()`, `HEATING_AND_VENTILATION_RR()`, `SECOND_ROW_SEATS_WELCOME()`, `LIMIT_SECOND_ROW_SEATS_WELCOME_FUNCTION()`, `SECOND_ROW_SEAT_MASSAGE()`, `SECOND_ROW_SEAT_ADJUSTMENT()`, `SECOND_ROW_CHILD_LOCK()`, `PASSENGER_SEAT_ADJUSTMENT()`, `DRIVER_SEAT_CONTROL()`, `SECOND_ROW_SEAT_REST()`, `FL_SEAT_MASSAGE()`, `FR_SEAT_MASSAGE()`, `SPA()`, `ULTRAVIOLET_RAY()`, `UNLOCK_VENTILATION()`, `EVAPORATOR_SELF_DRYING()`, `AIR_CONDITIONING_BLIND_EXERCISE()`, `AIR_CONDITIONING_QUICK_START()`, `RAPID_VENTILATION()`, `HOSPITALITY_LAMP_SIGNALS()`, `TEMPORARY_PARKING_LAMP_SIGNALS()`, `LANE_CHANGE_DRIVER_CONFIRMATION()`, `LANE_CHANGE_STYLE()`, `INDICATED_LANE_CHANGING()`, `FRONT_DISTANCE_DISPLAY()`, `INTELLIGENT_COLLISION_AVOIDANCE()`, `SEAT_LAYOUT_NEW()`, `FEEZE_MODE()`, `CLUSTER_DISTANCE_SETTING()`, `ENERGY_FLOW_MODE()`, `ENERGY_FLOW_DISPLAY()`, `EV_SWITCH_DISPLAY()`, `THE_3D_CHIME_BOOT_SOUND()`, `THE_3D_CHIME_INDICATOR()`, `THE_3D_CHIME_LANE_CHANGE_ASSIT_AND_REAR_APPROACHING_WARNING()`, `THE_3D_CHIME_FRONT_COLLISION_WARNING_SOUND()`, `THE_3D_CHIME_REVERSING_RADAR_SOUND()`, `THE_3D_CHIME_IAL_SOUND()`, `THE_3D_CHIME_DRIVER_MODE_SOUND()`, `ENERGY_CONSUMPTION_APP()`, `SMART_NAVI_DRIVE()`, `SMART_COMMUT_DRIVE()`, `COMFORTABLE_STOP()`, `GUIDANCE_OF_STARTING_VHICLE()`, `__UNKNOWN__()`, `Config()`, `TRADITIONAL_CAR()`, `EV()`, `HEV()`, `PHEV()`, `VehicleType()`, `valueOf()`, `TWO_WHEEL_DRIVE()`, `FOUR_WHEEL_DRIVE()`, `DriveType()`, `MT()`, `AT()`, `WDCT()`, `DDCT()`, `THS()`, `GMC()`, `GearboxType()`, `A75_2_A77()`, `A12()`, `A12_HIGH()`, `A18()`, `A18_HIGH()`, `A55()`, `A60()`, `A13()`, `A18_Y()`, `A60_1()`, `A58()`, `A88()`, `A9E()`, `A79()`, `A8E()`, `A13_Y()`, `T60_G1()`, `T60_G1_HEV()`, `VehiclePlatform()`, `NO_CONNECTION()`, `USB()`, `ETH()`, `TboxConnectionMode()`, `GWM_TO_DMS()`, `ETH_TO_DMS()`, `INTEGRATED_DMS()`, `DmsConnectionMode()`, `FOUR()`, `SIX()`, `EIGHT()`, `TEN()`, `THIRTEEN()`, `TWO()`, `LoudspeakerNumber()`, `LONGDA()`, `FOSTER()`, `ALPINE()`, `HARMAN()`, `YAMAHA()`, `LoudspeakerSupplier()`, `SINGLE_ZONE()`, `DUAL_ZONES()`, `THREE_ZONES()`, `AirConditioningZones()`, `NOT_PRESENT()`, `REAR_DEFROS()`, `REARVIEW_MIRROR_HEATING()`, `RearDefrostAndRearviewMirrorHeating()`, `PRESENT_PM2_5_FILTER()`, `PRESENT_PM2_5_FILTER_AND_SENSOR()`, `ConfigPm25()`, `MANUAL()`, `AUTO()`, `AirConditionType()`, `NONE()`, `SVM_PLUSAPA()`, `SVM_PLUSFAPA()`, `SVM_PLUSAVP()`, `EXTERNAL_AVM()`, `CameraNumber()`, `FRONT_0_REAR_3()`, `FRONT_0_REAR_4()`, `FRONT_2_REAR_3()`, `FRONT_2_REAR_4()`, `FRONT_4_REAR_4()`, `FRONT_4_MID_4_REAR_4()`, `FRONT_6_REAR_6()`, `RadarNumber()`, `STANDARD_DEFINITION()`, `HIGH_DEFINITION()`, `StandardAndHdCameraConfiguration()`, `NO_SHOOTING_FUNCTION()`, `SHOOTING_FUNCTION_PLUSINDOOR_SHOOTING()`, `SHOOTING_FUNCTION_PLUSOUTING_AND_INDOOR_SHOOTING()`, `Tiktok()`, `WAL()`, `APU()`, `WalAndApu()`, `LEFT_FRONT_WINDOW()`, `FOUR_DOOR_WINDOWS()`, `LEFT_AND_RIGHT_FRONT_WINDOW()`, `WindowControl()`, `DRIVER_AND_PASSENGER()`, `DRIVER()`, `PASSENGER()`, `NapMode()`, `SOUND_AND_VOICE()`, `SOUND_AND_VOICE_AND_SEAT_VIBRATION()`, `ALARM_AND_SEAT_VIBRATION_AND_ALARM_AND_SEAT_VIBRATION()`, `PromptType()`, `LEFT()`, `RIGHT()`, `LEFT_AND_RIGHT()`, `LaneChangeAssist()`, `ECO_PLUSCOMFORT_PLUSSPORT()`, `Avdc()`, `VrControlCarwindow()`, `MONOCHROMATIC()`, `INTELLIGENT()`, `VrControlIal()`, `FRONT_WIPER_CLEANING()`, `FRONT_AND_REAR_WIPER_CLEANING()`, `VrControlWiperAndCleaning()`, `NON_ANION_MODE()`, `ANION_MODE()`, `VrControlHvac()`, `PANORAMIC_SUNROOF()`, `NORMAL_SUNROOF()`, `VrControlRoof()`, `VrControlWindowposition()`, `VrControlRoofposition()`, `ONE_ZONE()`, `TWO_ZONE()`, `THREE_ZONE()`, `VrControl()`, `APA()`, `AVP()`, `VrControlParking()`, `VENTILATION_HEATING()`, `VENTILATION()`, `HEATING()`, `HeatingAndVentilationFl()`, `HeatingAndVentilationFr()`, `HeatingAndVentilationRl()`, `HeatingAndVentilationRr()`, `RL()`, `RR()`, `RL_PLUSRR()`, `SecondRowSeatsWelcome()`, `LimitSecondRowSeatsWelcomeFunction()`, `ONE_MIN()`, `FIVE_MIN()`, `TEN_MIN()`, `FIFTEEN_MIN()`, `TWENTY_MIN()`, `TWENTY_FIVE_MIN()`, `THIRTY_MIN()`, `RESERVE()`, `FeezeMode()`, `EIGHT_CONTROL()`, `SIX_CONTROL()`, `DriverSeatControl()`, `LeftRightHandDriveVehicles()`, `SecondRowSeatsControl()`, `FIVE_LAYOUT()`, `SIX_LAYOUT()`, `SEVEN_LAYOUT()`, `SeatLayout()`
- **`ICarDashBoard`** — 38 function(s): `valueOf()`, `toBytes()`, `toString()`, `AbsDashBoardInfo()`, `getDashBoardSource()`, `setDashBoardSource()`, `isInfoDiff()`, `return()`, `setInfoDiff()`, `RadioInfo()`, `super()`, `BtInfo()`, `MediaInfo()`, `if()`, `SetItemUnitInfo()`, `DashBoardDataFormater()`, `get()`, `isSendMediaInfoOnly()`, `getDashBoardSourceDataByteArray()`, `switch()`, `getDashBoardInfoDataByteArray()`, `getDashBoardSourceFormatInfo()`, `while()`, `getDashBoardItemUnitByteArray()`, `getDashBoardLanguageByteArray()`, `getDashBoardMsgDataByteArray()`, `getDataArray()`, `DABInfo()`, `MUTE_MIC()`, `USE_HANDSET()`, `ENDING_CALL()`, `REFUSE_CALL()`, `ANSWER_CALL()`, `__UNKNOWN__()`, `PhoneAction()`, `MODE_12H()`, `MODE_24H()`, `TimeFormatMode()`
- **`ICarDevice`** — 47 function(s): `COMMAND()`, `NO_COMMAND()`, `__UNKNOWN__()`, `RecorderEnterCmd()`, `valueOf()`, `REQ_CANCEL()`, `REQ_ENTER()`, `RVM_VERTICAL_PARKING_VIEW()`, `RVM_PARALLEL_PARKING_VIEW()`, `RVM_REAR_VIEW()`, `SVM_VERTICAL_PARKING_VIEW()`, `SVM_PARALLEL_PARKING_VIEW()`, `SVM_PARKING_GUIDANCE_VIEW()`, `SVM_RIGHT_BLIND_SPOT_VIEW()`, `SVM_LEFT_BLIND_SPOT_VIEW()`, `SVM_ENLARGE_REAR_VIEW()`, `SVM_SURROUND_VIEW_AND_REAR_VIEW()`, `SVM_ENLARGE_FRONT_VIEW()`, `SVM_SURROUND_VIEW_AND_FRONT_VIEW()`, `SVM_HMI_IN_TRANSITION()`, `SvmFunctionCmd()`, `APA()`, `RPA()`, `HAVP()`, `PAVP()`, `RA()`, `CUSTOM_SLOT()`, `PAA()`, `APA_OFF()`, `PAA_OFF()`, `RA_OFF()`, `PAAMode()`, `NONE()`, `IMAGE_PARKING()`, `SPACE_PARKING()`, `PASBackParkDisplayState()`, `BSV_VERTICAL_PARKING_VIEW()`, `BSV_PARALLEL_PARKING_VIEW()`, `BSV_PARKING_GUIDANCE_VIEW()`, `BSV_RIGHT_BLIND_SPOT_VIEW()`, `BSV_LEFT_BLIND_SPOT_VIEW()`, `BSV_ENLARGE_REAR_VIEW()`, `BSV_SURROUND_VIEW_AND_REAR_VIEW()`, `BSV_ENLARGE_FRONT_VIEW()`, `BSV_SURROUND_VIEW_AND_FRONT_VIEW()`, `BSV_HMI_IN_TRANSITION()`, `BsvFunctionCmd()`
- **`ICarDoor`** — 63 function(s): `ALL_DOORS()`, `DRIVER_DOOR()`, `__UNKNOWN__()`, `RemoteUnlockMode()`, `valueOf()`, `NOT_ACTIVE()`, `SATO_ACTIVE()`, `SATO_AND_SOUNDREMINDER_ACTIVE()`, `PEPSAutoTrunkOpenState()`, `LOW_SPEED()`, `HIGH_SPEED()`, `PSDDoorSpeed()`, `CONTROL_1()`, `PLGMControl()`, `LEVEL_1()`, `PLGMMaxLevel()`, `FUNCTION_1()`, `ENABLE()`, `DISABLE()`, `PLGMFunction()`, `CLOSED()`, `OPEN()`, `DoorState()`, `ACTIVE()`, `NOT_USED()`, `NO_COMMAND()`, `AutoUnlockState()`, `FULLY_OPENED()`, `FULLY_CLOSED()`, `OPENING()`, `CLOSING()`, `HOLD()`, `TG_BRAKE()`, `TailDoorState()`, `STOP()`, `FULLY_OPEN()`, `FULLY_CLOSE()`, `OPEN_TWENTY_PERCENT()`, `OPEN_FORTY_PERCENT()`, `OPEN_SIXTY_PERCENT()`, `OPEN_EIGHTY_PERCENT()`, `TailDoorCmd()`, `CLOSE()`, `SlidingDoorCmd()`, `INITIAL_MODE()`, `OPENNING()`, `SlidingDoorOperation()`, `FULL_LATCH()`, `HALF_LATCH()`, `LATCH_OPEN()`, `FULL_OPEN()`, `SlidingDoorState()`, `EngineHoodState()`, `UNLOCK()`, `LOCK()`, `DoorLockState()`, `TERMINATE()`, `BUZZER_TYPE1()`, `BUZZER_TYPE2()`, `BUZZER_TYPE3()`, `BUZZER_TYPE4()`, `BUZZER_TYPE5()`, `DoorLockBuzzerRequest()`
- **`ICarDrive`** — 88 function(s): `NORMAL_MODE()`, `ECO_MODE()`, `SPORT_MODE()`, `OFFROAD_MODE()`, `__UNKNOWN__()`, `DriveModeHev()`, `valueOf()`, `NOT_VALID()`, `ECO_PRO_MODE()`, `COMFORT_MODE()`, `INDIVIDUAL_MODE()`, `SPORT_PLUS_MODE()`, `AI_MODE()`, `ATS_SAND()`, `ATS_MUD()`, `ATS_SNOW()`, `DriveMode()`, `COMFORT()`, `LIGHT()`, `SPORT()`, `EPSStyle()`, `NOT_MEMORY()`, `MEMORY()`, `NOT_USED()`, `MemoryDriveMode()`, `MemoryDriveMode_A9E()`, `ESP_ON()`, `TCS_OFF()`, `ESP_OFF()`, `ESP_FAILURE()`, `TCS_OFF_VDC_OFF()`, `EspState()`, `HDC_OFF()`, `HDC_ON()`, `HDC_FAILURE()`, `HdcState()`, `INVALID()`, `MODEST_MODEL()`, `RADICAL_MODEL()`, `ON_LOW_ADHESION_ROAD()`, `ADAPTIVE_MODEL()`, `OFF()`, `AvdcMode()`, `LEVEL_1()`, `LEVEL_2()`, `LEVEL_3()`, `LEVEL_4()`, `LEVEL_5()`, `GasPedalLevel()`, `NORMAL()`, `WINTER()`, `UPSLOPE_ONE()`, `HOT_ONE()`, `UPSLOPE_TWO()`, `HOT_TWO()`, `WUSP()`, `CRUISE()`, `TIPTRONIC()`, `ECO()`, `HIGH_ALTITUDE()`, `SPORT_PLUS()`, `OFF_ROAD()`, `TcuDriveMode()`, `MANUAL()`, `DriveSystemMode()`, `ON()`, `STANDBY()`, `FAILURE()`, `AutoHoldState()`, `SNOW()`, `MUD()`, `SAND()`, `EspStyle()`, `NOT_READY()`, `READY()`, `IN_TRANSITION()`, `FAULT()`, `EpsModeState()`, `VdcOffState()`, `PASSIVE()`, `ACTIVE_CONTROL()`, `BRAKE_ONLY()`, `OVER_RIDE()`, `STAND_WAIT()`, `MrrAccMode()`, `XDriveMode()`, `NO_COMMAND()`, `CDCStyleMode()`
- **`ICarEvDevice`** — 130 function(s): `VEHICLE_INITIAL()`, `VEHICLE_STANDBY()`, `IDLE_CHARGE()`, `EV()`, `RANGE_EXTEND_MODE1()`, `RANGE_EXTEND_MODE2()`, `ENGINE_MODE()`, `HEV_MODE()`, `REGENERATION_MODE()`, `RANGE_EXTEND_MODE3()`, `HEV_MODE2()`, `REGENERATION_MODE2()`, `__UNKNOWN__()`, `PowerFlowMode()`, `valueOf()`, `NO_COMMAND()`, `PERC_50()`, `PERC_55()`, `PERC_60()`, `PERC_65()`, `PERC_70()`, `PERC_75()`, `PERC_80()`, `PERC_85()`, `PERC_90()`, `PERC_95()`, `PERC_100()`, `ChargeSocPercent()`, `HOUR_1()`, `HOUR_2()`, `HOUR_3()`, `HOUR_4()`, `HOUR_5()`, `HOUR_6()`, `HOUR_7()`, `HOUR_8()`, `HOUR_9()`, `HOUR_10()`, `HOUR_11()`, `ON()`, `OFF()`, `ChargeWarmTime()`, `NO_NOTICE()`, `LEVEL_2()`, `LEVEL_3()`, `ChargeFullNoticeLevel()`, `NOTICE()`, `HealCheckNotice()`, `NOT_VALID()`, `LEVEL_0_OFF()`, `LEVEL_1_LOW()`, `LEVEL_2_MIDDLE()`, `LEVEL_3_HIGH()`, `RecuperationLevel()`, `LEVEL_1_OFF()`, `LEVEL_2_LOW()`, `LEVEL_3_MIDDLE()`, `LEVEL_4_HIGH()`, `RecuperationLevelA9E()`, `L0_L3()`, `L0_L1_AND_L2()`, `L0()`, `ALL_AVAILABLE()`, `RecpLevelAvail()`, `INVALID()`, `ECO_PLUS_MODE()`, `ECO_MODE()`, `NORMAL_MODE()`, `DRIVING_MODE()`, `SPORT_MODE()`, `IPEDAL_ON()`, `IPEDAL_OFF()`, `DriveModeEv()`, `EcoPlusMode()`, `IMMEDIATELY()`, `BOOKING()`, `ChargeMode()`, `NOT_REPEAT()`, `RepeatBookMode()`, `NORMAL()`, `INTELLIGENT_HYBRID()`, `ELECTICITY_DRIVE_FIRST()`, `ELECTICITY_CONSERVATION()`, `EnergyModel()`, `NO_REQUEST()`, `ENGINE_START_ENABLE()`, `ENGINE_START_DISABLE()`, `EngStartCfg()`, `NOT_AUTO_UNLOCK()`, `AUTO_UNLOCK()`, `PlugAutoUnlockCfg()`, `CHARGE_CURRENT_VOLTAGE_INTERFACE()`, `BLANK_MODULE_INTERFACE()`, `ChargState()`, `NOT_CHARGING()`, `CHARGING()`, `ChargActive()`, `END_CHARGE()`, `ChargEnd()`, `NO_INFORMATION()`, `SET_SUCCEED_DISCHARGE_ALLOW()`, `LOWER_THAN_SET_DISCHARGE_NOT_ALLOW()`, `LOWER_OIL_SET_ENGINE_NOT_ALLOW()`, `DischgSetInfo()`, `DISCONNECTED()`, `HALF_CONNECTED_CHARGING_V2V_V2L()`, `CONNECTED_CHARGING_V2V()`, `CONNECTED_V2L()`, `ObcConnState()`, `PROGRESS_0()`, `PROGRESS_1()`, `PROGRESS_2()`, `PROGRESS_3()`, `PROGRESS_4()`, `PROGRESS_5()`, `PROGRESS_6()`, `PROGRESS_7()`, `PROGRESS_8()`, `SocProgress()`, `LEVEL_1()`, `LEVEL_4()`, `LEVEL_5()`, `GasPedalLevel()`, `MODEST_MODEL()`, `RADICAL_MODEL()`, `ON_LOW_ADHESION_ROAD()`, `ADAPTIVE_MODEL()`, `AvdcMode()`, `INVALID_MODE()`, `XDriveMode()`
- **`ICarFragrance`** — 18 function(s): `NO_COMMAND()`, `TASTE_A()`, `TASTE_B()`, `TASTE_C()`, `__UNKNOWN__()`, `FragranceTaste()`, `valueOf()`, `OFF()`, `LOW()`, `MID()`, `HIGH()`, `FragranceConcentration()`, `RUN()`, `NOT_RUN()`, `FragranceWorkState()`, `RATIO_NEARLY_USE_UP_WARNING()`, `RATIO_USE_UP_WARNING()`, `FragranceWorkWarn()`
- **`ICarIcm`** — 66 function(s): `LEVEL_1()`, `LEVEL_2()`, `LEVEL_3()`, `LEVEL_4()`, `LEVEL_5()`, `LEVEL_6()`, `LEVEL_7()`, `LEVEL_8()`, `__UNKNOWN__()`, `BackLightLevel()`, `valueOf()`, `CELSIUS()`, `FAHRENHEIT()`, `TemperatureUnit()`, `K_PA()`, `BAR()`, `PSI()`, `PressureUnit()`, `CHINESE()`, `ENGLISH()`, `RUSSIAN()`, `ARABIC()`, `SPANISH()`, `PORTUGUESE()`, `INDONESIAN()`, `CHINESE_TRADITIONAL()`, `VIETNAMENSE()`, `THAI()`, `MALAY()`, `FRENCH()`, `ITALY()`, `Language()`, `L_PER_100KM_AND_KM()`, `MPG_GB_AND_M()`, `MPG_US_AND_M()`, `KM_L_AND_KM()`, `FuelEconomyAndDistanceUnit()`, `LOW()`, `MIDDLE()`, `HIGH()`, `MeterVolumeMode()`, `OFF()`, `USB_MUSIC()`, `BT_MUSIC()`, `CARPLAY_MUSIC()`, `CurrentSource()`, `NO_COMMAND()`, `STOPWATCH_START()`, `STOPWATCH_STOP()`, `POWER_START()`, `POWER_STOP()`, `NAV_START()`, `NAV_STOP()`, `MEDIA_START()`, `MEDIA_STOP()`, `ICMShowPageSetting()`, `NO_LVDS()`, `MAINDISPLAYZONE_ON()`, `SLAVEDISPLAYZONE_ON()`, `ALLDISPLAYZONE_ON()`, `STOPWATCH_DISPLAY()`, `POWER_DISPLAY()`, `NAVI_DISPLAY()`, `MEDIA_DISPLAY()`, `FACE_ID_DISPLAY()`, `ICMCurrentShowPage()`
- **`ICarInfo`** — 74 function(s): `ACC()`, `ON()`, `CRANK()`, `OFF()`, `__UNKNOWN__()`, `PowerMode()`, `valueOf()`, `LEVEL_1()`, `LEVEL_2()`, `LEVEL_3()`, `LEVEL_4()`, `LEVEL_5()`, `LowBatteryWarningLevel()`, `NOT_ENGAGED()`, `ENGAGED()`, `RearGearState()`, `GEAR_FIRST()`, `GEAR_TOW()`, `GEAR_THIRD()`, `GEAR_FOUR()`, `GEAR_FIVE()`, `GEAR_SIX()`, `GEAR_SEVEN()`, `GEAR_EIGHT()`, `GEAR_NINE()`, `SPORT()`, `PARKING()`, `REVERSE()`, `NEUTRAL()`, `DRIVE()`, `MANUAL_MODE()`, `L()`, `DS()`, `CONFIRMED()`, `BRAKE()`, `NOT_AVAILABLE()`, `GearPosition()`, `INVALID()`, `GearPositionA9E()`, `PARKING_BRAKE_NOT_APPLIED()`, `PARKING_BRAKE_APPLIED()`, `UNAVAILABLE()`, `ParkingBrakeState()`, `SLEEPING()`, `CUTOFF_PENDING()`, `AUTO_ACC()`, `IGNITION_LEVEL()`, `STARTING_IN_PROGRESS()`, `POWER_TRAIN_RUNNING()`, `AUTO_START()`, `ENGINE_SYSTEM_STOP()`, `VehicleState()`, `GO_TO_SLEEP()`, `WAKEUP()`, `SleepWakeUpCommand()`, `DAY()`, `TWILIGHT()`, `NIGHT()`, `DayNightMode()`, `NORMAL()`, `OTA()`, `VehicleModeBroadcast()`, `NOT_ON_CRANK()`, `EngineCrankState()`, `DRIVE_INCREASE()`, `DRIVE_REDUCE()`, `MANUAL()`, `MANUAL_INCREASE()`, `MANUAL_REDUCE()`, `GearPositionHEV()`, `LIGHTS_OUT()`, `BLINKING()`, `LIGHTING()`, `CarReadyIndicator()`
- **`ICarKey`** — 3 function(s): `CarKeyEvent()`, `valueOf()`, `toString()`
- **`ICarLight`** — 29 function(s): `OFF()`, `COLOR_CHOOSE_MODE()`, `DRIVER_MODE()`, `COMBINED_COLOR_MODE1()`, `COMBINED_COLOR_MODE2()`, `COMBINED_COLOR_MODE3()`, `__UNKNOWN__()`, `AtmosphereLampWorkMode()`, `valueOf()`, `DISABLE()`, `MODLE1()`, `MODEL2()`, `MODLE3()`, `WelLightMode()`, `PREPARE()`, `START()`, `END()`, `LightShowFunCmd()`, `LightShowMode()`, `AUTO()`, `PARKING_LAMP()`, `LOW_BEAM()`, `MainLampSwitchSt()`, `OPEN()`, `AtmosphereLampDriveMode()`, `NOT_ACTIVE()`, `POSITION_LIGHT()`, `AUTO_LIGHT()`, `HeadLightVirtualSwitch()`
- **`ICarMisc`** — 73 function(s): `START()`, `STOP()`, `RESULT()`, `__UNKNOWN__()`, `EngineerMode()`, `valueOf()`, `ALL_SPEAKER()`, `ONLY_FR_SPEAKER()`, `ONLY_FL_SPEAKER()`, `ONLY_RR_SPEAKER()`, `ONLY_RL_SPEAKER()`, `STOP_SPEAKER()`, `SpeakerCmd()`, `OPEN()`, `CLOSE()`, `TftCmd()`, `STOP_CTL()`, `RED()`, `GREEN()`, `BLUE()`, `BLACK()`, `WHITE()`, `TftColorState()`, `setIsOpened()`, `ALL_OFF()`, `VR()`, `PHONE()`, `NAVI()`, `VEHICLE_SETTING()`, `SYSTEM_SETTING()`, `DRIVING_RECORDER()`, `CARPLAY()`, `CARLIFE()`, `HmiMode()`, `AM()`, `FM()`, `USB1()`, `USB2()`, `CD()`, `SD()`, `BT()`, `AUX()`, `USB3()`, `IPOD()`, `ProgramSource()`, `setRadioHz()`, `KeyTestEvent()`, `ErrorCodeInfo()`, `toString()`, `DeviceNode()`, `NO_MESSAGE()`, `CALL_LAUNCH()`, `CALL_GOING()`, `CALL_END()`, `FAILURE()`, `MALFUNCTION()`, `ECallState()`, `IHU12_A88_A1()`, `IHU12_A58_B1()`, `IHU12_A79_C1()`, `IHU12_A79_C2()`, `IHU12_A58G_B2()`, `IHU12_A8E_A2()`, `IHU12_A79G_C3C4()`, `IHU12_A60_D1()`, `IHU12_A60_D2()`, `IHU12_A60_E1()`, `IHU12_A60_E2()`, `AteCarType()`, `TRANSPORT()`, `NOT_TRANSPORT()`, `FAULT()`, `TransportMode()`
- **`ICarParking`** — 20 function(s): `RPA()`, `APA()`, `__UNKNOWN__()`, `PASSystemType()`, `valueOf()`, `NOT_FAILURE()`, `FRONT_FAILURE()`, `REAR_FAILURE()`, `SYSTEM_FAILURE()`, `PASSystemFailureFlag()`, `NOT_ACTIVE()`, `CONTINUOUS_TONE()`, `FAST_INTERMITTENT_TONE()`, `MEDIUM_SPEED_INTERMITTENT_TONE()`, `SLOW_INTERMITTENT_TONE()`, `MUTE()`, `PASWarnTone()`, `NOT_FAULT()`, `FAULT()`, `PASErrorFlag()`
- **`ICarPower`** — 15 function(s): `STANDBY()`, `SYSTEMON()`, `SLEEP()`, `VOLFAULTSTBY()`, `TEST()`, `TEN_MIN()`, `PRE_SLEEP()`, `__UNKNOWN__()`, `PowerState()`, `valueOf()`, `OFF()`, `ACC()`, `ON()`, `CRANK()`, `PowerMode()`
- **`ICarSeat`** — 94 function(s): `LEVEL_1()`, `LEVEL_2()`, `LEVEL_3()`, `ERROR()`, `OFF()`, `__UNKNOWN__()`, `HeatLevel()`, `valueOf()`, `VentLevel()`, `VENT_MODE()`, `HEAT_MODE()`, `HeatVentMode()`, `SLIDE_FORWARD()`, `SLIDE_BACKWARD()`, `CUSHION_RISE()`, `CUSHION_DOWN()`, `BACKREST_FORWARD()`, `BACKREST_BACKWARD()`, `TILT_RISE()`, `TILT_DOWN()`, `STEERING_WHEEL_UP()`, `STEERING_WHEEL_DOWN()`, `STEERING_WHEEL_OUT()`, `STEERING_WHEEL_IN()`, `CUSHION_FORWARD()`, `CUSHION_BACKWARD()`, `SSWOperation()`, `MODE_ONE()`, `MODE_TW0()`, `MODE_THIRD()`, `MODE_FOUR()`, `MODE_FIVE()`, `MODE_SIX()`, `SeatMassageMode()`, `LEVEL_ONE()`, `LEVEL_TW0()`, `LEVEL_THIRD()`, `SeatMassageLevel()`, `HEATING()`, `PRESERVATION()`, `SteeringWheelHeatState()`, `DEFAULT()`, `FOB_ID1()`, `FOB_ID2()`, `FOB_ID3()`, `NFC_ID1()`, `NFC_ID2()`, `NFC_ID3()`, `NFC_ID4()`, `FINGER_PRINT1()`, `FINGER_PRINT2()`, `FINGER_PRINT3()`, `FINGER_PRINT4()`, `FINGER_PRINT5()`, `CurrPepsPuid()`, `ACCOUNT_1()`, `ACCOUNT_2()`, `ACCOUNT_3()`, `ACCOUNT_4()`, `ACCOUNT_5()`, `ACCOUNT_6()`, `ACCOUNT_7()`, `ACCOUNT_8()`, `CurrAccountCfg()`, `AccountDelete()`, `SAVE()`, `RECALL()`, `DriverSeatPostionCmd()`, `NO_OPERATION()`, `MANUAL_OPERATING()`, `SAVE_COMPLETED()`, `SAVE_FAILED()`, `RECALLING()`, `RECALL_INTERRUPTED()`, `RECALL_COMPLETED()`, `INITIALIZATION_COMPLETED()`, `RECALL_STUDYING()`, `STUDY_COMPLETED()`, `STUDY_FAILED()`, `SeatOperationState()`, `NO_COMMAND()`, `ACTIVE_POP_UP_WINDOW()`, `MemSysOperationReqCmd()`, `SeatSteeringWheelFR()`, `CurrAccountSeat()`, `LIFT_UP()`, `LIFT_DOWN()`, `OTTOMAN1_FORWARD()`, `OTTOMAN1_BACKWARD()`, `OTTOMAN2_FORWARD()`, `OTTOMAN2_BACKWARD()`, `SHOULDER_FORWARD()`, `SHOULDER_BACKWARD()`, `SeatSteeringWheelRear()`
- **`ICarSettings`** — 192 function(s): `LKS_OFF()`, `LKS_STANDBY()`, `LKS_ACTIVE()`, `LKS_FAILURE()`, `CAMERA_BLOCKED()`, `__UNKNOWN__()`, `LksState()`, `valueOf()`, `NOT_SELECTED()`, `STEERING()`, `WARNING()`, `STEERING_AND_WARNING()`, `LksMode()`, `NORMAL()`, `CLOSE()`, `FAR()`, `FCWWarningDistance()`, `SOUND()`, `SEAT_VIBRATION()`, `BOTH()`, `ADASWarnType()`, `ENTER_REMIND()`, `AUTO_QUIT()`, `RainstormMode()`, `QUIT()`, `RAINSTORM_MODE()`, `NAP_MODE()`, `WAKE_UP_MODE()`, `PARTY_MODE()`, `LH_SPA_MODE()`, `RH_SPA_MODE()`, `BOTH_SPA_MODE()`, `ShortcutMode()`, `INTERMITTENT()`, `AUTO()`, `AutoWiperMode()`, `STOP()`, `FL_MIRROR_UP()`, `FL_MIRROR_DOWN()`, `FL_MIRROR_LEFT()`, `FL_MIRROR_RIGHT()`, `FR_MIRROR_UP()`, `FR_MIRROR_DOWN()`, `FR_MIRROR_LEFT()`, `FR_MIRROR_RIGHT()`, `FOLD()`, `UNFOLD()`, `RearviewMirrorCmd()`, `RearviewMirrorState()`, `ACC_MODE()`, `TJA_ICA_MODE()`, `CruiseAssistMode()`, `OFF()`, `LEFT_DOWN()`, `RIGHT_DOWN()`, `BOTH_DOWN()`, `RearviewMirrorCmdForReverse()`, `START()`, `SAVE()`, `CANCEL()`, `RearviewMirrorSettingCmd()`, `RELEASE()`, `APPLY()`, `UNUSABLE()`, `EPBSystemSetState()`, `RELEASING()`, `APPLYING()`, `DISENGAGED()`, `FAULT()`, `EPBSystemState()`, `OPEN()`, `DEEPPUSHBRKPEDAL_TO_N()`, `FAILURE()`, `DragMode()`, `FASTEN_SEATBELT()`, `RELEASE_PARK_BRAKE()`, `CHECK_PARK_BRAKE_LOW_GRADIENT()`, `PARK_BRAKE_SET()`, `PARK_BRAKE_RELEASED()`, `PARK_BRAKE_TESTING()`, `CLAMPFORCE_NOT_ENOUGH()`, `NON_P_TO_RELEASE_PARK_BRAKE()`, `EPBSystemMsg()`, `ON()`, `DEEP_PUSH_BRK_PEDAL()`, `StpOnBrkToRelParkBrkIndOnState()`, `NOT_ACTIVE()`, `ACTIVE()`, `ParkAutoUnlockState()`, `CST_DISABLED()`, `CST_STANDBY()`, `CST_ACTIVE()`, `CST_FAILURE()`, `CST_LEVEL_4()`, `ComfortParkState()`, `LEFT_MIRROR_DIP()`, `RIGHT_MIRROR_DIP()`, `BOTH_MIRROR_DIP()`, `OSRMRAngleCmd()`, `NONE()`, `OSRMRAngleSaveCmd()`, `ENABLED()`, `DISABLED_BY_PEPS()`, `SHUTDOWN_BY_SWITCH_CAN()`, `WCMCtlResult()`, `WCMCtl()`, `MANUAL()`, `WCLCMWorkMode()`, `WCLCMWorkModeCtl()`, `PASSIVE()`, `BSDMLcaState()`, `BSDMLcaCtl()`, `BSDMDowState()`, `BSDMDowCtl()`, `BSDMRctaState()`, `BSDMRctaCtl()`, `NO_SELECTED()`, `BRAKE()`, `BRAKE_AND_WARNING()`, `BSDMRctaAssistType()`, `BSDMRcwState()`, `BSDMRcwCtl()`, `HudOffState()`, `STANDARD()`, `SNOW()`, `HudMode()`, `STANDBY()`, `CHARGING()`, `COMPLETED()`, `NOT_STANDBY()`, `WCMCtlChargingState()`, `NO_FAILURE()`, `OVER_TEMPERATURE()`, `RFOD()`, `VOLTAGE_PROTECTED()`, `OVER_POWER_PROTECTED()`, `INTERNAL_FAILURE()`, `SMARTPHONE_NO_RESPONSE()`, `OFOD()`, `NFC_CARD_DETECTED()`, `WCMCtlFailureState()`, `ADASELKStatus()`, `INVALID()`, `EAV_BLOCK_ERROR()`, `EMSEngWaveStatus()`, `NO_COMMAND()`, `NapSettingSave()`, `NO_IN_SNAPMODE()`, `SNAP_SETTING_MODE()`, `SNAP_MODE()`, `SeatNapModeState()`, `NO_IN_SPAMODE()`, `SPA_SETTING_MODE()`, `SPA_MODE()`, `SeatSpaModeState()`, `LH_MEMORY_MODE()`, `RH_MEMORY_MODE()`, `LH_POSITION_RECOVERY_MODE()`, `RH_POSITION_RECOVERY_MODE()`, `RearSeatShortcutmode()`, `CONTINUOUS_SLOW()`, `CONTINUOUS_FAST()`, `FrontWiperMode()`, `PASSIVE_ON_INACTIVE()`, `FCTASwitchStatus()`, `FCTAConfig()`, `ENABLE()`, `ADASRAEBStatus()`, `IMRCtrlStatus()`, `SYSTEM_NO_ERROR()`, `SYSTEM_ERROR()`, `IMRCtrlErrorStatus()`, `NOT_FAULT()`, `FaultStatus()`, `ACTIVE_POP_UP_WINDOW()`, `SeatNapPosSaveReq()`, `NO_LOCK()`, `LOCK()`, `FCWSwitchEnableState()`, `LEVEL_1()`, `LEVEL_2()`, `LEVEL_3()`, `LEVEL_4()`, `LEVEL_5()`, `LEVEL_6()`, `LEVEL_7()`, `FrontWiperLevel()`, `DEFAULT()`, `NORMAL_MODE()`, `TRANSPORT_MODE()`, `SHOWROOM_MODE()`, `ExhibitionHallMode()`
- **`ICarSwc`** — 6 function(s): `OFF()`, `HEATING()`, `PRESERVATION()`, `__UNKNOWN__()`, `SwcHeatState()`, `valueOf()`
- **`ICarTBox`** — 28 function(s): `NO_MUTE_RADIO_ORDER()`, `MUTE_RADIO_ORDER()`, `__UNKNOWN__()`, `MuteRadioOrder()`, `valueOf()`, `NOT_ACTIVE()`, `SHORT_RELEASE()`, `LONG_RELEASE()`, `FAILURE()`, `PhoneKeyAction()`, `TBOX_MODE()`, `BLUETOOTH_MODE()`, `BCALL_MODE()`, `ECALL_MODE()`, `CALLBACK_MODE1()`, `CALLBACK_MODE2()`, `PhoneMode()`, `INCOMING_CALL()`, `CONNECTING()`, `ANSWER()`, `ON_THE_PHONE()`, `HANG_UP()`, `CALL_OVER()`, `PhoneCallState()`, `BT_PHONE()`, `E_CALL()`, `B_CALL()`, `PhoneType()`
- **`ICarWindow`** — 49 function(s): `UNDEFINED_POSITION()`, `FULLY_CLOSED()`, `BETWEEN()`, `FULLY_OPENED()`, `__UNKNOWN__()`, `WindowState()`, `valueOf()`, `STOPED()`, `CLOSING()`, `OPENING()`, `ANTIPINCH_REVERSING()`, `WindowOperationState()`, `STOP()`, `FULLY_OPEN()`, `FULLY_CLOSE()`, `TEN_PERCENT_OPEN()`, `TWENTY_PERCENT_OPEN()`, `THIRTY_PERCENT_OPEN()`, `FORTY_PERCENT_OPEN()`, `FIFTY_PERCENT_OPEN()`, `SIXTY_PERCENT_OPEN()`, `SEVENTY_PERCENT_OPEN()`, `EIGHTY_PERCENT_OPEN()`, `NINETY_PERCENT_OPEN()`, `CHANGE_OPEN()`, `CHANGE_CLOSE()`, `WIND_BREATHE()`, `WindowOpenPercent()`, `TILT_UP()`, `SHADE_OPEN()`, `SHADE_CLOS()`, `ONE_HUNDRED_PERCENT_OPEN()`, `WindowRoofOpenState()`, `SLIDE_OPEN()`, `REVERSING()`, `POSITION_NOT_TRUSTED()`, `COMFORT_POSITION()`, `EXPANDED_SLIDE_OPEN()`, `WindowRoofOpenOpertion()`, `ROOF_FULLY_CLOSE()`, `ROOF_TILT_UP()`, `ROOF_COMFORT_POSITION()`, `ROOF_FULLY_OPEN()`, `SHADE_CLOSE()`, `CHANGE_OPEN_TWENTY_PERCENT()`, `CHANGE_CLOSE_TWENTY_PERCENT()`, `WindowRoofShadeOpenState()`, `NO_USED()`, `WindowRoofShadeOpenOpertion()`
- **`IHostConfig`** — 147 function(s): `LANGUAGE()`, `NUMBER_OF_SCREEN()`, `CAR_MODE()`, `CARPLAY()`, `CARLIFE()`, `HICAR()`, `IPHONE_DEFAULT_CONNECTING()`, `EASY_CONNECT()`, `ANDROID_AUTO()`, `CAR_LINK()`, `WIFI()`, `BT()`, `CELLULAR_NETWORK()`, `AUX()`, `IPOD()`, `USB()`, `ETHERNET_NET()`, `RADIO_CONFIGURATION()`, `RADIO_DAB()`, `RADIO_RDS()`, `RADIO_DAB_RDS_CONFIGURATION()`, `RADAR_VOLUME_ADJUSTMENT()`, `SDVC_CURVE_CONFIGURATION()`, `HVAC_DISPLAY_TIME()`, `RADIO_FREQUENCY()`, `MEDIA_VOLUME_DELAY()`, `SCREEN_SWITCH_DELAY()`, `RADAR_SWITCH()`, `WALLPAPER()`, `AUTO_PARKING_BACKGROUND_PUSH()`, `MESSAGE_NOTIFICATION()`, `EXPRESS_MESSAGE()`, `MAP_PREFERENCES()`, `NAVIGATION_SIGNAL_MODE()`, `KEYTONE()`, `INTERFACE_SOUND()`, `FACE_ID()`, `SHIFT_SOUND()`, `SCENE_SWITCH()`, `TRAFFIC_DISPLAY()`, `PHOTOS_AND_VIDEOS()`, `SCREENSAVER()`, `USER_MANUAL()`, `ENGINEERING_MODE()`, `REMINDING_MAINTENANCE_CYCLE()`, `REMINDING_RESET_CYCLE()`, `REPEAT_SETTING()`, `LEFT_RIGHT_HAND_DRIVE_VEHICLES()`, `__UNKNOWN__()`, `Config()`, `CHINESE()`, `ENGLISH()`, `ARABIC_RESERVED()`, `RUSSIAN_RESERVED()`, `CHINESE_PLUSENGLISH()`, `SPANISH()`, `INDONESIAN()`, `THAI()`, `MALAY()`, `VIETNAMESE()`, `CHINESE_TRADITIONAL()`, `PORTUGUESE()`, `ITALY()`, `Language()`, `valueOf()`, `TOW()`, `THREE()`, `ONE()`, `NumberOfScreen()`, `CAR_MODE1()`, `CAR_MODE2()`, `CAR_MODE3()`, `CAR_MODE4()`, `CarMode()`, `NOT_PRESENT()`, `AP_STA_RESPECTIVELY()`, `AP_STA_SIMULTANEOUSLY()`, `Wifi()`, `TWO()`, `Usb()`, `FM()`, `AM()`, `FM_PLUSAM()`, `RadioConfiguration()`, `RDS()`, `DAB_RDS()`, `DAB()`, `RadioDABAndRDSConfig()`, `LOW()`, `MIDDLE()`, `HIGH()`, `RadarVolumeAdjustment()`, `SVC1()`, `SVC2()`, `SdvcCurveConfiguration()`, `FIVES_SEC()`, `TEN_SEC()`, `FIFTEEN_SEC()`, `THIRTY_SEC()`, `HvacDisplayTime()`, `CHINA_MIDDLEEAST_AFRICA()`, `EUROPE1()`, `EUROPE2()`, `EASTERN_EUROPE1()`, `EASTERN_EUROPE2()`, `AUSTRALIA()`, `USA()`, `LATIN_AMERICA()`, `SOUTHEAST_ASIA()`, `JAPAN()`, `AFRICA_2()`, `RadioFrequency()`, `THE_0MS()`, `TWO_HUNDRED_MS()`, `THREE_HUNDRED_MS()`, `FOUR_HUNDRED_MS()`, `FIVE_HUNDRED_MS()`, `SIX_HUNDRED_MS()`, `SEVEN_HUNDRED_MS()`, `EIGHT_HUNDRED_MS()`, `MediaVolumeDelay()`, `ScreenSwitchDelay()`, `ON()`, `OFF()`, `MessageNotification()`, `ExpressMessage()`, `GAODE()`, `TENCENT()`, `MapPreferences()`, `GPS()`, `BEIDOU()`, `GPS_BEIDOU()`, `NavigationSignalMode()`, `MODERN()`, `VINTAGE()`, `NO_KEYTONE()`, `Keytone()`, `InterfaceSound()`, `CLOSE()`, `OPEN()`, `EngineeringMode()`, `RemindingMaintenanceCycle()`, `RemindingResetCycle()`, `RepeatSetting()`, `LEFT()`, `RIGHT()`, `LeftRightHandDriveVehicles()`
- **`IMpuAvm`** — 36 function(s): `OFF()`, `FULL_SCREEN()`, `__UNKNOWN__()`, `AvmDisplayState()`, `valueOf()`, `INVALID()`, `UPGRADING()`, `DEBUG()`, `NORMAL()`, `AvmWorkMode()`, `NONE()`, `CLAIBRATING()`, `SUCCESS()`, `FAILURE()`, `PARTIALLY()`, `AvmCalibrationState()`, `FAULT()`, `AvmHeartState()`, `DISABLE()`, `ENABLE()`, `AvmFullScreenSwtich()`, `CHINESE()`, `ENGLISH()`, `ARABIC_RESERVED()`, `RUSSIAN_RESERVED()`, `CHINESE_PLUSENGLISH()`, `SPANISH()`, `INDONESIAN()`, `PORTUGUESE()`, `CHINESE_TRADITIONAL()`, `VIETNAMENSE()`, `THAI()`, `MALAY()`, `FRENCH()`, `ITALIAN()`, `Language()`

</details>

### Package `com.yftech.vehicle.internal.config`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `Ihu23ICarConfig` | class | — | 463 | 252 |
| `Ihu23IHostConfig` | class | — | 386 | 157 |

<details>
<summary><b>Function list for <code>com.yftech.vehicle.internal.config</code></b> (click to expand)</summary>

- **`Ihu23ICarConfig`** — 212 function(s): `VEHICLE_TYPE()`, `DRIVE_TYPE()`, `VEHICLE_PLATFORM()`, `A_CAN()`, `B_CAN()`, `GPS()`, `ANTENNA()`, `MIC()`, `BCM()`, `HVAC()`, `ICM()`, `PAS()`, `GWM()`, `FCP()`, `PCS()`, `TBOX()`, `VCU()`, `IBCM()`, `FL_SPEAKER()`, `FR_SPEAKER()`, `RL_SPEAKER()`, `RR_SPEAKER()`, `STEERING_WHEEL_KEY()`, `TBOX_CONNECTION_MODE()`, `B_CALL_SWITCH()`, `E_CALL_SWITCH()`, `CALL_BACK()`, `RESTART_VEHICLE_COMMUNICATION_MODULE()`, `LOUDSPEAKER_NUMBER()`, `LOUDSPEAKER_SUPPLIER()`, `EXT_AMPLIFIERS()`, `AVAS()`, `AVAS_SWITCH()`, `STORAGE_BOX_AUTOMATICALLY_FLIP_DOWN()`, `HIDDEN_DOOR_HANDLE()`, `WINTER_LONG_DISTANCE()`, `CHARGING_INSULATION()`, `INTELLIGENT_INSULATION_NOTIFICATION()`, `ENERGY_RECOVERY_MODE()`, `ELECTRO_DISCHARGE()`, `ECO_PLUS_MODE()`, `EPEDAL_MODE()`, `CREEP_MODE()`, `ENERGY_CONSUMPTION()`, `MONSTER_MODE_SWITCH()`, `HEALTH_CHARGE_SETTING()`, `DRIVING_MODE()`, `AUTO_MODE_OF_FRS_AND_REC_CONTROL()`, `COMFORT_CURVE()`, `QUALITY_SENSOR()`, `AUTO_DEFORST()`, `FAN_SPEED_OF_AUTO_MODE()`, `CHARGING_THRESHOLD()`, `HEAT_PUMP_AIR_CONDITIONING()`, `AIR_CONDITIONING_ZONES()`, `REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING()`, `AIR_CONDITION_TYPE()`, `CAMERA_NUMBER()`, `RADAR_NUMBER()`, `AUTOHOLD()`, `STANDARD_AND_HD_CAMERA_CONFIGURATION()`, `ADAPTIVE_HIGH_BEAM()`, `CONTROL_HIGH_BEAM_ASSISTANT()`, `CLOSE_WINDOW_WHILE_LOCK()`, `DOME_LIGHT_IN_DOOR_GEAR_POSITION()`, `CONTROL_SMART_WELCOME_LIGHT()`, `KEY_IDENTIFICATION()`, `SMART_TAILGATE()`, `PLGMFUNCCFG()`, `NFC()`, `WAL_AND_APU()`, `REMOTE_UNLOCK()`, `SPEED_LOCK()`, `AUTO_UNLOCKING()`, `EXTERIOR_REAR_VIEW_MIRROR_AUTO_FOLDING_AND_UNFOLDING()`, `EXTERIOR_REARVIEW_MIRROR_DIP()`, `REARVIEW_MIRROR_ADJUSTMENT()`, `STEERING_WHEEL_STEERING_HAND_FORCE()`, `ETC_SETTING()`, `WIPER_MAINTANENCE()`, `AUTO_WIPER()`, `LOCK_AND_UNLOCK_WHISTLE_NOTE()`, `LIGHT_TURNED_OFF_DELAY()`, `AMBIENCE_LIGHTS_CONTROL()`, `IAL()`, `RAINSTORM_MODE()`, `CLUSTER_VOLUME_SETTING()`, `CLUSTER_LANGUAGE_SETTING()`, `CLUSTER_MILEAGE_RESET()`, `CLUSTER_SPEED_UNIT()`, `CLUSTER_TEMPERATURE_UNIT()`, `CLUSTER_PRESSURE_UNIT()`, `REAR_SEAT_BELT_NOTIFICATION()`, `CLUSTER_DEFAULT_SETTING()`, `CLUSTER_FUEL_CONSUMPTION_UNIT()`, `CLUSTER_BACK_LIGHT()`, `TIME_IN_CLUSTER()`, `CHARGING_MODE()`, `LANE_AUXILIARY_SWITCH()`, `LANE_ASSIST()`, `AUTO_EMERGENCY_BRAKING_BRAKING()`, `FRONT_COLLISION_WARNING()`, `IFC_CRUISEMODE()`, `BSD()`, `DOOR_OPEN_WARNING()`, `OVERSPEED_WARNING()`, `SPEED_LIMTED_SIGN_RECOGNITION()`, `STEERING_MODE()`, `LCA_CARD()`, `LANE_CHANGE_ASSIST()`, `DRIVER_STATE_OF_ALERT()`, `EMERGENCY_STEERING_MODE()`, `RAEB()`, `ALERT_MODE()`, `EMERGENCY_LANE_KEEPING_ASSIST()`, `REAR_CROSS_TRAFFIC_ALERT()`, `REAR_CROSS_TRAFFIC_ALERT_MODE()`, `REAR_APPROACHING_WARNING()`, `FRONT_CROSS_TRAFFIC_ALERT()`, `FRONT_CROSS_TRAFFIC_ALERT_MODE()`, `APA_VOICE_PROMPT_BUTTON()`, `FORWARD_COLLISION_WARNING_DISTANCE()`, `INDICATED_LANE_CHANGE()`, `OVERSPEED_ALARM_OF_TSR()`, `INTELLIGENT_SPEED_LIMIT_CONTROL()`, `DRIVER_ASSISTANCE_WARNING()`, `DISTRACTED_ALARM_INTERVAL_TIME()`, `TIRED_ALARM_INTERVAL_TIME()`, `APA_ALARM_DELAYED_TIME()`, `ESP_OFF_SWITCH()`, `HDC_SWITCH()`, `EBOOSTER_MODE()`, `LEFT_RIGHT_HAND_DRIVE_VEHICLES()`, `ULTRAVIOLET_RAY()`, `UNLOCK_VENTILATION()`, `EVAPORATOR_SELF_DRYING()`, `AIR_CONDITIONING_BLIND_EXERCISE()`, `AIR_CONDITIONING_QUICK_START()`, `HOSPITALITY_LAMP_SIGNALS()`, `TEMPORARY_PARKING_LAMP_SIGNALS()`, `LANE_CHANGE_DRIVER_CONFIRMATION()`, `LANE_CHANGE_STYLE()`, `INDICATED_LANE_CHANGING()`, `FRONT_DISTANCE_DISPLAY()`, `INTELLIGENT_COLLISION_AVOIDANCE()`, `__UNKNOWN__()`, `Config()`, `TRADITIONAL_CAR()`, `EV()`, `HEV()`, `TRADITIONAL_CAR_MASTER()`, `VehicleType()`, `valueOf()`, `TWO_WHEEL_DRIVE()`, `FOUR_WHEEL_DRIVE()`, `DriveType()`, `NONE()`, `A29_Y()`, `VehiclePlatform()`, `if()`, `NO_CONNECTION()`, `USB()`, `ETH()`, `TboxConnectionMode()`, `FOUR()`, `SIX()`, `EIGHT()`, `TEN()`, `THIRTEEN()`, `TWO()`, `LoudspeakerNumber()`, `LONGDA()`, `FOSTER()`, `ALPINE()`, `HARMAN()`, `LoudspeakerSupplier()`, `SINGLE_ZONE()`, `DUAL_ZONES()`, `THREE_ZONES()`, `AirConditioningZones()`, `NOT_PRESENT()`, `REAR_DEFROS()`, `REARVIEW_MIRROR_HEATING()`, `RearDefrostAndRearviewMirrorHeating()`, `MANUAL()`, `AUTO()`, `AirConditionType()`, `RVC()`, `SVM()`, `SVM_PLUSAPA()`, `SVM_PLUSFAPA()`, `SVM_PLUSAVP()`, `CameraNumber()`, `FRONT_0_REAR_3()`, `FRONT_0_REAR_4()`, `FRONT_2_REAR_3()`, `FRONT_2_REAR_4()`, `FRONT_4_REAR_4()`, `FRONT_4_MID_4_REAR_4()`, `FRONT_6_REAR_6()`, `RadarNumber()`, `STANDARD_DEFINITION()`, `HIGH_DEFINITION()`, `StandardAndHdCameraConfiguration()`, `WAL()`, `APU()`, `WalAndApu()`, `LEFT()`, `RIGHT()`, `LEFT_AND_RIGHT()`, `LaneChangeAssist()`, `LeftRightHandDriveVehicles()`
- **`Ihu23IHostConfig`** — 109 function(s): `LANGUAGE()`, `NUMBER_OF_SCREEN()`, `CAR_MODE()`, `CARPLAY()`, `CARLIFE()`, `IPHONE_DEFAULT_CONNECTING()`, `ANDROID_AUTO()`, `WIFI()`, `BT()`, `CELLULAR_NETWORK()`, `AUX()`, `IPOD()`, `USB()`, `ETHERNET_NET()`, `RADIO_CONFIGURATION()`, `RADAR_VOLUME_ADJUSTMENT()`, `RADIO_DAB_RDS_CONFIGURATION()`, `SDVC_CURVE_CONFIGURATION()`, `HVAC_DISPLAY_TIME()`, `RADIO_FREQUENCY()`, `MEDIA_VOLUME_DELAY()`, `SCREEN_SWITCH_DELAY()`, `RADAR_SWITCH()`, `KEYTONE()`, `INTERFACE_SOUND()`, `FACE_ID()`, `SCREENSAVER()`, `USER_MANUAL()`, `ENGINEERING_MODE()`, `REMINDING_MAINTENANCE_CYCLE()`, `REMINDING_RESET_CYCLE()`, `REPEAT_SETTING()`, `VIDE_APP()`, `PICTURE_APP()`, `__UNKNOWN__()`, `Config()`, `CHINESE()`, `ENGLISH()`, `ARABIC_RESERVED()`, `RUSSIAN_RESERVED()`, `CHINESE_PLUSENGLISH()`, `SPANISH()`, `INDONESIAN()`, `THAI()`, `MALAY()`, `VIETNAMESE()`, `TRADITIONAL_CHINESE()`, `PORTUGUESE()`, `Language()`, `valueOf()`, `TOW()`, `THREE()`, `ONE()`, `NumberOfScreen()`, `NOT_PRESENT()`, `AP_STA_RESPECTIVELY()`, `AP_STA_SIMULTANEOUSLY()`, `Wifi()`, `TWO()`, `Usb()`, `FM()`, `AM()`, `FM_PLUSAM()`, `RadioConfiguration()`, `LOW()`, `MIDDLE()`, `HIGH()`, `RadarVolumeAdjustment()`, `SVC1()`, `SVC2()`, `SdvcCurveConfiguration()`, `FIVE_SECOND()`, `TEN_SECOND()`, `FIFTEEN_SECOND()`, `THIRTY_SECOND()`, `HvacDisplayTime()`, `CHINA_MIDDLEEAST_AFRICA()`, `EUROPE1()`, `EUROPE2()`, `EASTERN_EUROPE1()`, `EASTERN_EUROPE2()`, `AUSTRALIA()`, `USA()`, `LATIN_AMERICA()`, `SOUTHEAST_ASIA()`, `JAPAN()`, `RadioFrequency()`, `MODERN()`, `VINTAGE()`, `NO_KEYTONE()`, `Keytone()`, `ON()`, `OFF()`, `InterfaceSound()`, `CLOSE()`, `OPEN()`, `EngineeringMode()`, `RemindingMaintenanceCycle()`, `RemindingResetCycle()`, `RepeatSetting()`, `RDS()`, `DAB_RDS()`, `DAB()`, `RadioDABAndRDSConfig()`, `CAR_MODE1()`, `CAR_MODE2()`, `CAR_MODE3()`, `CAR_MODE4()`, `CarMode()`

</details>

### Package `com.yftech.vehicle.internal.project`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `IProject` | class | IBaseCmd | 173 | 36 |
| `Ihu12DashBoard` | class | — | 763 | 127 |
| `Ihu23Project` | class | — | 112 | 12 |

<details>
<summary><b>Function list for <code>com.yftech.vehicle.internal.project</code></b> (click to expand)</summary>

- **`IProject`** — 24 function(s): `ACCOUNT_1()`, `ACCOUNT_2()`, `ACCOUNT_3()`, `ACCOUNT_4()`, `ACCOUNT_5()`, `ACCOUNT_6()`, `ACCOUNT_7()`, `ACCOUNT_8()`, `__UNKNOWN__()`, `AccountCfg()`, `valueOf()`, `SEAT_POSITION()`, `OpertionObject()`, `MEMORY()`, `SEARCH()`, `DELETE()`, `OpertionType()`, `SAVE()`, `RECALL()`, `DriverSeatPostionCmd()`, `PersonalMemoryInfo()`, `parseByte()`, `CarSeartMemoryInfo()`, `if()`
- **`Ihu12DashBoard`** — 46 function(s): `setCurrentSource()`, `isCurrentSource()`, `isMediaChange()`, `if()`, `isBtInfoChange()`, `getDashBoardSourceDataByteArray()`, `switch()`, `getDashBoardInfoDataByteArrayForIhu12()`, `getMediaInfo()`, `BELOW_SEA()`, `ABOVE_SEA()`, `__UNKNOWN__()`, `SeaLevel()`, `valueOf()`, `NO_SIGNAL()`, `HAVE_SIGNAL()`, `GpsSignal()`, `NaviGuideBaseInfo()`, `METER()`, `KILOMETER()`, `MILE()`, `NaviDistUnit()`, `NaviUpdateData()`, `NOT_NAVIGATED()`, `NAV_PLANNING()`, `NAV_START()`, `NAVIGATING()`, `NAV_OVER()`, `NaviState()`, `IN_CACULATION()`, `CACULATION_DONE()`, `NOT_IN_NAVI()`, `CaculationState()`, `N()`, `NE()`, `E()`, `SE()`, `S()`, `SW()`, `W()`, `NW()`, `CompassGuide()`, `getNaviGuideBaseInfoDataProtocol()`, `getNaviGuideUpdateDataProtocol()`, `getDabProgramInfo()`, `isDabProgramInfoChange()`
- **`Ihu23Project`** — 9 function(s): `BOOKING()`, `IMMEDIATELY()`, `__UNKNOWN__()`, `ChargeMode()`, `valueOf()`, `ChargeInfo()`, `toString()`, `formartChargeInfoByteArray()`, `if()`

</details>

### Package `com.yftech.vehicle.internal.utils`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `StringFormart` | class | — | 22 | 4 |
| `StringUtils` | class | — | 15 | 2 |

<details>
<summary><b>Function list for <code>com.yftech.vehicle.internal.utils</code></b> (click to expand)</summary>

- **`StringFormart`** — 3 function(s): `byte2hex()`, `if()`, `for()`
- **`StringUtils`** — 2 function(s): `isNumeric()`, `isContainChinese()`

</details>

### Package `com.yftech.vehicle.sdk`  (29 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AirConditionManager` | class | BaseApiManager implements IAirCondition | 588 | 215 |
| `CarBspManager` | class | BaseApiManager implements ICarBsp | 133 | 36 |
| `CarConfig` | class | ICarConfig | 1,160 | 520 |
| `CarDMSManager` | class | BaseApiManager implements CarDMS | 87 | 22 |
| `CarDashBoardManager` | class | BaseApiManager implements ICarDashBoard | 496 | 99 |
| `CarDeviceManager` | class | BaseApiManager implements ICarDevice | 148 | 49 |
| `CarDoorManager` | class | BaseApiManager implements ICarDoor | 352 | 108 |
| `CarDriveManager` | class | BaseApiManager implements ICarDrive | 256 | 75 |
| `CarEvDeviceManager` | class | BaseApiManager implements ICarEvDevice | 620 | 201 |
| `CarFragranceManager` | class | BaseApiManager implements ICarFragrance | 151 | 46 |
| `CarIcmManager` | class | BaseApiManager implements ICarIcm | 200 | 65 |
| `CarInfoManager` | class | BaseApiManager implements ICarInfo | 247 | 73 |
| `CarKeyManager` | class | BaseApiManager implements ICarKey | 52 | 11 |
| `CarLightManager` | class | BaseApiManager implements ICarLight | 336 | 116 |
| `CarMiscManager` | class | BaseApiManager implements ICarMisc | 369 | 105 |
| `CarMotoManager` | class | BaseApiManager implements CarMoto | 151 | 42 |
| `CarParkingManager` | class | BaseApiManager implements ICarParking | 232 | 70 |
| `CarPowerManager` | class | BaseApiManager implements ICarPower | 56 | 12 |
| `CarSeatManager` | class | BaseApiManager implements ICarSeat | 440 | 154 |
| `CarSettingsManager` | class | BaseApiManager implements ICarSettings | 1,040 | 343 |
| `CarSwcManager` | class | BaseApiManager implements ICarSwc | 80 | 23 |
| `CarTBoxManager` | class | BaseApiManager implements ICarTBox | 75 | 20 |
| `CarTireManager` | class | BaseApiManager implements ICarTire | 104 | 28 |
| `CarWindowManager` | class | BaseApiManager implements ICarWindow | 304 | 104 |
| `HostConfig` | class | IHostConfig | 256 | 87 |
| `Ihu23ProjectManager` | class | BaseApiManager implements IBaseCmd | 87 | 14 |
| `MpuAvmManager` | class | BaseApiManager implements IMpuAvm | 93 | 22 |
| `MpuDemoManager` | class | BaseApiManager implements IDemo | 64 | 17 |
| `MpuProjectManager` | class | BaseApiManager implements IProject | 156 | 37 |

<details>
<summary><b>Function list for <code>com.yftech.vehicle.sdk</code></b> (click to expand)</summary>

- **`AirConditionManager`** — 147 function(s): `onACStateChanged()`, `onAcDisplayPopupChanged()`, `onAirCirculationModeOfAutoModeChanged()`, `onAirCirculationStateChanged()`, `onAirQualitySnsConfigChanged()`, `onAirQualitySnsStateChanged()`, `onAirSelfDryingEnableStateChanged()`, `onAirUnlockVentilationEnableStateChanged()`, `onAutoDeforstPresentStateChanged()`, `onAutoModeChanged()`, `onBatCoolStateChanged()`, `onBatFhWorkStateChanged()`, `onBatPtcWorkStateChanged()`, `onBodyDisalarmVentStateChanged()`, `onComfortCurveModeChanged()`, `onCupholderAutoModeChanged()`, `onCupholderHeatCoolModeChanged()`, `onDriverTemperatureChanged()`, `onDualCircuStChanged()`, `onDualSyncStateChanged()`, `onEcoModeChanged()`, `onEnvironmentTemperatureChanged()`, `onFanSpeedOfAutoModeChanged()`, `onFrontDefrostStateChanged()`, `onHumiditySnsDefAutoConfigChanged()`, `onHumiditySnsStateChanged()`, `onIonPopReqDisplayChanged()`, `onIonStateChanged()`, `onOneBtnVentlaionStateChanged()`, `onOutAirQualityLevelChanged()`, `onPM25CleanReqDisplayChanged()`, `onPM25SnsStateChanged()`, `onPM25ValueChanged()`, `onPM25ValueStateChanged()`, `onPassengerTemperatureChanged()`, `onPowerStateChanged()`, `onRearACFreezenStateStateChanged()`, `onRearAcAutoModeStateChanged()`, `onRearAcTemperatureChanged()`, `onRearAcWindModeChanged()`, `onRearAcWindSpeedChanged()`, `onRearDefrostStateChanged()`, `onSceneDisplayStateChanged()`, `onWORKINGPOWERChanged()`, `onWindModeChanged()`, `onWindSpeedChanged()`, `AirConditionManager()`, `get()`, `synchronized()`, `if()`, `getDriverTemperature()`, `getSignalValue()`, `setDriverTemperature()`, `setSignalValue()`, `getPassengerTemperature()`, `setPassengerTemperature()`, `getWindSpeed()`, `setWindSpeed()`, `performOffButtonClick()`, `getWindMode()`, `setWindMode()`, `isFrontDefrostEnabled()`, `performFrontDefrostButtonClick()`, `isACEnabled()`, `performACButtonClick()`, `isRearDefrostEnabled()`, `performRearDefrostButtonClick()`, `isDualSyncEnabled()`, `performDualSyncButtonClick()`, `isIonEnabled()`, `performIonButtonClick()`, `getAirCirculationState()`, `performCirculationButtonClick()`, `getAutoMode()`, `performAutoButtonClick()`, `getFanSpeedOfAutoMode()`, `setFanSpeedOfAutoMode()`, `getAirCirculationModeOfAutoMode()`, `setAirCirculationModeOfAutoMode()`, `getComfortCurveMode()`, `setComfortCurveMode()`, `isAutoDeforstPresentEnabled()`, `performAutoDeforstPresentButtonClick()`, `getEcoMode()`, `setEcoMode()`, `isBodyDisalarmVentEnabled()`, `performBodyDisalarmVentButtonClick()`, `isPowerEnabled()`, `performPowerButtonClick()`, `getBatFhWorkState()`, `getBatPtcWorkState()`, `getBatCoolState()`, `getOutAirQualityLevel()`, `getEnvironmentTemperature()`, `getWORKINGPOWER()`, `isRearAcAutoModeEnabled()`, `performRearAcAutoModeButtonClick()`, `getRearAcWindSpeed()`, `setRearAcWindSpeed()`, `performRearAcOffButtonClick()`, `getRearAcTemperature()`, `setRearAcTemperature()`, `getRearAcWindMode()`, `setRearAcWindMode()`, `getAirSelfDryingEnableState()`, `setAirSelfDryingEnabled()`, `getAirUnlockVentilationEnableState()`, `setAirUnlockVentilationEnabled()`, `getAcDisplayPopup()`, `isOneBtnVentlaionEnabled()`, `setOneBtnVentlaionEnabled()`, `performTemperatureIncButtonClick()`, `setTemperatureIncBtnStVDSwitch()`, `performTemperatureDecButtonClick()`, `setTemperatureDecBtnStVDSwitch()`, `setOnOffByVrState()`, `performTemperatureFRIncButtonClick()`, `setTemperatureFRIncBtnStVDSwitch()`, `performTemperatureFRDecButtonClick()`, `setTemperatureFRDecBtnStVDSwitch()`, `performWindModeButtonClick()`, `performWindSpeedIncButtonClick()`, `performWindSpeedDecButtonClick()`, `getCupholderHeatCoolMode()`, `setCupholderHeatCoolMode()`, `getCupholderAutoMode()`, `setCupholderAutoMode()`, `isAirQualitySnsEnabled()`, `getAirQualitySnsConfig()`, `setAirQualitySnsConfig()`, `isHumiditySnsEnabled()`, `getHumiditySnsDefAutoConfig()`, `setHumiditySnsDefAutoConfig()`, `isRearACFreezenStateEnabled()`, `setRearACFreezenStateEnabled()`, `getSceneDisplayState()`, `getPM25Value()`, `isPM25ValueEnabled()`, `getPM25CleanReqDisplay()`, `isPM25SnsEnabled()`, `setPM25CleanReqCfg()`, `getIonPopReqDisplay()`, `getDualCircuSt()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarBspManager`** — 27 function(s): `onBspInfoSearchCmdStateChanged()`, `onDisplayConnectedStateChanged()`, `onDisplayDtcStateChanged()`, `onDisplayLcdOnOffStateChanged()`, `onDisplayLightBarEnableChanged()`, `onDisplayLightBarLevelChanged()`, `onDisplayTouchEnableStateChanged()`, `CarBspManager()`, `get()`, `synchronized()`, `if()`, `queryBspInfoCmd()`, `setSignalValue()`, `getDisplayDtcInfo()`, `setDisplaySnInfo()`, `setDisplayCreateDate()`, `isDisplayConnected()`, `getSignalValue()`, `setBspAMPMute()`, `setDisplayLightBarLevel()`, `getDisplayLightBarLevel()`, `setDisplayLightBarEnable()`, `getDisplayLightBarEnable()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarConfig`** — 284 function(s): `CarConfig()`, `get()`, `synchronized()`, `if()`, `getVehicleType()`, `getDriveType()`, `getGearboxType()`, `getVehiclePlatform()`, `isACanPresent()`, `getConfigValue()`, `isBCanPresent()`, `isGpsPresent()`, `isAntennaPresent()`, `isMicPresent()`, `isBcmPresent()`, `isHvacPresent()`, `isIcmPresent()`, `isPasPresent()`, `isGwmPresent()`, `isFcpPresent()`, `isPcsPresent()`, `isTboxPresent()`, `isVcuPresent()`, `isAvasPresent()`, `isRvcPresent()`, `isSvmPresent()`, `isFlSpeakerPresent()`, `isFrSpeakerPresent()`, `isRlSpeakerPresent()`, `isRrSpeakerPresent()`, `isSteeringWheelKeyPresent()`, `isFapaPresent()`, `isHudSetPresent()`, `isExternalSvmPresent()`, `isOmsPresent()`, `isGACLogoPresent()`, `getTboxConnectionMode()`, `getDmsConnectionMode()`, `isBCallSwitchPresent()`, `isECallSwitchPresent()`, `isCallBackPresent()`, `isRestartVehicleCommunicationModulePresent()`, `getLoudspeakerNumber()`, `getLoudspeakerSupplier()`, `isExtAmplifiersPresent()`, `isAvasSoundPresent()`, `isAvasSwitchPresent()`, `isStorageBoxAutomaticallyFlipDownPresent()`, `isHiddenDoorHandlePresent()`, `isWinterLongDistancePresent()`, `isChargingInsulationPresent()`, `isIntelligentInsulationNotificationPresent()`, `isEnergyRecoveryModePresent()`, `isElectroDischargePresent()`, `isEcoPlusModePresent()`, `isEpedalModePresent()`, `isCreepModePresent()`, `isEnergyConsumptionPresent()`, `isMonsterModeSwitchPresent()`, `isHealthChargeSettingPresent()`, `isDrivingModePresent()`, `isAutoModeOfFrsAndRecControlPresent()`, `isComfortCurvePresent()`, `isQualitySensorPresent()`, `isAutoDeforstPresent()`, `isFanSpeedOfAutoModePresent()`, `isSolarFeaturesPresent()`, `isFragrancePresent()`, `isAnionPresent()`, `isHeatPumpAirConditioningPresent()`, `getAirConditioningZones()`, `getRearDefrostAndRearviewMirrorHeating()`, `getConfigPm25()`, `getAirConditionType()`, `getCameraNumber()`, `getRadarNumber()`, `getStandardAndHdCameraConfiguration()`, `isFollowTrackingLinePresent()`, `isLookAroundToDetectTheDoorPresent()`, `isRemoteFindingCarPresent()`, `isControlDaytimeRunnigLampPresent()`, `isSixSeatLayoutPresent()`, `getSeatLayout()`, `isBackRowDisplayPresent()`, `isHeadAcousticsPresent()`, `isDvrPresent()`, `isArPresent()`, `getTiktok()`, `isCeilingScreenPresent()`, `isAdaptiveHighBeamPresent()`, `isControlHighBeamAssistantPresent()`, `isCloseWindowWhileLockPresent()`, `isDomeLightInDoorGearPositionPresent()`, `isControlSmartWelcomeLightPresent()`, `isKeyIdentificationPresent()`, `isFollowMusicModePresent()`, `isEasyOpenTailgatePresent()`, `isSmartTailgatePresent()`, `isWirelessChargingPresent()`, `isAccessorySmartScreenPresent()`, `isPlgmfunccfgPresent()`, `isNfcPresent()`, `getWalAndApu()`, `isRemoteUnlockPresent()`, `isSpeedLockPresent()`, `isAutoUnlockingPresent()`, `isExteriorRearViewMirrorAutoFoldingAndUnfoldingPresent()`, `isExteriorRearviewMirrorDipPresent()`, `isRearviewMirrorAdjustmentPresent()`, `isSteeringWheelSteeringHandForcePresent()`, `isEtcSettingPresent()`, `isWiperMaintanencePresent()`, `isAutoWiperPresent()`, `isLockAndUnlockWhistleNotePresent()`, `isLightTurnedOffDelayPresent()`, `isAmbienceLightsControlPresent()`, `isIalPresent()`, `isDriverEasyEntryAndExitFunctionPresent()`, `isSeatControlPresent()`, `isRoofControlPresent()`, `isSteeringWheelControlPresent()`, `isSlidingDoorControlPresent()`, `getWindowControl()`, `isSteeringWheelCustomButtonPresent()`, `isLockControlPresent()`, `isSlidingDoorSpeedAdjustmentPresent()`, `isSlidingDoorControlManualAndAutomaticPresent()`, `getNapMode()`, `isRainstormModePresent()`, `isQishiModePresent()`, `isPartyModePresent()`, `isWakeUpModePresent()`, `isSteeringWheelHeatingPresent()`, `isLightShowPresent()`, `isAmbienceLightsComninationPresent()`, `getPromptType()`, `isHighWayAssistPresent()`, `isNavigationDrivingAssistPresent()`, `isClusterVolumeSettingPresent()`, `isClusterLanguageSettingPresent()`, `isClusterMileageResetPresent()`, `isClusterSpeedUnitPresent()`, `isClusterTemperatureUnitPresent()`, `isClusterPressureUnitPresent()`, `isRearSeatBeltNotificationPresent()`, `isClusterDefaultSettingPresent()`, `isClusterFuelConsumptionUnitPresent()`, `isClusterBackLightPresent()`, `isTimeInClusterPresent()`, `isLaneAuxiliarySwitchPresent()`, `isLaneAssistPresent()`, `isAutoEmergencyBrakingBrakingPresent()`, `isFrontCollisionWarningPresent()`, `isIfcCruisemodePresent()`, `isBsdPresent()`, `isIMRControlPresent()`, `isDoorOpenWarningPresent()`, `isOverspeedWarningPresent()`, `isSpeedLimtedSignRecognitionPresent()`, `isSteeringModePresent()`, `isDrivingRecorderPresent()`, `isEventRecordFunctionSwitchPresent()`, `isLcaCardPresent()`, `getLaneChangeAssist()`, `isDriverStateOfAlertPresent()`, `isEmergencySteeringModePresent()`, `isRaebPresent()`, `isAlertModePresent()`, `isEmergencyLaneKeepingAssistPresent()`, `isRearCrossTrafficAlertPresent()`, `isRearCrossTrafficAlertModePresent()`, `isRearApproachingWarningPresent()`, `isFrontCrossTrafficAlertPresent()`, `isFrontCrossTrafficAlertModePresent()`, `isApaVoicePromptButtonPresent()`, `isForwardCollisionWarningDistancePresent()`, `isIndicatedLaneChangePresent()`, `isOverspeedAlarmOfTsrPresent()`, `isIntelligentSpeedLimitControlPresent()`, `isDriverAssistanceWarningPresent()`, `getDistractedAlarmIntervalTime()`, `getTiredAlarmIntervalTime()`, `getApaAlarmDelayedTime()`, `isEspOffSwitchPresent()`, `isHdcSwitchPresent()`, `isEboosterModePresent()`, `isDriverModePresent()`, `isDriveModeMemorySwitchPresent()`, `isEngineWaveSwitchPresent()`, `isSuspensionDampingPresent()`, `isThrottleSensitivityPresent()`, `getAvdc()`, `isEnergyRecoveryPresent()`, `isVrControlCruisePresent()`, `isVrControlTurnlampPresent()`, `isVrControlSunshadePresent()`, `getVrControlCarwindow()`, `getVrControlIal()`, `isVrControlExtlightPresent()`, `isVrControlToplightPresent()`, `getVrControlWiperAndCleaning()`, `isVrControlChargingAndFuelTankCapPresent()`, `isVrControlEngineAndMotorPresent()`, `isVrControlInstrumentBacklightPresent()`, `getVrControlHvac()`, `isSmartHvacPresent()`, `isSportPlusPresent()`, `isVrControlSeatAdjustmentPresent()`, `getVrControlRoof()`, `isVrControlPlgmPresent()`, `isVrControlDmsNotificationPresent()`, `getVrControlWindowposition()`, `getVrControlRoofposition()`, `getVrControl()`, `isVrControlChargingInsulationNotificationPresent()`, `isVrControlChargingInsulationMenuSwitchPresent()`, `isVrControlChargingBookingMenuSwitchPresent()`, `isVrControlControlDriverModePresent()`, `isVrControlEnergyRecoveryPresent()`, `isVrControlApaControlPresent()`, `getVrControlParking()`, `isDriverDirectVoiceWakeUpPresent()`, `isColdAndWarmCupHolderPresent()`, `isAutoholdPresent()`, `isTechnologySkylightPresent()`, `isIccPresent()`, `isAncPresent()`, `isRearApproachingWarningModePresent()`, `getReserced()`, `getHeatingAndVentilationFl()`, `getHeatingAndVentilationFr()`, `getHeatingAndVentilationRl()`, `getHeatingAndVentilationRr()`, `getSecondRowSeatsWelcome()`, `getLimitSecondRowSeatsWelcomeFunction()`, `isSecondRowSeatMassagePresent()`, `isSecondRowSeatAdjustmentPresent()`, `getSecondRowSeatAdjustmentPresent()`, `isSecondRowChildLockPresent()`, `isPassengerSeatAdjustmentPresent()`, `isDriverSeatControlPresent()`, `getSeatAdjustmentPresentFunction()`, `getDriverSeatControlPresentFunction()`, `isSecondRowSeatRestPresent()`, `isFLSeatMessagePresent()`, `isFRSeatMessagePresent()`, `isSpaPresent()`, `isUltravioletRayPresent()`, `isUnlockVentilationPresent()`, `isEvaporatorSelfDryingPresent()`, `isAirConditioningBlindExercisePresent()`, `isAirConditioningQuickStartPresent()`, `isRapidVentilationPresent()`, `isHospitalityLampSignalsPresent()`, `isTemporaryParkingLampSignalsPresent()`, `isLaneChangeDriverConfirmationPresent()`, `isLaneChangeStylePresent()`, `isIndicatedLaneChangingPresent()`, `isFrontDistanceDisplayPresent()`, `isIntelligentCollisionAvoidancePresent()`, `getFeezeMode()`, `isClusterDistanceSettingPresent()`, `isEnergyFlowModePresent()`, `isEnergyFlowDisplayPresent()`, `isEvSwitchDisplayPresent()`, `isThe3DChimeBootSoundPresent()`, `isThe3DChimeIndicatorPresent()`, `isThe3DChimeLaneChangeAssitAndRearApproachingWarningPresent()`, `isThe3DChimeFrontCollisionWarningSoundPresent()`, `isThe3DChimeReversingRadarSoundPresent()`, `isThe3DChimeIalSoundPresent()`, `isThe3DChimeDriverModeSoundPresent()`, `isEnergyConsumptionAppPresent()`, `isSmartNaviDrivePresent()`, `isSmartCommutDrivePresent()`, `isComfortableStopPresent()`, `isGuidanceOfStartingVhiclePresent()`, `getLeftRightHandDriveVehicles()`, `isOneClickToTurnOnOffTheCellingLightPresent()`, `configData()`, `configValue()`, `return()`, `getConfigData()`, `setConfigData()`
- **`CarDMSManager`** — 21 function(s): `onDMSDistrWarnChanged()`, `onDMSFatigWarnChanged()`, `onDMSModeChanged()`, `onDMSSwitchChanged()`, `onDMSSysErrStatusChanged()`, `CarDMSManager()`, `get()`, `synchronized()`, `if()`, `getDMSSysErrStatus()`, `setDMSSwitchEnabled()`, `setSignalValue()`, `getDMSSwitch()`, `setDMSMode()`, `getDMSMode()`, `getDMSFatigWarn()`, `getDMSDistrWarn()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarDashBoardManager`** — 34 function(s): `onDashBoardPhoneActionMsgChanged()`, `onDashBoardSettingItemInfoChanged()`, `onDashBoardSettingItemLanguageChanged()`, `onDashBoardSourceChanged()`, `onDashBoardTimeFormatChanged()`, `CarDashBoardManager()`, `get()`, `synchronized()`, `if()`, `setSendDashBoardSource()`, `setSignalValue()`, `switch()`, `setSendDashBoardInfo()`, `Thread()`, `run()`, `setSendBtInfoToDashBoardForTboxCall()`, `setSendDashBoardNaviGuideBaseInfoForIhu12()`, `setSendDashBoardNaviGuideUpdateInfoForIhu12()`, `setSendDashBoardMusicArtImage()`, `setSendDashBoardNaviGuideInfo()`, `setDashBoardItemUnit()`, `getSetItemUnitInfo()`, `setDashBoardLanguage()`, `getDashBoardLanguage()`, `getSignalValue()`, `getDashBoardSource()`, `setDashBoardMsgNotify()`, `setDashBoardAudioSourceEnableInfo()`, `setDashBoardSyncSystemTime()`, `setDashBoardFMFreqInfo()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarDeviceManager`** — 37 function(s): `onAVMDisplayButtonChanged()`, `onBSVDisplayStateChanged()`, `onPASAPADrvReqChanged()`, `onPASAPARecIndChanged()`, `onPASAPAStChanged()`, `onPASBackParkDisplayStateChanged()`, `onRecorderDisplayStateChanged()`, `onRecorderRecordStateChanged()`, `CarDeviceManager()`, `get()`, `synchronized()`, `if()`, `getRecorderDisplayState()`, `getRecorderRecordState()`, `setRecorderEnterCmd()`, `setSignalValue()`, `setSvmFunctionCmd()`, `perform360SvmButtonClick()`, `setPAAMode()`, `performAPAButtonClick()`, `getPASBackParkDisplayState()`, `setBSVDisplaySwitch()`, `setBsvFunctionCmd()`, `getBSVDisplayState()`, `performBSVButtonClick()`, `getAVMDisplayButton()`, `setAVMDisplayButtonLight()`, `performAVMPasButtonButtonClick()`, `performDVRButtonButtonClick()`, `getPASAPADrvReq()`, `getSignalValue()`, `getPASAPARecInd()`, `getPASAPASt()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarDoorManager`** — 88 function(s): `onAutoUnlockChanged()`, `onDoorLockBuzzerRequestChanged()`, `onDoorRightLockBuzzerRequestChanged()`, `onDriverDoorLockChanged()`, `onDriverDoorStateChanged()`, `onEngineHoodStateChanged()`, `onHoodDoorStateChanged()`, `onLockUnlockSoundEnableStateChanged()`, `onPEPSAutoTrunkOpenChanged()`, `onPEPSUnlockEnableStateChanged()`, `onPEPSWalkAwayLockEnableStateChanged()`, `onPSDDoorSpeedLChanged()`, `onPSDDoorSpeedRChanged()`, `onPassengerDoorLockChanged()`, `onPassengerDoorStateChanged()`, `onRearLeftDoorStateChanged()`, `onRearRightDoorStateChanged()`, `onRemoteUnlockModeChanged()`, `onSlidingDoorModeAutoChanged()`, `onSlidingDoorModeAutoStateChanged()`, `onSlidingDoorOperationLChanged()`, `onSlidingDoorOperationRChanged()`, `onSlidingDoorStateLChanged()`, `onSlidingDoorStateRChanged()`, `onSpeedAutoLockEnableStateChanged()`, `onTailDoorModeStateChanged()`, `onTailDoorPercentChanged()`, `onTailDoorStateChanged()`, `onTailDoorTravelPercentChanged()`, `onTrunkDoorStateChanged()`, `CarDoorManager()`, `get()`, `synchronized()`, `if()`, `getEngineHoodState()`, `getHoodDoorState()`, `getDriverDoorState()`, `getPassengerDoorState()`, `getRearLeftDoorState()`, `getRearRightDoorState()`, `getTrunkDoorState()`, `getRemoteUnlockMode()`, `setRemoteUnlockMode()`, `setSignalValue()`, `getAutoUnlock()`, `setAutoUnlock()`, `getSpeedAutoLockEnableState()`, `setSpeedAutoLockEnabled()`, `getLockUnlockSoundEnableState()`, `setLockUnlockSoundEnabled()`, `getPEPSUnlockEnableState()`, `setPEPSUnlockEnabled()`, `getPEPSWalkAwayLockEnableState()`, `setPEPSWalkAwayLockEnabled()`, `getPEPSAutoTrunkOpen()`, `setPEPSAutoTrunkOpen()`, `setTailDoorCmd()`, `performTailDoorPositionMemoryClearButtonClick()`, `performTailDoorMaxPositionMemoryButtonClick()`, `getTailDoorPercent()`, `getSignalValue()`, `getTailDoorTravelPercent()`, `getTailDoorState()`, `isTailDoorModeEnabled()`, `setPLGMControl()`, `setPLGMMaxLevel()`, `setPLGMFunction()`, `getPSDDoorSpeedL()`, `setPSDDoorSpeedL()`, `getPSDDoorSpeedR()`, `setPSDDoorSpeedR()`, `isSlidingDoorModeAutoEnabled()`, `setSlidingDoorModeAutoEnabled()`, `getSlidingDoorModeAuto()`, `setSlidingDoorCmdR()`, `setSlidingDoorCmdL()`, `getSlidingDoorStateL()`, `getSlidingDoorOperationL()`, `getSlidingDoorStateR()`, `getSlidingDoorOperationR()`, `getDriverDoorLock()`, `getPassengerDoorLock()`, `getDoorLockBuzzerRequest()`, `getDoorRightLockBuzzerRequest()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarDriveManager`** — 64 function(s): `onAssistParaSwitchReqStateChanged()`, `onAutoHoldChanged()`, `onAvdcModeChanged()`, `onBcsVdcOffStateChanged()`, `onCDCStyleModeChanged()`, `onDriveModeChanged()`, `onDriveModeHevChanged()`, `onDriveSystemModeChanged()`, `onEMSEngineWaveSwitchStateChanged()`, `onEPBIndChanged()`, `onEPSStyleChanged()`, `onEpsModeStateChanged()`, `onEspStateChanged()`, `onEspStyleChanged()`, `onGasPedalLevelChanged()`, `onHdcStateChanged()`, `onMemoryDriveModeA9EChanged()`, `onMemoryDriveModeChanged()`, `onMrrAccModeChanged()`, `onTcuDriveModeChanged()`, `onXDriveModeChanged()`, `CarDriveManager()`, `get()`, `synchronized()`, `if()`, `getDriveMode()`, `setDriveMode()`, `setSignalValue()`, `getEPSStyle()`, `setEPSStyle()`, `getEpsModeState()`, `getEspStyle()`, `getAssistParaSwitchReqState()`, `getEMSEngineWaveSwitchState()`, `setEMSEngineWaveEnabled()`, `getMemoryDriveMode()`, `getMemoryDriveModeA9E()`, `setMemoryDriveMode()`, `getEspState()`, `setEspState()`, `getHdcState()`, `setHdcState()`, `getAvdcMode()`, `setAvdcMode()`, `getGasPedalLevel()`, `setGasPedalLevel()`, `getTcuDriveMode()`, `getDriveSystemMode()`, `getAutoHold()`, `performAutoHoldButtonClick()`, `getBcsVdcOffState()`, `getDriveModeHev()`, `getMrrAccMode()`, `getXDriveMode()`, `setXDriveMode()`, `getCDCStyleMode()`, `setCDCStyleMode()`, `setTcuDriveMode()`, `getEPBInd()`, `getSignalValue()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarEvDeviceManager`** — 155 function(s): `onAvdcModeChanged()`, `onBatteryQuantityPercentChanged()`, `onBookChrgStartDayChanged()`, `onBookChrgStartHourChanged()`, `onBookChrgStartMinChanged()`, `onBookChrgStartMonChanged()`, `onBookChrgStartRemainingDayChanged()`, `onBookChrgStartRemainingHourChanged()`, `onBookChrgStartRemainingMinChanged()`, `onBookChrgStartYearChanged()`, `onBookChrgStopDayChanged()`, `onBookChrgStopHourChanged()`, `onBookChrgStopMinChanged()`, `onBookChrgStopMonChanged()`, `onBookChrgStopYearChanged()`, `onChargActiveChanged()`, `onChargCurrentChanged()`, `onChargStateChanged()`, `onChargeFullNoticeLevelChanged()`, `onChargeModeChanged()`, `onChargeSocPercentChanged()`, `onChargeSocPercentValidEnableStateChanged()`, `onChargeWarmTimeChanged()`, `onChargeWarmTimeValidEnableStateChanged()`, `onDischgActiveStateStateChanged()`, `onDischgEndVehRngChanged()`, `onDischgEngStartCfgStateChanged()`, `onDischgSetInfoChanged()`, `onDischgSocCfgChanged()`, `onDischgTimeCfgChanged()`, `onDriveModeEvChanged()`, `onDrvTargetSOEChanged()`, `onEcoModeEnableStateChanged()`, `onEcoNormalSportModeEnableStateChanged()`, `onEcoPlusModeEnableStateChanged()`, `onEnergyModelChanged()`, `onEngSelfMaintDispStateChanged()`, `onGasPedalLevelChanged()`, `onHVEMPowerFlowStateChanged()`, `onHVEPPowerFlowStateChanged()`, `onHVM2BPowerFlowStateChanged()`, `onHVMBPowerFlowStateChanged()`, `onHVMPPowerFlowStateChanged()`, `onHealCheckNoticeChanged()`, `onIpedalCreepStateChanged()`, `onIpedalCreepValidEnableStateChanged()`, `onIpedalModeEnableStateChanged()`, `onObcConnStateChanged()`, `onPlugAutoUnlockCfgChanged()`, `onPowerFlowModeChanged()`, `onRecpLevelAvailChanged()`, `onRecuperationLevelA9EChanged()`, `onRecuperationLevelChanged()`, `onRepeatBookChrgDay1Changed()`, `onRepeatBookChrgDay2Changed()`, `onRepeatBookChrgDay3Changed()`, `onRepeatBookChrgDay4Changed()`, `onRepeatBookChrgDay5Changed()`, `onRepeatBookChrgDay6Changed()`, `onRepeatBookChrgDay7Changed()`, `onSocProgressChanged()`, `onVehRdyStateStateChanged()`, `onXDriveModeChanged()`, `CarEvDeviceManager()`, `get()`, `synchronized()`, `if()`, `getPowerFlowMode()`, `getBatteryQuantityPercent()`, `getSignalValue()`, `getRecuperationLevel()`, `setRecuperationLevel()`, `setSignalValue()`, `getRecpLevelAvail()`, `getDriveModeEv()`, `setDriveModeEv()`, `setEcoPlusMode()`, `getEcoPlusModeEnableState()`, `getEcoModeEnableState()`, `getIpedalModeEnableState()`, `getEcoNormalSportModeEnableState()`, `isIpedalCreepEnabled()`, `setIpedalCreepEnabled()`, `getIpedalCreepValidEnableState()`, `getChargeSocPercent()`, `setChargeSocPercent()`, `getChargeSocPercentValidEnableState()`, `getChargeWarmTime()`, `setChargeWarmTime()`, `getChargeWarmTimeValidEnableState()`, `getChargeFullNoticeLevel()`, `getHealCheckNotice()`, `getBookChrgStartRemainingDay()`, `getBookChrgStartRemainingHour()`, `getBookChrgStartRemainingMin()`, `getBookChrgStartYear()`, `getBookChrgStartMon()`, `getBookChrgStartDay()`, `getBookChrgStartHour()`, `getBookChrgStartMin()`, `getBookChrgStopYear()`, `getBookChrgStopMon()`, `getBookChrgStopDay()`, `getBookChrgStopHour()`, `getBookChrgStopMin()`, `getChargeMode()`, `getRepeatBookChrgDay1()`, `getRepeatBookChrgDay2()`, `getRepeatBookChrgDay3()`, `getRepeatBookChrgDay4()`, `getRepeatBookChrgDay5()`, `getRepeatBookChrgDay6()`, `getRepeatBookChrgDay7()`, `getRecuperationLevelA9E()`, `setRecuperationLevelA9E()`, `isVehRdyStateEnabled()`, `isEngSelfMaintDispEnabled()`, `getEnergyModel()`, `setEnergyModel()`, `getDrvTargetSOE()`, `setDrvTargetSOE()`, `isDischgEngStartCfgEnabled()`, `setDischgEngStartCfg()`, `getDischgSocCfg()`, `setDischgSocCfg()`, `isDischgActiveStateEnabled()`, `setDischgActiveStateEnabled()`, `getDischgEndVehRng()`, `getDischgTimeCfg()`, `setDischgTimeCfg()`, `getPlugAutoUnlockCfg()`, `setPlugAutoUnlockCfg()`, `getChargState()`, `getChargActive()`, `setChargEnd()`, `getChargCurrent()`, `setChargCurrent()`, `getDischgSetInfo()`, `getObcConnState()`, `getSocProgress()`, `getHVEPPowerFlowState()`, `getHVEMPowerFlowState()`, `getHVMPPowerFlowState()`, `getHVMBPowerFlowState()`, `getHVM2BPowerFlowState()`, `getAvdcMode()`, `setAvdcMode()`, `getGasPedalLevel()`, `setGasPedalLevel()`, `getXDriveMode()`, `setXDriveMode()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarFragranceManager`** — 38 function(s): `onFragrance1WorkStateChanged()`, `onFragrance2WorkStateChanged()`, `onFragrance3WorkStateChanged()`, `onFragranceConcentrationChanged()`, `onFragranceTaste1FragChanged()`, `onFragranceTaste1PercentChanged()`, `onFragranceTaste2FragChanged()`, `onFragranceTaste2PercentChanged()`, `onFragranceTaste3FragChanged()`, `onFragranceTaste3PercentChanged()`, `onFragranceTasteBoxIdChanged()`, `onFragranceTasteWorkingBoxIdChanged()`, `onFragranceWorkWarnChanged()`, `CarFragranceManager()`, `get()`, `synchronized()`, `if()`, `setFragranceTaste()`, `setSignalValue()`, `setFragranceConcentration()`, `getFragranceConcentration()`, `getFragranceTaste1Percent()`, `getSignalValue()`, `getFragranceTaste2Percent()`, `getFragranceTaste3Percent()`, `getFragrance1WorkState()`, `getFragrance2WorkState()`, `getFragrance3WorkState()`, `getFragranceTaste1Frag()`, `getFragranceTaste2Frag()`, `getFragranceTaste3Frag()`, `getFragranceTasteBoxId()`, `getFragranceTasteWorkingBoxId()`, `getFragranceWorkWarn()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarIcmManager`** — 50 function(s): `onBackLightLevelChanged()`, `onDriveDistanceChanged()`, `onFuelEconomyAndDistanceUnitChanged()`, `onICMCurrentShowPageChanged()`, `onICMFuelLevelChanged()`, `onICMFuelLevelLowChanged()`, `onKeepMuteWarningStateChanged()`, `onKeyBoardBackLightChanged()`, `onLanguageChanged()`, `onMeterVolumeModeChanged()`, `onPressureUnitChanged()`, `onRearSeatBeltWarnChanged()`, `onSpeedWarningChanged()`, `onTemperatureUnitChanged()`, `CarIcmManager()`, `get()`, `synchronized()`, `if()`, `getBackLightLevel()`, `setBackLightLevel()`, `setSignalValue()`, `getTemperatureUnit()`, `setTemperatureUnit()`, `getPressureUnit()`, `setPressureUnit()`, `getSpeedWarning()`, `getSignalValue()`, `setSpeedWarning()`, `getLanguage()`, `setLanguage()`, `getFuelEconomyAndDistanceUnit()`, `setFuelEconomyAndDistanceUnit()`, `isKeepMuteWarningEnabled()`, `getKeyBoardBackLight()`, `getMeterVolumeMode()`, `setMeterVolumeMode()`, `setFMFreqSymbol()`, `getRearSeatBeltWarn()`, `setRearSeatBeltWarnEnabled()`, `setRearSeatBeltWarn()`, `setCurrentSource()`, `getICMCurrentShowPage()`, `setICMShowPage()`, `getICMFuelLevel()`, `getICMFuelLevelLow()`, `getDriveDistance()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarInfoManager`** — 61 function(s): `onBatteryVoltageChanged()`, `onCarReadyIndicatorChanged()`, `onDayNightModeChanged()`, `onEngineCrankStateChanged()`, `onEngineIgnAngleChanged()`, `onEngineSpeedChanged()`, `onGearPositionA9EChanged()`, `onGearPositionChanged()`, `onGearPositionHEVChanged()`, `onLowBatteryWarningLevelChanged()`, `onParkingBrakeStateChanged()`, `onPowerModeChanged()`, `onPressureOfAtmosphericChanged()`, `onPressureOfOilChanged()`, `onPressureOfTurbineChanged()`, `onRearGearStateChanged()`, `onSleepWakeUpCommandChanged()`, `onTemperatureOfEngineWaterChanged()`, `onTemperatureOfExhaustChanged()`, `onTemperatureOfIntakeAirChanged()`, `onTemperatureOfTransmissionOilChanged()`, `onTotalOdometerChanged()`, `onTransportationModeStateChanged()`, `onVehicleModeBroadcastChanged()`, `onVehicleSpeedChanged()`, `onVehicleStateChanged()`, `CarInfoManager()`, `get()`, `synchronized()`, `if()`, `getPowerMode()`, `getEngineSpeed()`, `getSignalValue()`, `getVehicleSpeed()`, `getTotalOdometer()`, `getBatteryVoltage()`, `getLowBatteryWarningLevel()`, `getRearGearState()`, `getGearPosition()`, `getGearPositionA9E()`, `getGearPositionHEV()`, `getParkingBrakeState()`, `getVehicleState()`, `getSleepWakeUpCommand()`, `getDayNightMode()`, `getVehicleModeBroadcast()`, `isTransportationModeEnabled()`, `getEngineCrankState()`, `getPressureOfTurbine()`, `getPressureOfAtmospheric()`, `getPressureOfOil()`, `getTemperatureOfEngineWater()`, `getTemperatureOfExhaust()`, `getTemperatureOfIntakeAir()`, `getTemperatureOfTransmissionOil()`, `getEngineIgnAngle()`, `getCarReadyIndicator()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarKeyManager`** — 11 function(s): `onKnobKeyEvent()`, `onPanelKeyEvent()`, `onSteeringWheelKeyEvent()`, `CarKeyManager()`, `get()`, `synchronized()`, `if()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarLightManager`** — 84 function(s): `onADBEnableStateChanged()`, `onAtmosphereDriveModeLampColorChanged()`, `onAtmosphereLampBrightnessChanged()`, `onAtmosphereLampColorChanged()`, `onAtmosphereLampDriveModeChanged()`, `onAtmosphereLampMusicModeEnableStateChanged()`, `onAtmosphereLampWorkModeChanged()`, `onAutoHoldLightEnableStateChanged()`, `onAutoWelLightEnableStateChanged()`, `onBrakeLampStateChanged()`, `onDRLLightEnableStateChanged()`, `onDRLLightValidStateChanged()`, `onDriverModeMusicModeCfgChanged()`, `onHeadLightDelayEnableStateChanged()`, `onIHBCEnableStateChanged()`, `onILBCStateChanged()`, `onLightShowMainLampSwitchStChanged()`, `onLightShowModeChanged()`, `onLowLightStateChanged()`, `onSmallLightStateChanged()`, `onTechGlassLightChooseChanged()`, `onTopLightStateChanged()`, `onWelLightEnableStateChanged()`, `onWelLightModeChanged()`, `CarLightManager()`, `get()`, `synchronized()`, `if()`, `isBrakeLampEnabled()`, `getSignalValue()`, `isILBCEnabled()`, `setILBCEnabled()`, `setSignalValue()`, `getIHBCEnableState()`, `setIHBCEnabled()`, `getHeadLightDelayEnableState()`, `setHeadLightDelayEnabled()`, `isLowLightEnabled()`, `isSmallLightEnabled()`, `isTopLightEnabled()`, `setTopLightEnabled()`, `setAtmosphereLampStateEnabled()`, `getAtmosphereLampBrightness()`, `setAtmosphereLampBrightness()`, `getAtmosphereLampColor()`, `setAtmosphereLampColor()`, `getAtmosphereLampWorkMode()`, `setAtmosphereLampWorkMode()`, `setAtmosphereLampDriveModeEnabled()`, `getAtmosphereLampDriveMode()`, `setAtmosphereLampDriveMode()`, `getAtmosphereLampMusicModeEnableState()`, `setAtmosphereLampMusicModeEnabled()`, `setAtmosphereLampMusicMode()`, `getAutoHoldLightEnableState()`, `setAutoHoldLightFunCfgEnabled()`, `getWelLightEnableState()`, `setWelLightFunCfgEnabled()`, `getWelLightMode()`, `setWelLightMode()`, `getLightShowMainLampSwitchSt()`, `setLightShowFunCmd()`, `getLightShowMode()`, `setLightShowMode()`, `setLightShowTime()`, `getADBEnableState()`, `setADBEnabled()`, `setTopLightAllCtrlEnabled()`, `setAutoWelLightEnableStateEnabled()`, `getAutoWelLightEnableState()`, `getAtmosphereDriveModeLampColor()`, `setAtmosphereDriveModeLampColor()`, `getDRLLightEnableState()`, `setDRLLightFunCfgEnabled()`, `getDRLLightValidState()`, `getDriverModeMusicModeCfg()`, `setDriverModeMusicModeCfg()`, `getTechGlassLightChoose()`, `setTechGlassLightChoose()`, `setHeadLightVirtualSwitch()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarMiscManager`** — 69 function(s): `onAteCarTypeStateChanged()`, `onCarInfoAvmStateChanged()`, `onCarInfoCameraRearViewStateChanged()`, `onDeviceExtAvmStateChanged()`, `onDeviceNodeStateChanged()`, `onFactoryModeCanStateChanged()`, `onFactoryModeDevelopModeChanged()`, `onFactoryModeErrorCodeChanged()`, `onFactoryModeStateChanged()`, `onFactoryModeTransportModeChanged()`, `onFactoryModeUds2FHmiModeChanged()`, `onFactoryModeUds2FKeyTestChanged()`, `onFactoryModeUds2FProgramSourceInfoChanged()`, `onFactoryModeUds2FSpeakerInfoChanged()`, `onFactoryModeUds2FStateChanged()`, `onFactoryModeUds2FTftBackLightLevelChanged()`, `onFactoryModeUds2FTftColorChanged()`, `onFactoryModeUds2FTftInfoChanged()`, `onFactoryModeUds2FVolumeChanged()`, `onFactoryModeUds31EngineerInfoChanged()`, `onKeyboardBacklightChanged()`, `onScreenBacklightChanged()`, `onTBoxBatteryStateChanged()`, `onTBoxConnectStateChanged()`, `onTBoxEcallStateChanged()`, `CarMiscManager()`, `get()`, `synchronized()`, `if()`, `setSystemTime()`, `setSignalValue()`, `getScreenBacklight()`, `getSignalValue()`, `setScreenBacklight()`, `turnScreenOnOff()`, `setScreenTouchEnabled()`, `getKeyboardBacklight()`, `setKeyboardBacklight()`, `setFactoryModeErrorCodeEnabled()`, `setFactoryModeCanStateEnabled()`, `setCheckFactoryModeState()`, `setFactoryModeClearDtc()`, `setFactoryModeReSetFactorySettingNotify()`, `setFactoryModeReSetDashBoardFactorySetting()`, `setCarDtcState()`, `setFactoryModeDevelopModeEnabled()`, `getFactoryModeDevelopModeEnabled()`, `setQueryCarInfoCameraRearViewState()`, `getCarInfoCameraRearViewState()`, `setQueryCarInfoAvmState()`, `getCarInfoAvmState()`, `getTBoxConnectState()`, `getTBoxECallState()`, `getTBoxBatteryState()`, `getDeviceNodeState()`, `setDeviceExtAvmState()`, `getDeviceExtAvmState()`, `setFactoryModeCarKitCreateDate()`, `setFactoryModeEcuAndProductLineSerial()`, `setAteCarType()`, `getAteCarType()`, `getFactoryModeTransportMode()`, `setFastSleep()`, `setFactoryModeUUID()`, `setFactoryModePartNum()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarMotoManager`** — 37 function(s): `onGearsLevelStatusChanged()`, `onGearsStatusChanged()`, `onHandlebarKeyHeatChanged()`, `onIgnitionStatusChanged()`, `onKnobLeftRightKeyChanged()`, `onKnobStepNumKeyChanged()`, `onKnobUpDownKeyChanged()`, `onMOTOEngineSpeedChanged()`, `onMOTOFullLightChanged()`, `onMOTOIGNKeyStatusChanged()`, `onMOTOSpeedChanged()`, `onPreviewModeKeyChanged()`, `onRightModeKeyChanged()`, `onTurnLightInfoChanged()`, `CarMotoManager()`, `get()`, `synchronized()`, `if()`, `getTurnLightInfo()`, `getHandlebarKeyHeat()`, `getGearsStatus()`, `getRightModeKey()`, `getPreviewModeKey()`, `getKnobUpDownKey()`, `getKnobLeftRightKey()`, `getKnobStepNumKey()`, `getSignalValue()`, `getMOTOIGNKeyStatus()`, `getMOTOSpeed()`, `getMOTOEngineSpeed()`, `getMOTOFullLight()`, `getGearsLevelStatus()`, `getIgnitionStatus()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarParkingManager`** — 58 function(s): `onPASDistanceFLChanged()`, `onPASDistanceFLMiddleChanged()`, `onPASDistanceFLSideChanged()`, `onPASDistanceFRChanged()`, `onPASDistanceFRMiddleChanged()`, `onPASDistanceFRSideChanged()`, `onPASDistanceRLChanged()`, `onPASDistanceRLMiddleChanged()`, `onPASDistanceRLSideChanged()`, `onPASDistanceRRChanged()`, `onPASDistanceRRMiddleChanged()`, `onPASDistanceRRSideChanged()`, `onPASErrorFlagOfEEPROMChanged()`, `onPASErrorFlagOfIGNVoltageChanged()`, `onPASErrorFlagRLChanged()`, `onPASErrorFlagRLMiddleChanged()`, `onPASErrorFlagRRChanged()`, `onPASErrorFlagRRMiddleChanged()`, `onPASSystemFailureFlagChanged()`, `onPASSystemTypeChanged()`, `onPASWarnToneChanged()`, `onParkingRadarAlarmEnableStateChanged()`, `onParkingVoiceSwitchEnableStateChanged()`, `CarParkingManager()`, `get()`, `synchronized()`, `if()`, `getPASSystemType()`, `getPASSystemFailureFlag()`, `getPASWarnTone()`, `getPASDistanceRLMiddle()`, `getSignalValue()`, `getPASDistanceRRMiddle()`, `getPASDistanceFLMiddle()`, `getPASDistanceFRMiddle()`, `getPASDistanceRR()`, `getPASDistanceRL()`, `getPASDistanceFR()`, `getPASDistanceFL()`, `getPASDistanceRRSide()`, `getPASDistanceRLSide()`, `getPASDistanceFRSide()`, `getPASDistanceFLSide()`, `getPASErrorFlagRRMiddle()`, `getPASErrorFlagRLMiddle()`, `getPASErrorFlagRR()`, `getPASErrorFlagRL()`, `getPASErrorFlagOfEEPROM()`, `getPASErrorFlagOfIGNVoltage()`, `getParkingRadarAlarmEnableState()`, `performParkingRadarAlarmButtonClick()`, `setSignalValue()`, `getParkingVoiceSwitchEnableState()`, `setParkingVoiceSwitchEnabled()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarPowerManager`** — 12 function(s): `onPowerModeChanged()`, `onPowerStateChanged()`, `CarPowerManager()`, `get()`, `synchronized()`, `if()`, `getPowerState()`, `getPowerMode()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarSeatManager`** — 110 function(s): `onChildLockRLChanged()`, `onChildLockRRChanged()`, `onCurrPepsPuidChanged()`, `onHeatLevelFLChanged()`, `onHeatLevelFRChanged()`, `onHeatLevelRLChanged()`, `onHeatLevelRRChanged()`, `onHeatVentAutoModeFLStateChanged()`, `onHeatVentAutoModeFRStateChanged()`, `onHeatVentAutoModeRLStateChanged()`, `onHeatVentAutoModeRRStateChanged()`, `onMemSysOperationReqCmdChanged()`, `onSeatMassageLevelFLChanged()`, `onSeatMassageLevelFRChanged()`, `onSeatMassageLevelRLChanged()`, `onSeatMassageLevelRRChanged()`, `onSeatMassageModeFLChanged()`, `onSeatMassageModeFRChanged()`, `onSeatMassageModeRLChanged()`, `onSeatMassageModeRRChanged()`, `onSeatMassageOnOffFLChanged()`, `onSeatMassageOnOffFRChanged()`, `onSeatMassageOnOffRLChanged()`, `onSeatMassageOnOffRRChanged()`, `onSeatOperationStateChanged()`, `onVentLevelFLChanged()`, `onVentLevelFRChanged()`, `onVentLevelRLChanged()`, `onVentLevelRRChanged()`, `CarSeatManager()`, `get()`, `synchronized()`, `if()`, `getHeatLevelFL()`, `setHeatLevelFL()`, `setSignalValue()`, `getHeatLevelFR()`, `setHeatLevelFR()`, `getHeatLevelRL()`, `setHeatLevelRL()`, `getHeatLevelRR()`, `setHeatLevelRR()`, `getVentLevelFL()`, `setVentLevelFL()`, `getVentLevelFR()`, `setVentLevelFR()`, `getVentLevelRL()`, `setVentLevelRL()`, `getVentLevelRR()`, `setVentLevelRR()`, `setHeatVentModeFL()`, `setHeatVentModeFR()`, `setHeatVentModeRL()`, `setHeatVentModeRR()`, `isHeatVentAutoModeFLEnabled()`, `getSignalValue()`, `setHeatVentAutoModeFLEnabled()`, `isHeatVentAutoModeFREnabled()`, `setHeatVentAutoModeFREnabled()`, `isHeatVentAutoModeRLEnabled()`, `setHeatVentAutoModeRLEnabled()`, `isHeatVentAutoModeRREnabled()`, `setHeatVentAutoModeRREnabled()`, `setSeatSteeringWheel()`, `getSeatMassageOnOffRL()`, `setSeatMassageOnOffRLEnabled()`, `setSeatMassageOnOffRLSwitch()`, `getSeatMassageModeRL()`, `setSeatMassageModeRL()`, `getSeatMassageLevelRL()`, `setSeatMassageLevelRL()`, `getSeatMassageOnOffRR()`, `setSeatMassageOnOffRREnabled()`, `setSeatMassageOnOffRRSwitch()`, `getSeatMassageModeRR()`, `setSeatMassageModeRR()`, `getSeatMassageLevelRR()`, `setSeatMassageLevelRR()`, `getChildLockRL()`, `setChildLockRLEnabled()`, `getChildLockRR()`, `setChildLockRREnabled()`, `getCurrPepsPuid()`, `setCurrAccountCfg()`, `setAccountDelete()`, `setDriverSeatPostionCmd()`, `getSeatOperationState()`, `getMemSysOperationReqCmd()`, `setSeatSteeringWheelFR()`, `setCurrAccountSeatPosition()`, `setSeatSteeringWheelRearLeft()`, `setSeatSteeringWheelRearRight()`, `getSeatMassageOnOffFL()`, `setSeatMassageOnOffFLEnabled()`, `setSeatMassageOnOffFLSwitch()`, `getSeatMassageModeFL()`, `setSeatMassageModeFL()`, `getSeatMassageLevelFL()`, `setSeatMassageLevelFL()`, `getSeatMassageOnOffFR()`, `setSeatMassageOnOffFREnabled()`, `setSeatMassageOnOffFRSwitch()`, `getSeatMassageModeFR()`, `setSeatMassageModeFR()`, `getSeatMassageLevelFR()`, `setSeatMassageLevelFR()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarSettingsManager`** — 260 function(s): `onADASELKStatusChanged()`, `onADASRAEBStatusChanged()`, `onADASWarnTypeChanged()`, `onAEBOffEnableStateChanged()`, `onAEBOffFaultStateChanged()`, `onAVASEnableStateChanged()`, `onAcSmartChanged()`, `onAutoWiperModeChanged()`, `onBSDMDowStateChanged()`, `onBSDMLcaStateChanged()`, `onBSDMRctaAssistTypeChanged()`, `onBSDMRctaStateChanged()`, `onBSDMRcwStateChanged()`, `onComfortParkStateChanged()`, `onCruiseAssistModeChanged()`, `onDoorHandleElectricHideStateChanged()`, `onDragModeChanged()`, `onDriverEasyEntryAndExitStateChanged()`, `onEMSEngWaveStatusChanged()`, `onEPBSystemMsgChanged()`, `onEPBSystemStateChanged()`, `onETCEnableStateChanged()`, `onExhibitionHallModeChanged()`, `onExhibitionHallModeStateChanged()`, `onFCTAConfigChanged()`, `onFCTASwitchChanged()`, `onFCWOffEnableStateChanged()`, `onFCWOffFaultStateChanged()`, `onFCWSwitchEnableStateChanged()`, `onFCWWarningDistanceChanged()`, `onFrontCarDistanceDisplayEnableStateChanged()`, `onFrontWiperAutoConfigChanged()`, `onFrontWiperIntConfigChanged()`, `onFrontWiperModeChanged()`, `onFrontWiperServicePositionStateChanged()`, `onFrontWiperWasherChanged()`, `onHUDADASCruiseDisChanged()`, `onHUDADASTSRDisChanged()`, `onHUDNAVInfoChanged()`, `onHudAngleStChanged()`, `onHudBrightnessStChanged()`, `onHudHeightStChanged()`, `onHudModeChanged()`, `onHudOffStateChanged()`, `onIAccEnableStateChanged()`, `onILCHWASwitchChanged()`, `onIMRCtrlErrorStatusChanged()`, `onIMRCtrlStatusChanged()`, `onIntelligentAvoidEnableStateChanged()`, `onKeyNotforgetWarningEnableStateChanged()`, `onLksModeChanged()`, `onLksStateChanged()`, `onOSRMAutoFoldEnableStateChanged()`, `onOSRMRAngleCmdChanged()`, `onOSRMRAngleHorizontalFLChanged()`, `onOSRMRAngleHorizontalFRChanged()`, `onOSRMRAngleVerticalFLChanged()`, `onOSRMRAngleVerticalFRChanged()`, `onParkAutoUnlockChanged()`, `onPowerKeepRemindConfChanged()`, `onPowerKeepRemindReqChanged()`, `onPowerKeepReqChanged()`, `onPowerKeepReqVdChanged()`, `onPowerOffReqVdChanged()`, `onRLSPABUttonStateChanged()`, `onRLSeatSpaModeStateChanged()`, `onRLSeatWelcomeChanged()`, `onRRSPABUttonStateChanged()`, `onRRSeatSpaModeStateChanged()`, `onRRSeatWelcomeChanged()`, `onRainstormModeChanged()`, `onRearWiperChanged()`, `onRearWiperWasherChanged()`, `onRearviewMirrorCmdForReverseChanged()`, `onRearviewMirrorStateLChanged()`, `onRearviewMirrorStateRChanged()`, `onSeatNapModePositionStateChanged()`, `onSeatNapModeStateChanged()`, `onSeatNapPosSaveReqChanged()`, `onStpOnBrkToRelParkBrkIndOnStateChanged()`, `onTSRAudioWarningEnableStateChanged()`, `onTSREnableStateChanged()`, `onWCLCMWorkModeChanged()`, `onWCMCtlChargingStateChanged()`, `onWCMCtlErrorStateStateChanged()`, `onWCMCtlFailureStateChanged()`, `onWCMCtlPromptStateStateChanged()`, `onWCMCtlResultChanged()`, `onWarnForcePowerOFFChanged()`, `CarSettingsManager()`, `get()`, `synchronized()`, `if()`, `getLksState()`, `setLdwLkaEnabled()`, `setSignalValue()`, `getLksMode()`, `setLksMode()`, `getFCWOffEnableState()`, `setFCWOffEnabled()`, `getFCWOffFaultState()`, `getFCWSwitchEnableState()`, `getFCWWarningDistance()`, `setFCWWarningDistance()`, `getAEBOffEnableState()`, `setAEBOffEnabled()`, `getAEBOffFaultState()`, `getTSREnableState()`, `setTSREnabled()`, `getTSRAudioWarningEnableState()`, `setTSRAudioWarningEnabled()`, `getIAccEnableState()`, `setIAccEnabled()`, `getOSRMAutoFoldEnableState()`, `setOSRMAutoFoldEnabled()`, `getADASWarnType()`, `setADASWarnType()`, `getAVASEnableState()`, `setAVASEnabled()`, `getETCEnableState()`, `setETCEnabled()`, `isFrontWiperServicePositionEnabled()`, `getSignalValue()`, `performFrontWiperServicePositionButtonClick()`, `getAutoWiperMode()`, `setAutoWiperMode()`, `getRainstormMode()`, `setRainstormMode()`, `setRearviewMirrorCmd()`, `setRearviewMirrorCmdVdSwitch()`, `getRearviewMirrorStateL()`, `getRearviewMirrorStateR()`, `getFrontCarDistanceDisplayEnableState()`, `setFrontCarDistanceDisplayEnabled()`, `getIntelligentAvoidEnableState()`, `setIntelligentAvoidEnabled()`, `getCruiseAssistMode()`, `setCruiseAssistMode()`, `getRearviewMirrorCmdForReverse()`, `setRearviewMirrorCmdForReverse()`, `setRearviewMirrorSettingCmd()`, `getEPBSystemState()`, `setEPBSystemSetState()`, `getDragMode()`, `setDragModeEnabled()`, `getEPBSystemMsg()`, `getStpOnBrkToRelParkBrkIndOnState()`, `getParkAutoUnlock()`, `setParkAutoUnlock()`, `getKeyNotforgetWarningEnableState()`, `setKeyNotforgetWarningEnabled()`, `getPowerKeepReq()`, `setPowerKeepReqEnabled()`, `getPowerKeepReqVd()`, `setPowerKeepReqVdSwitch()`, `getPowerKeepRemindReq()`, `getPowerKeepRemindConf()`, `setPowerKeepRemindConfEnabled()`, `getPowerOffReqVd()`, `setPowerOffReqVdSwitch()`, `setPowerOffReqSwitch()`, `getAcSmart()`, `setAcSmartEnabled()`, `getComfortParkState()`, `setComfortParkStateEnabled()`, `isDoorHandleElectricHideEnabled()`, `setDoorHandleElectricHideEnabled()`, `getOSRMRAngleCmd()`, `setOSRMRAngleCmd()`, `setOSRMRAngleSaveCmd()`, `getOSRMRAngleVerticalFL()`, `getOSRMRAngleHorizontalFL()`, `getOSRMRAngleVerticalFR()`, `getOSRMRAngleHorizontalFR()`, `isDriverEasyEntryAndExitEnabled()`, `setDriverEasyEntryAndExitEnabled()`, `getWCMCtlResult()`, `setWCMCtl()`, `getWCMCtlChargingState()`, `getWCMCtlFailureState()`, `getWCLCMWorkMode()`, `setWCLCMWorkModeCtl()`, `getBSDMLcaState()`, `setBSDMLcaCtl()`, `getBSDMDowState()`, `setBSDMDowCtl()`, `getBSDMRctaState()`, `setBSDMRctaCtl()`, `getBSDMRctaAssistType()`, `setBSDMRctaAssistType()`, `getBSDMRcwState()`, `setBSDMRcwCtl()`, `getHudOffState()`, `setHudOffState()`, `getHudBrightnessSt()`, `setHudBrightnessSt()`, `getHudHeightSt()`, `setHudHeightSt()`, `getHudAngleSt()`, `setHudAngleSt()`, `getHudMode()`, `setHudMode()`, `isWCMCtlPromptStateEnabled()`, `isWCMCtlErrorStateEnabled()`, `getADASELKStatus()`, `setADASELKEnabled()`, `getEMSEngWaveStatus()`, `setEMSEngWaveEnabled()`, `getRLSeatWelcome()`, `setRLSeatWelcomeEnabled()`, `getRRSeatWelcome()`, `setRRSeatWelcomeEnabled()`, `getRLSPABUttonState()`, `getRRSPABUttonState()`, `setSCMNapSettingSwitch()`, `setSCMNapSettingSave()`, `getSeatNapModePositionState()`, `getSeatNapModeState()`, `getRLSeatSpaModeState()`, `getRRSeatSpaModeState()`, `setSCMRearSeatShortcutmode()`, `setFrontWiperMode()`, `getFrontWiperMode()`, `setRearWiperEnabled()`, `getRearWiper()`, `setFrontWiperWasherEnabled()`, `getFrontWiperWasher()`, `setRearWiperWasherEnabled()`, `getRearWiperWasher()`, `getILCHWASwitch()`, `setILCHWASwitchEnabled()`, `getFCTASwitch()`, `setFCTASwitchEnabled()`, `getFCTAConfig()`, `setFCTAConfig()`, `setHUDADASCruiseDisEnabled()`, `getHUDADASCruiseDis()`, `setHUDADASTSRDisEnabled()`, `getHUDADASTSRDis()`, `setHUDNAVInfoEnabled()`, `getHUDNAVInfo()`, `setADASRAEBStatusEnabled()`, `getADASRAEBStatus()`, `setIMRCtrlStatus()`, `setIMRCtrlStatusA60()`, `getIMRCtrlStatus()`, `getIMRCtrlErrorStatus()`, `getWarnForcePowerOFF()`, `getSeatNapPosSaveReq()`, `setFrontWiperIntConfig()`, `getFrontWiperIntConfig()`, `setFrontWiperAutoConfig()`, `getFrontWiperAutoConfig()`, `setExhibitionHallMode()`, `getExhibitionHallMode()`, `isExhibitionHallModeEnabled()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarSwcManager`** — 20 function(s): `onSwcAngleChanged()`, `onSwcAngleVdEnableStateChanged()`, `onSwcHeatStateChanged()`, `CarSwcManager()`, `get()`, `synchronized()`, `if()`, `getSwcAngle()`, `getSignalValue()`, `getSwcAngleVdEnableState()`, `performSwcStarKeyButtonClick()`, `setSignalValue()`, `performSwcStarKeyVDButtonClick()`, `getSwcHeatState()`, `setSwcHeatStateEnabled()`, `setSwcHeatState()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarTBoxManager`** — 18 function(s): `onMuteRadioOrderChanged()`, `onPhoneCallStateChanged()`, `onPhoneModeChanged()`, `CarTBoxManager()`, `get()`, `synchronized()`, `if()`, `getMuteRadioOrder()`, `setPhoneKeyAccept()`, `setSignalValue()`, `setPhoneKeyCancel()`, `getPhoneMode()`, `getPhoneCallState()`, `setPhoneType()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarTireManager`** — 25 function(s): `onWheelSpeedFLChanged()`, `onWheelSpeedFLEnableStateChanged()`, `onWheelSpeedFRChanged()`, `onWheelSpeedFREnableStateChanged()`, `onWheelSpeedRLChanged()`, `onWheelSpeedRLEnableStateChanged()`, `onWheelSpeedRRChanged()`, `onWheelSpeedRREnableStateChanged()`, `CarTireManager()`, `get()`, `synchronized()`, `if()`, `getWheelSpeedFL()`, `getSignalValue()`, `getWheelSpeedFLEnableState()`, `getWheelSpeedFR()`, `getWheelSpeedFREnableState()`, `getWheelSpeedRL()`, `getWheelSpeedRLEnableState()`, `getWheelSpeedRR()`, `getWheelSpeedRREnableState()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`CarWindowManager`** — 76 function(s): `onSunroofWindowAutoCloseEnableStateChanged()`, `onWindowOpenPercentFLChanged()`, `onWindowOpenPercentFRChanged()`, `onWindowOpenPercentRLChanged()`, `onWindowOpenPercentRRChanged()`, `onWindowOpenPrecisePercentFLChanged()`, `onWindowOpenPrecisePercentFRChanged()`, `onWindowOpenPrecisePercentRLChanged()`, `onWindowOpenPrecisePercentRRChanged()`, `onWindowOperationStateFLChanged()`, `onWindowOperationStateFRChanged()`, `onWindowOperationStateRLChanged()`, `onWindowOperationStateRRChanged()`, `onWindowOverheatStateFLChanged()`, `onWindowOverheatStateFRChanged()`, `onWindowOverheatStateRLChanged()`, `onWindowOverheatStateRRChanged()`, `onWindowRoofOpenOpertionChanged()`, `onWindowRoofOpenPercentChanged()`, `onWindowRoofShadeOpenOpertionChanged()`, `onWindowRoofShadeOpenPercentChanged()`, `onWindowStateFLChanged()`, `onWindowStateFRChanged()`, `onWindowStateRLChanged()`, `onWindowStateRRChanged()`, `CarWindowManager()`, `get()`, `synchronized()`, `if()`, `getSunroofWindowAutoCloseEnableState()`, `setSunroofWindowAutoCloseEnabled()`, `setSignalValue()`, `getWindowStateFL()`, `getWindowOpenPercentFL()`, `getSignalValue()`, `getWindowOperationStateFL()`, `getWindowOverheatStateFL()`, `setWindowOpenPercentFL()`, `getWindowStateFR()`, `getWindowOpenPercentFR()`, `getWindowOperationStateFR()`, `getWindowOverheatStateFR()`, `setWindowOpenPercentFR()`, `getWindowStateRL()`, `getWindowOpenPercentRL()`, `getWindowOperationStateRL()`, `getWindowOverheatStateRL()`, `setWindowOpenPercentRL()`, `getWindowStateRR()`, `getWindowOpenPercentRR()`, `getWindowOperationStateRR()`, `getWindowOverheatStateRR()`, `setWindowOpenPercentRR()`, `setWindowStateFL()`, `setWindowStateFR()`, `setWindowStateRL()`, `setWindowStateRR()`, `setWindowRoofOpenState()`, `getWindowRoofOpenPercent()`, `getWindowRoofOpenOpertion()`, `setWindowRoofShadeOpenPercent()`, `setWindowRoofShadeOpenState()`, `getWindowRoofShadeOpenPercent()`, `getWindowRoofShadeOpenOpertion()`, `setWindowOpenPercentFLVdSwitch()`, `setWindowOpenPercentFRVdSwitch()`, `setWindowOpenPercentRLVdSwitch()`, `setWindowOpenPercentRRVdSwitch()`, `getWindowOpenPrecisePercentFL()`, `getWindowOpenPrecisePercentFR()`, `getWindowOpenPrecisePercentRL()`, `getWindowOpenPrecisePercentRR()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`HostConfig`** — 58 function(s): `HostConfig()`, `get()`, `synchronized()`, `if()`, `getLanguage()`, `getNumberOfScreen()`, `getCarMode()`, `isCarplayPresent()`, `getConfigValue()`, `isCarlifePresent()`, `isHicarPresent()`, `isIphoneDefaultConnectingPresent()`, `isEasyConnectPresent()`, `isAndroidAutoPresent()`, `isCarLinkPresent()`, `getWifi()`, `isBtPresent()`, `isCellularNetworkPresent()`, `isAuxPresent()`, `isIpodPresent()`, `getUsb()`, `isEthernetNetPresent()`, `getRadioConfiguration()`, `isRadioDABPresent()`, `isRadioRDSPresent()`, `getRadioDABAndRDSConfiguration()`, `getRadarVolumeAdjustment()`, `getSdvcCurveConfiguration()`, `getHvacDisplayTime()`, `getRadioFrequency()`, `getMediaVolumeDelay()`, `getScreenSwitchDelay()`, `isRadarSwitchPresent()`, `isWallpaperPresent()`, `isAutoParkingBackgroundPushPresent()`, `getMessageNotification()`, `getExpressMessage()`, `getMapPreferences()`, `getNavigationSignalMode()`, `getKeytone()`, `getInterfaceSound()`, `isFaceIdPresent()`, `isShiftSoundPresent()`, `isSceneSwitchPresent()`, `isTrafficDisplayPresent()`, `isPhotosAndVideosPresent()`, `isScreensaverPresent()`, `isUserManualPresent()`, `getEngineeringMode()`, `getRemindingMaintenanceCycle()`, `getRemindingResetCycle()`, `getRepeatSetting()`, `getLeftRightHandDriveVehicles()`, `configData()`, `configValue()`, `return()`, `getConfigData()`, `setConfigData()`
- **`Ihu23ProjectManager`** — 11 function(s): `Ihu23ProjectManager()`, `get()`, `synchronized()`, `if()`, `setChargeInfo()`, `setSignalValue()`, `getChargeInfo()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`MpuAvmManager`** — 21 function(s): `onNotifyAvmCalibrationStateByAvm()`, `onNotifyAvmCameraStateByAvm()`, `onNotifyAvmDisplayStateByAvm()`, `onNotifyAvmFullScreenSwtichByRadarByAvm()`, `onNotifyAvmFullScreenSwtichByTurnLightByAvm()`, `onNotifyAvmHeartStateByAvm()`, `onNotifyAvmWorkModeByAvm()`, `MpuAvmManager()`, `get()`, `synchronized()`, `if()`, `setAvmDisplayStateByMpuReq()`, `setSignalValue()`, `getAvmVersion()`, `getNotifyAvmDisplayStateByAvm()`, `getNotifyAvmHeartStateByAvm()`, `setAvmLanguage()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`MpuDemoManager`** — 15 function(s): `onGameBrakeCtlPercentChanged()`, `onGamePedalCtlPercentChanged()`, `onGameSwcCtlAngleChanged()`, `MpuDemoManager()`, `get()`, `synchronized()`, `if()`, `getGameSwcCtlAngle()`, `getSignalValue()`, `getGamePedalCtlPercent()`, `getGameBrakeCtlPercent()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`
- **`MpuProjectManager`** — 21 function(s): `MpuProjectManager()`, `get()`, `synchronized()`, `if()`, `setPersonalMemoryInfo()`, `setSignalValue()`, `setCarSeartMemoryInfo()`, `setMuteForEcall()`, `requestTBoxECallState()`, `setCarFactorySet()`, `setAvmApaCloseByMutleKey()`, `switch()`, `setTouchInfo2Bsv()`, `setSystemCmd()`, `registerListener()`, `registerReceiver()`, `unregisterListener()`, `unregisterReceiver()`, `onCanLogInfoChanged()`, `onPersonalMemoryInfoChanged()`, `for()`

</details>

### Package `com.yftech.vehicle.sdk.config`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `Ihu23CarConfig` | class | Ihu23ICarConfig | 644 | 290 |
| `Ihu23HostConfig` | class | Ihu23IHostConfig | 200 | 66 |

<details>
<summary><b>Function list for <code>com.yftech.vehicle.sdk.config</code></b> (click to expand)</summary>

- **`Ihu23CarConfig`** — 155 function(s): `Ihu23CarConfig()`, `get()`, `synchronized()`, `if()`, `getVehicleType()`, `getDriveType()`, `getVehiclePlatform()`, `isACanPresent()`, `getConfigValue()`, `isBCanPresent()`, `isGpsPresent()`, `isAntennaPresent()`, `isMicPresent()`, `isBcmPresent()`, `isHvacPresent()`, `isIcmPresent()`, `isPasPresent()`, `isGwmPresent()`, `isFcpPresent()`, `isPcsPresent()`, `isTboxPresent()`, `isVcuPresent()`, `isIbcmPresent()`, `isFlSpeakerPresent()`, `isFrSpeakerPresent()`, `isRlSpeakerPresent()`, `isRrSpeakerPresent()`, `isSteeringWheelKeyPresent()`, `getTboxConnectionMode()`, `isBCallSwitchPresent()`, `isECallSwitchPresent()`, `isCallBackPresent()`, `isRestartVehicleCommunicationModulePresent()`, `getLoudspeakerNumber()`, `getLoudspeakerSupplier()`, `isExtAmplifiersPresent()`, `isAvasPresent()`, `isAvasSwitchPresent()`, `isStorageBoxAutomaticallyFlipDownPresent()`, `isHiddenDoorHandlePresent()`, `isWinterLongDistancePresent()`, `isChargingInsulationPresent()`, `isIntelligentInsulationNotificationPresent()`, `isEnergyRecoveryModePresent()`, `isElectroDischargePresent()`, `isEcoPlusModePresent()`, `isEpedalModePresent()`, `isCreepModePresent()`, `isEnergyConsumptionPresent()`, `isMonsterModeSwitchPresent()`, `isHealthChargeSettingPresent()`, `isDrivingModePresent()`, `isAutoModeOfFrsAndRecControlPresent()`, `isComfortCurvePresent()`, `isQualitySensorPresent()`, `isAutoDeforstPresent()`, `isFanSpeedOfAutoModePresent()`, `isChargingThresholdPresent()`, `isHeatPumpAirConditioningPresent()`, `getAirConditioningZones()`, `getRearDefrostAndRearviewMirrorHeating()`, `getAirConditionType()`, `getCameraNumber()`, `getRadarNumber()`, `getStandardAndHdCameraConfiguration()`, `isAdaptiveHighBeamPresent()`, `isControlHighBeamAssistantPresent()`, `isCloseWindowWhileLockPresent()`, `isDomeLightInDoorGearPositionPresent()`, `isControlSmartWelcomeLightPresent()`, `isKeyIdentificationPresent()`, `isSmartTailgatePresent()`, `isPlgmfunccfgPresent()`, `isNfcPresent()`, `getWalAndApu()`, `isRemoteUnlockPresent()`, `isSpeedLockPresent()`, `isAutoUnlockingPresent()`, `isExteriorRearViewMirrorAutoFoldingAndUnfoldingPresent()`, `isExteriorRearviewMirrorDipPresent()`, `isRearviewMirrorAdjustmentPresent()`, `isSteeringWheelSteeringHandForcePresent()`, `isEtcSettingPresent()`, `isWiperMaintanencePresent()`, `isAutoWiperPresent()`, `isLockAndUnlockWhistleNotePresent()`, `isLightTurnedOffDelayPresent()`, `isAmbienceLightsControlPresent()`, `isIalPresent()`, `isRainstormModePresent()`, `isClusterVolumeSettingPresent()`, `isClusterLanguageSettingPresent()`, `isClusterMileageResetPresent()`, `isClusterSpeedUnitPresent()`, `isClusterTemperatureUnitPresent()`, `isClusterPressureUnitPresent()`, `isRearSeatBeltNotificationPresent()`, `isClusterDefaultSettingPresent()`, `isClusterFuelConsumptionUnitPresent()`, `isClusterBackLightPresent()`, `isTimeInClusterPresent()`, `isChargingModePresent()`, `isLaneAuxiliarySwitchPresent()`, `isLaneAssistPresent()`, `isAutoEmergencyBrakingBrakingPresent()`, `isFrontCollisionWarningPresent()`, `isIfcCruisemodePresent()`, `isBsdPresent()`, `isDoorOpenWarningPresent()`, `isOverspeedWarningPresent()`, `isSpeedLimtedSignRecognitionPresent()`, `isSteeringModePresent()`, `isLcaCardPresent()`, `getLaneChangeAssist()`, `isDriverStateOfAlertPresent()`, `isEmergencySteeringModePresent()`, `isRaebPresent()`, `isAlertModePresent()`, `isEmergencyLaneKeepingAssistPresent()`, `isRearCrossTrafficAlertPresent()`, `isRearCrossTrafficAlertModePresent()`, `isRearApproachingWarningPresent()`, `isFrontCrossTrafficAlertPresent()`, `isFrontCrossTrafficAlertModePresent()`, `isApaVoicePromptButtonPresent()`, `isForwardCollisionWarningDistancePresent()`, `isIndicatedLaneChangePresent()`, `isOverspeedAlarmOfTsrPresent()`, `isIntelligentSpeedLimitControlPresent()`, `isDriverAssistanceWarningPresent()`, `getDistractedAlarmIntervalTime()`, `getTiredAlarmIntervalTime()`, `getApaAlarmDelayedTime()`, `isEspOffSwitchPresent()`, `isHdcSwitchPresent()`, `isEboosterModePresent()`, `getLeftRightHandDriveVehicles()`, `isUltravioletRayPresent()`, `isUnlockVentilationPresent()`, `isEvaporatorSelfDryingPresent()`, `isAirConditioningBlindExercisePresent()`, `isAirConditioningQuickStartPresent()`, `isHospitalityLampSignalsPresent()`, `isTemporaryParkingLampSignalsPresent()`, `isLaneChangeDriverConfirmationPresent()`, `isLaneChangeStylePresent()`, `isIndicatedLaneChangingPresent()`, `isFrontDistanceDisplayPresent()`, `isIntelligentCollisionAvoidancePresent()`, `isAutoholdPresent()`, `configData()`, `configValue()`, `return()`, `getConfigData()`, `setConfigData()`
- **`Ihu23HostConfig`** — 44 function(s): `Ihu23HostConfig()`, `get()`, `synchronized()`, `if()`, `getLanguage()`, `getCarMode()`, `getNumberOfScreen()`, `isCarplayPresent()`, `getConfigValue()`, `isCarlifePresent()`, `isIphoneDefaultConnectingPresent()`, `isAndroidAutoPresent()`, `getWifi()`, `isBtPresent()`, `isCellularNetworkPresent()`, `isAuxPresent()`, `isIpodPresent()`, `getUsb()`, `isEthernetNetPresent()`, `getRadioConfiguration()`, `getRadarVolumeAdjustment()`, `getRadioDABAndRDSConfiguration()`, `getSdvcCurveConfiguration()`, `getHvacDisplayTime()`, `getRadioFrequency()`, `getMediaVolumeDelay()`, `getScreenSwitchDelay()`, `isRadarSwitchPresent()`, `getKeytone()`, `getInterfaceSound()`, `isFaceIdPresent()`, `isScreensaverPresent()`, `isUserManualPresent()`, `getEngineeringMode()`, `getRemindingMaintenanceCycle()`, `getRemindingResetCycle()`, `getRepeatSetting()`, `isVideoAppPresent()`, `isPictureAppPresent()`, `configData()`, `configValue()`, `return()`, `getConfigData()`, `setConfigData()`

</details>

### Package `io.reactivex`  (44 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BackpressureOverflowStrategy` | class | — | 9 | 0 |
| `BackpressureStrategy` | class | — | 11 | 0 |
| `Completable` | class | CompletableSource | 947 | 182 |
| `CompletableConverter` | class | — | 10 | 1 |
| `CompletableEmitter` | class | — | 22 | 6 |
| `CompletableObserver` | class | — | 14 | 3 |
| `CompletableOnSubscribe` | class | — | 9 | 1 |
| `CompletableOperator` | class | — | 10 | 1 |
| `CompletableSource` | class | — | 9 | 1 |
| `CompletableTransformer` | class | — | 10 | 1 |
| `Emitter` | class | — | 13 | 3 |
| `Flowable` | class | Publisher<T> | 4,676 | 893 |
| `FlowableConverter` | class | — | 10 | 1 |
| `FlowableEmitter` | class | Emitter<T> | 23 | 6 |
| `FlowableOnSubscribe` | class | — | 9 | 1 |
| `FlowableOperator` | class | — | 11 | 0 |
| `FlowableSubscriber` | class | Subscriber<T> | 12 | 1 |
| `FlowableTransformer` | class | — | 11 | 1 |
| `Maybe` | class | MaybeSource<T> | 1,448 | 245 |
| `MaybeConverter` | class | — | 10 | 1 |
| `MaybeEmitter` | class | — | 24 | 7 |
| `MaybeObserver` | class | — | 16 | 4 |
| `MaybeOnSubscribe` | class | — | 9 | 1 |
| `MaybeOperator` | class | — | 10 | 0 |
| `MaybeSource` | class | — | 9 | 1 |
| `MaybeTransformer` | class | — | 10 | 1 |
| `Notification` | class | — | 91 | 21 |
| `Observable` | class | ObservableSource<T> | 3,843 | 844 |
| `ObservableConverter` | class | — | 10 | 1 |
| `ObservableEmitter` | class | Emitter<T> | 21 | 5 |
| `ObservableOnSubscribe` | class | — | 9 | 1 |
| `ObservableOperator` | class | — | 10 | 0 |
| `ObservableSource` | class | — | 9 | 1 |
| `ObservableTransformer` | class | — | 10 | 1 |
| `Observer` | class | — | 16 | 4 |
| `Scheduler` | class | Disposable | 241 | 35 |
| `Single` | class | SingleSource<T> | 1,271 | 225 |
| `SingleConverter` | class | — | 10 | 1 |
| `SingleEmitter` | class | — | 22 | 6 |
| `SingleObserver` | class | — | 14 | 3 |
| `SingleOnSubscribe` | class | — | 9 | 1 |
| `SingleOperator` | class | — | 10 | 0 |
| `SingleSource` | class | — | 9 | 1 |
| `SingleTransformer` | class | — | 10 | 1 |

<details>
<summary><b>Function list for <code>io.reactivex</code></b> (click to expand)</summary>

- **`Completable`** — 78 function(s): `subscribeActual()`, `ambArray()`, `if()`, `complete()`, `wrap()`, `amb()`, `concatArray()`, `concat()`, `create()`, `unsafeCreate()`, `IllegalArgumentException()`, `defer()`, `error()`, `fromAction()`, `fromCallable()`, `fromFuture()`, `fromMaybe()`, `fromRunnable()`, `fromObservable()`, `fromPublisher()`, `fromSingle()`, `mergeArray()`, `merge()`, `merge0()`, `mergeArrayDelayError()`, `mergeDelayError()`, `never()`, `timer()`, `toNpe()`, `using()`, `ambWith()`, `andThen()`, `as()`, `return()`, `blockingAwait()`, `subscribe()`, `blockingGet()`, `cache()`, `compose()`, `concatWith()`, `delay()`, `delaySubscription()`, `doOnComplete()`, `doOnLifecycle()`, `doOnDispose()`, `doOnError()`, `doOnEvent()`, `doOnSubscribe()`, `doOnTerminate()`, `doAfterTerminate()`, `doFinally()`, `lift()`, `materialize()`, `mergeWith()`, `observeOn()`, `onErrorComplete()`, `onErrorResumeNext()`, `onTerminateDetach()`, `repeat()`, `repeatUntil()`, `repeatWhen()`, `retry()`, `retryWhen()`, `startWith()`, `toFlowable()`, `hide()`, `subscribeWith()`, `subscribeOn()`, `takeUntil()`, `timeout()`, `timeout0()`, `to()`, `toMaybe()`, `toObservable()`, `toSingle()`, `toSingleDefault()`, `unsubscribeOn()`, `test()`
- **`CompletableConverter`** — 1 function(s): `apply()`
- **`CompletableEmitter`** — 6 function(s): `isDisposed()`, `onComplete()`, `onError()`, `setCancellable()`, `setDisposable()`, `tryOnError()`
- **`CompletableObserver`** — 3 function(s): `onComplete()`, `onError()`, `onSubscribe()`
- **`CompletableOnSubscribe`** — 1 function(s): `subscribe()`
- **`CompletableOperator`** — 1 function(s): `apply()`
- **`CompletableSource`** — 1 function(s): `subscribe()`
- **`CompletableTransformer`** — 1 function(s): `apply()`
- **`Emitter`** — 3 function(s): `onComplete()`, `onError()`, `onNext()`
- **`Flowable`** — 206 function(s): `subscribeActual()`, `amb()`, `ambArray()`, `if()`, `empty()`, `fromPublisher()`, `bufferSize()`, `combineLatest()`, `combineLatestDelayError()`, `concat()`, `fromIterable()`, `concatArray()`, `concatArrayDelayError()`, `concatArrayEager()`, `concatArrayEagerDelayError()`, `fromArray()`, `concatDelayError()`, `concatEager()`, `create()`, `defer()`, `error()`, `just()`, `fromCallable()`, `fromFuture()`, `generate()`, `interval()`, `intervalRange()`, `IllegalArgumentException()`, `merge()`, `mergeArray()`, `mergeDelayError()`, `mergeArrayDelayError()`, `never()`, `range()`, `rangeLong()`, `sequenceEqual()`, `switchOnNext()`, `switchOnNextDelayError()`, `timer()`, `unsafeCreate()`, `using()`, `zip()`, `zipArray()`, `zipIterable()`, `all()`, `ambWith()`, `any()`, `as()`, `return()`, `blockingFirst()`, `subscribe()`, `NoSuchElementException()`, `blockingForEach()`, `while()`, `blockingIterable()`, `BlockingFlowableIterable()`, `blockingLast()`, `blockingLatest()`, `BlockingFlowableLatest()`, `blockingMostRecent()`, `BlockingFlowableMostRecent()`, `blockingNext()`, `BlockingFlowableNext()`, `blockingSingle()`, `singleOrError()`, `single()`, `toFuture()`, `blockingSubscribe()`, `buffer()`, `cache()`, `cacheWithInitialCapacity()`, `cast()`, `collect()`, `collectInto()`, `compose()`, `concatMap()`, `concatMapCompletable()`, `concatMapCompletableDelayError()`, `concatMapDelayError()`, `concatMapEager()`, `concatMapEagerDelayError()`, `concatMapIterable()`, `concatMapMaybe()`, `concatMapMaybeDelayError()`, `concatMapSingle()`, `concatMapSingleDelayError()`, `concatWith()`, `contains()`, `count()`, `debounce()`, `defaultIfEmpty()`, `switchIfEmpty()`, `delay()`, `delaySubscription()`, `dematerialize()`, `distinct()`, `distinctUntilChanged()`, `doFinally()`, `doAfterNext()`, `doAfterTerminate()`, `doOnEach()`, `doOnCancel()`, `doOnLifecycle()`, `doOnComplete()`, `doOnError()`, `doOnNext()`, `doOnRequest()`, `doOnSubscribe()`, `doOnTerminate()`, `elementAt()`, `IndexOutOfBoundsException()`, `elementAtOrError()`, `filter()`, `firstElement()`, `first()`, `firstOrError()`, `flatMap()`, `flatMapCompletable()`, `flatMapIterable()`, `flatMapMaybe()`, `flatMapSingle()`, `forEach()`, `forEachWhile()`, `groupBy()`, `groupJoin()`, `hide()`, `ignoreElements()`, `isEmpty()`, `join()`, `lastElement()`, `last()`, `lastOrError()`, `lift()`, `limit()`, `map()`, `materialize()`, `mergeWith()`, `observeOn()`, `ofType()`, `onBackpressureBuffer()`, `onBackpressureDrop()`, `onBackpressureLatest()`, `onErrorResumeNext()`, `onErrorReturn()`, `onErrorReturnItem()`, `onExceptionResumeNext()`, `onTerminateDetach()`, `parallel()`, `publish()`, `rebatchRequests()`, `reduce()`, `reduceWith()`, `repeat()`, `repeatUntil()`, `repeatWhen()`, `replay()`, `retry()`, `retryUntil()`, `retryWhen()`, `safeSubscribe()`, `sample()`, `scan()`, `scanWith()`, `serialize()`, `share()`, `singleElement()`, `skip()`, `skipUntil()`, `skipLast()`, `skipWhile()`, `sorted()`, `toList()`, `startWith()`, `startWithArray()`, `subscribeOn()`, `switchMap()`, `switchMap0()`, `switchMapCompletable()`, `switchMapCompletableDelayError()`, `switchMapDelayError()`, `switchMapMaybe()`, `switchMapMaybeDelayError()`, `switchMapSingle()`, `switchMapSingleDelayError()`, `take()`, `takeUntil()`, `takeLast()`, `takeWhile()`, `throttleFirst()`, `throttleLast()`, `throttleLatest()`, `throttleWithTimeout()`, `timeInterval()`, `timeout()`, `timeout0()`, `timestamp()`, `to()`, `toMap()`, `toMultimap()`, `toObservable()`, `toSortedList()`, `unsubscribeOn()`, `window()`, `withLatestFrom()`, `zipWith()`, `test()`
- **`FlowableConverter`** — 1 function(s): `apply()`
- **`FlowableEmitter`** — 6 function(s): `isCancelled()`, `requested()`, `serialize()`, `setCancellable()`, `setDisposable()`, `tryOnError()`
- **`FlowableOnSubscribe`** — 1 function(s): `subscribe()`
- **`FlowableSubscriber`** — 1 function(s): `onSubscribe()`
- **`FlowableTransformer`** — 1 function(s): `apply()`
- **`Maybe`** — 100 function(s): `subscribeActual()`, `amb()`, `ambArray()`, `if()`, `empty()`, `wrap()`, `concat()`, `concatArray()`, `concatArrayDelayError()`, `concatArrayEager()`, `concatDelayError()`, `concatEager()`, `create()`, `defer()`, `error()`, `fromAction()`, `fromCompletable()`, `fromSingle()`, `fromCallable()`, `fromFuture()`, `fromRunnable()`, `just()`, `merge()`, `mergeArray()`, `mergeArrayDelayError()`, `mergeDelayError()`, `never()`, `sequenceEqual()`, `timer()`, `unsafeCreate()`, `IllegalArgumentException()`, `using()`, `zip()`, `zipArray()`, `ambWith()`, `as()`, `return()`, `blockingGet()`, `subscribe()`, `cache()`, `cast()`, `compose()`, `concatMap()`, `concatWith()`, `contains()`, `count()`, `defaultIfEmpty()`, `switchIfEmpty()`, `delay()`, `delaySubscription()`, `doAfterSuccess()`, `doAfterTerminate()`, `doFinally()`, `doOnDispose()`, `doOnComplete()`, `doOnError()`, `doOnEvent()`, `doOnSubscribe()`, `doOnTerminate()`, `doOnSuccess()`, `filter()`, `flatMap()`, `flattenAsFlowable()`, `flattenAsObservable()`, `flatMapObservable()`, `flatMapPublisher()`, `flatMapSingle()`, `flatMapSingleElement()`, `flatMapCompletable()`, `hide()`, `ignoreElement()`, `isEmpty()`, `lift()`, `map()`, `materialize()`, `mergeWith()`, `observeOn()`, `ofType()`, `to()`, `toFlowable()`, `toObservable()`, `toSingle()`, `onErrorComplete()`, `onErrorResumeNext()`, `onErrorReturn()`, `onErrorReturnItem()`, `onExceptionResumeNext()`, `onTerminateDetach()`, `repeat()`, `repeatUntil()`, `repeatWhen()`, `retry()`, `retryUntil()`, `retryWhen()`, `subscribeOn()`, `takeUntil()`, `timeout()`, `unsubscribeOn()`, `zipWith()`, `test()`
- **`MaybeConverter`** — 1 function(s): `apply()`
- **`MaybeEmitter`** — 7 function(s): `isDisposed()`, `onComplete()`, `onError()`, `onSuccess()`, `setCancellable()`, `setDisposable()`, `tryOnError()`
- **`MaybeObserver`** — 4 function(s): `onComplete()`, `onError()`, `onSubscribe()`, `onSuccess()`
- **`MaybeOnSubscribe`** — 1 function(s): `subscribe()`
- **`MaybeSource`** — 1 function(s): `subscribe()`
- **`MaybeTransformer`** — 1 function(s): `apply()`
- **`Notification`** — 14 function(s): `Notification()`, `isOnComplete()`, `isOnError()`, `isOnNext()`, `return()`, `getValue()`, `if()`, `getError()`, `equals()`, `hashCode()`, `toString()`, `createOnNext()`, `createOnError()`, `createOnComplete()`
- **`Observable`** — 200 function(s): `subscribeActual()`, `amb()`, `ambArray()`, `if()`, `empty()`, `wrap()`, `bufferSize()`, `combineLatest()`, `combineLatestDelayError()`, `concat()`, `fromIterable()`, `concatArray()`, `concatArrayDelayError()`, `concatDelayError()`, `concatArrayEager()`, `fromArray()`, `concatArrayEagerDelayError()`, `concatEager()`, `create()`, `defer()`, `error()`, `just()`, `fromCallable()`, `fromFuture()`, `fromPublisher()`, `generate()`, `interval()`, `intervalRange()`, `IllegalArgumentException()`, `merge()`, `mergeArray()`, `mergeDelayError()`, `mergeArrayDelayError()`, `never()`, `range()`, `rangeLong()`, `sequenceEqual()`, `switchOnNext()`, `switchOnNextDelayError()`, `timer()`, `unsafeCreate()`, `using()`, `zip()`, `zipArray()`, `zipIterable()`, `all()`, `ambWith()`, `any()`, `as()`, `return()`, `blockingFirst()`, `subscribe()`, `NoSuchElementException()`, `blockingForEach()`, `while()`, `blockingIterable()`, `BlockingObservableIterable()`, `blockingLast()`, `blockingLatest()`, `BlockingObservableLatest()`, `blockingMostRecent()`, `BlockingObservableMostRecent()`, `blockingNext()`, `BlockingObservableNext()`, `blockingSingle()`, `single()`, `toFuture()`, `blockingSubscribe()`, `buffer()`, `cache()`, `cacheWithInitialCapacity()`, `cast()`, `collect()`, `collectInto()`, `compose()`, `concatMap()`, `concatMapDelayError()`, `concatMapEager()`, `concatMapEagerDelayError()`, `concatMapCompletable()`, `concatMapCompletableDelayError()`, `concatMapIterable()`, `concatMapMaybe()`, `concatMapMaybeDelayError()`, `concatMapSingle()`, `concatMapSingleDelayError()`, `concatWith()`, `contains()`, `count()`, `debounce()`, `defaultIfEmpty()`, `switchIfEmpty()`, `delay()`, `delaySubscription()`, `dematerialize()`, `distinct()`, `distinctUntilChanged()`, `doAfterNext()`, `doAfterTerminate()`, `doOnEach()`, `doFinally()`, `doOnDispose()`, `doOnLifecycle()`, `doOnComplete()`, `doOnError()`, `doOnNext()`, `doOnSubscribe()`, `doOnTerminate()`, `elementAt()`, `IndexOutOfBoundsException()`, `elementAtOrError()`, `filter()`, `firstElement()`, `first()`, `firstOrError()`, `flatMap()`, `flatMapCompletable()`, `flatMapIterable()`, `flatMapMaybe()`, `flatMapSingle()`, `forEach()`, `forEachWhile()`, `groupBy()`, `groupJoin()`, `hide()`, `ignoreElements()`, `isEmpty()`, `join()`, `lastElement()`, `last()`, `lastOrError()`, `lift()`, `map()`, `materialize()`, `mergeWith()`, `observeOn()`, `ofType()`, `onErrorResumeNext()`, `onErrorReturn()`, `onErrorReturnItem()`, `onExceptionResumeNext()`, `onTerminateDetach()`, `publish()`, `reduce()`, `reduceWith()`, `repeat()`, `repeatUntil()`, `repeatWhen()`, `replay()`, `retry()`, `retryUntil()`, `retryWhen()`, `safeSubscribe()`, `sample()`, `scan()`, `scanWith()`, `serialize()`, `share()`, `singleElement()`, `singleOrError()`, `skip()`, `skipUntil()`, `skipLast()`, `skipWhile()`, `sorted()`, `toList()`, `startWith()`, `startWithArray()`, `subscribeOn()`, `switchMap()`, `switchMapCompletable()`, `switchMapCompletableDelayError()`, `switchMapMaybe()`, `switchMapMaybeDelayError()`, `switchMapSingle()`, `switchMapSingleDelayError()`, `switchMapDelayError()`, `take()`, `takeUntil()`, `takeLast()`, `takeWhile()`, `throttleFirst()`, `throttleLast()`, `throttleLatest()`, `throttleWithTimeout()`, `timeInterval()`, `timeout()`, `timeout0()`, `timestamp()`, `to()`, `toMap()`, `toMultimap()`, `toFlowable()`, `switch()`, `toSortedList()`, `unsubscribeOn()`, `window()`, `withLatestFrom()`, `zipWith()`, `test()`
- **`ObservableConverter`** — 1 function(s): `apply()`
- **`ObservableEmitter`** — 5 function(s): `isDisposed()`, `serialize()`, `setCancellable()`, `setDisposable()`, `tryOnError()`
- **`ObservableOnSubscribe`** — 1 function(s): `subscribe()`
- **`ObservableSource`** — 1 function(s): `subscribe()`
- **`ObservableTransformer`** — 1 function(s): `apply()`
- **`Observer`** — 4 function(s): `onComplete()`, `onError()`, `onNext()`, `onSubscribe()`
- **`Scheduler`** — 19 function(s): `createWorker()`, `shutdown()`, `start()`, `clockDriftTolerance()`, `now()`, `scheduleDirect()`, `schedulePeriodicallyDirect()`, `when()`, `SchedulerWhen()`, `schedule()`, `schedulePeriodically()`, `if()`, `PeriodicTask()`, `run()`, `getWrappedRunnable()`, `PeriodicDirectTask()`, `dispose()`, `isDisposed()`, `DisposeTask()`
- **`Single`** — 87 function(s): `subscribeActual()`, `amb()`, `ambArray()`, `if()`, `error()`, `wrap()`, `concat()`, `concatArray()`, `concatArrayEager()`, `concatEager()`, `create()`, `defer()`, `fromCallable()`, `fromFuture()`, `toSingle()`, `fromPublisher()`, `fromObservable()`, `just()`, `merge()`, `mergeDelayError()`, `never()`, `timer()`, `equals()`, `unsafeCreate()`, `IllegalArgumentException()`, `using()`, `zip()`, `zipArray()`, `ambWith()`, `as()`, `return()`, `hide()`, `compose()`, `cache()`, `cast()`, `concatWith()`, `delay()`, `delaySubscription()`, `dematerialize()`, `doAfterSuccess()`, `doAfterTerminate()`, `doFinally()`, `doOnSubscribe()`, `doOnTerminate()`, `doOnSuccess()`, `doOnEvent()`, `doOnError()`, `doOnDispose()`, `filter()`, `flatMap()`, `flatMapMaybe()`, `flatMapPublisher()`, `flattenAsFlowable()`, `flattenAsObservable()`, `flatMapObservable()`, `flatMapCompletable()`, `blockingGet()`, `subscribe()`, `lift()`, `map()`, `materialize()`, `contains()`, `mergeWith()`, `observeOn()`, `onErrorReturn()`, `onErrorReturnItem()`, `onErrorResumeNext()`, `onTerminateDetach()`, `repeat()`, `toFlowable()`, `repeatWhen()`, `repeatUntil()`, `retry()`, `retryWhen()`, `subscribeOn()`, `takeUntil()`, `timeout()`, `timeout0()`, `to()`, `toCompletable()`, `ignoreElement()`, `toFuture()`, `toMaybe()`, `toObservable()`, `unsubscribeOn()`, `zipWith()`, `test()`
- **`SingleConverter`** — 1 function(s): `apply()`
- **`SingleEmitter`** — 6 function(s): `isDisposed()`, `onError()`, `onSuccess()`, `setCancellable()`, `setDisposable()`, `tryOnError()`
- **`SingleObserver`** — 3 function(s): `onError()`, `onSubscribe()`, `onSuccess()`
- **`SingleOnSubscribe`** — 1 function(s): `subscribe()`
- **`SingleSource`** — 1 function(s): `subscribe()`
- **`SingleTransformer`** — 1 function(s): `apply()`

</details>

### Package `io.reactivex.android`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `MainThreadDisposable` | class | Disposable | 42 | 10 |
| `R` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>io.reactivex.android</code></b> (click to expand)</summary>

- **`MainThreadDisposable`** — 7 function(s): `onDispose()`, `verifyMainThread()`, `if()`, `IllegalStateException()`, `isDisposed()`, `dispose()`, `run()`
- **`R`** — 1 function(s): `R()`

</details>

### Package `io.reactivex.android.plugins`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `RxAndroidPlugins` | class | — | 85 | 25 |

<details>
<summary><b>Function list for <code>io.reactivex.android.plugins</code></b> (click to expand)</summary>

- **`RxAndroidPlugins`** — 14 function(s): `setInitMainThreadSchedulerHandler()`, `initMainThreadScheduler()`, `if()`, `NullPointerException()`, `callRequireNonNull()`, `applyRequireNonNull()`, `setMainThreadSchedulerHandler()`, `onMainThreadScheduler()`, `getInitMainThreadSchedulerHandler()`, `getOnMainThreadSchedulerHandler()`, `reset()`, `apply()`, `RxAndroidPlugins()`, `AssertionError()`

</details>

### Package `io.reactivex.android.schedulers`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AndroidSchedulers` | class | — | 62 | 12 |
| `HandlerScheduler` | class | Scheduler | 122 | 23 |

<details>
<summary><b>Function list for <code>io.reactivex.android.schedulers</code></b> (click to expand)</summary>

- **`AndroidSchedulers`** — 9 function(s): `call()`, `MainHolder()`, `mainThread()`, `from()`, `if()`, `NullPointerException()`, `HandlerScheduler()`, `AndroidSchedulers()`, `AssertionError()`
- **`HandlerScheduler`** — 11 function(s): `HandlerScheduler()`, `scheduleDirect()`, `if()`, `NullPointerException()`, `createWorker()`, `HandlerWorker()`, `schedule()`, `dispose()`, `isDisposed()`, `ScheduledRunnable()`, `run()`

</details>

### Package `io.reactivex.annotations`  (8 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BackpressureKind` | class | — | 12 | 0 |
| `BackpressureSupport` | class | — | 16 | 1 |
| `Beta` | class | — | 6 | 0 |
| `CheckReturnValue` | class | — | 15 | 0 |
| `Experimental` | class | — | 6 | 0 |
| `NonNull` | class | — | 15 | 0 |
| `Nullable` | class | — | 15 | 0 |
| `SchedulerSupport` | class | — | 24 | 1 |

<details>
<summary><b>Function list for <code>io.reactivex.annotations</code></b> (click to expand)</summary>

- **`BackpressureSupport`** — 1 function(s): `value()`
- **`SchedulerSupport`** — 1 function(s): `value()`

</details>

### Package `io.reactivex.disposables`  (9 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ActionDisposable` | class | ReferenceDisposable<Action> | 26 | 3 |
| `CompositeDisposable` | class | Disposable, DisposableContainer | 183 | 47 |
| `Disposable` | class | — | 9 | 2 |
| `Disposables` | class | — | 57 | 15 |
| `FutureDisposable` | class | Disposable | 31 | 5 |
| `ReferenceDisposable` | class | AtomicReference<T> implements Disposable | 32 | 8 |
| `RunnableDisposable` | class | ReferenceDisposable<Runnable> | 25 | 4 |
| `SerialDisposable` | class | Disposable | 43 | 7 |
| `SubscriptionDisposable` | class | ReferenceDisposable<Subscription> | 21 | 3 |

<details>
<summary><b>Function list for <code>io.reactivex.disposables</code></b> (click to expand)</summary>

- **`ActionDisposable`** — 3 function(s): `ActionDisposable()`, `super()`, `onDisposed()`
- **`CompositeDisposable`** — 13 function(s): `CompositeDisposable()`, `for()`, `dispose()`, `if()`, `synchronized()`, `isDisposed()`, `add()`, `addAll()`, `remove()`, `delete()`, `clear()`, `size()`, `CompositeException()`
- **`Disposable`** — 2 function(s): `dispose()`, `isDisposed()`
- **`Disposables`** — 12 function(s): `Disposables()`, `IllegalStateException()`, `fromRunnable()`, `RunnableDisposable()`, `fromAction()`, `ActionDisposable()`, `fromFuture()`, `FutureDisposable()`, `fromSubscription()`, `SubscriptionDisposable()`, `empty()`, `disposed()`
- **`FutureDisposable`** — 5 function(s): `FutureDisposable()`, `super()`, `isDisposed()`, `dispose()`, `if()`
- **`ReferenceDisposable`** — 7 function(s): `onDisposed()`, `ReferenceDisposable()`, `super()`, `dispose()`, `if()`, `isDisposed()`, `get()`
- **`RunnableDisposable`** — 4 function(s): `RunnableDisposable()`, `super()`, `onDisposed()`, `toString()`
- **`SerialDisposable`** — 6 function(s): `SerialDisposable()`, `set()`, `replace()`, `get()`, `dispose()`, `isDisposed()`
- **`SubscriptionDisposable`** — 3 function(s): `SubscriptionDisposable()`, `super()`, `onDisposed()`

</details>

### Package `io.reactivex.exceptions`  (6 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CompositeException` | class | RuntimeException | 229 | 47 |
| `Exceptions` | class | — | 29 | 10 |
| `MissingBackpressureException` | class | RuntimeException | 14 | 3 |
| `OnErrorNotImplementedException` | class | RuntimeException | 17 | 4 |
| `ProtocolViolationException` | class | IllegalStateException | 11 | 2 |
| `UndeliverableException` | class | IllegalStateException | 11 | 2 |

<details>
<summary><b>Function list for <code>io.reactivex.exceptions</code></b> (click to expand)</summary>

- **`CompositeException`** — 19 function(s): `CompositeException()`, `this()`, `if()`, `for()`, `IllegalArgumentException()`, `getExceptions()`, `getMessage()`, `getCause()`, `while()`, `printStackTrace()`, `appendStackTrace()`, `println()`, `PrintStreamOrWriter()`, `WrappedPrintStream()`, `WrappedPrintWriter()`, `CompositeExceptionCausalChain()`, `getListOfCauses()`, `size()`, `getRootCause()`
- **`Exceptions`** — 6 function(s): `Exceptions()`, `IllegalStateException()`, `propagate()`, `throwIfFatal()`, `if()`, `throw()`
- **`MissingBackpressureException`** — 2 function(s): `MissingBackpressureException()`, `super()`
- **`OnErrorNotImplementedException`** — 3 function(s): `OnErrorNotImplementedException()`, `super()`, `this()`
- **`ProtocolViolationException`** — 2 function(s): `ProtocolViolationException()`, `super()`
- **`UndeliverableException`** — 2 function(s): `UndeliverableException()`, `super()`

</details>

### Package `io.reactivex.flowables`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ConnectableFlowable` | class | Flowable<T> | 96 | 20 |
| `GroupedFlowable` | class | Flowable<T> | 20 | 2 |

<details>
<summary><b>Function list for <code>io.reactivex.flowables</code></b> (click to expand)</summary>

- **`ConnectableFlowable`** — 4 function(s): `connect()`, `refCount()`, `autoConnect()`, `if()`
- **`GroupedFlowable`** — 2 function(s): `GroupedFlowable()`, `getKey()`

</details>

### Package `io.reactivex.functions`  (18 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `Action` | class | — | 7 | 1 |
| `BiConsumer` | class | — | 7 | 1 |
| `BiFunction` | class | — | 10 | 1 |
| `BiPredicate` | class | — | 9 | 1 |
| `BooleanSupplier` | class | — | 7 | 1 |
| `Cancellable` | class | — | 7 | 1 |
| `Consumer` | class | — | 7 | 1 |
| `Function` | class | — | 9 | 1 |
| `Function3` | class | — | 10 | 1 |
| `Function4` | class | — | 10 | 1 |
| `Function5` | class | — | 10 | 1 |
| `Function6` | class | — | 10 | 1 |
| `Function7` | class | — | 10 | 1 |
| `Function8` | class | — | 10 | 1 |
| `Function9` | class | — | 10 | 1 |
| `IntFunction` | class | — | 10 | 1 |
| `LongConsumer` | class | — | 7 | 1 |
| `Predicate` | class | — | 9 | 1 |

<details>
<summary><b>Function list for <code>io.reactivex.functions</code></b> (click to expand)</summary>

- **`Action`** — 1 function(s): `run()`
- **`BiConsumer`** — 1 function(s): `accept()`
- **`BiFunction`** — 1 function(s): `apply()`
- **`BiPredicate`** — 1 function(s): `test()`
- **`BooleanSupplier`** — 1 function(s): `getAsBoolean()`
- **`Cancellable`** — 1 function(s): `cancel()`
- **`Consumer`** — 1 function(s): `accept()`
- **`Function`** — 1 function(s): `apply()`
- **`Function3`** — 1 function(s): `apply()`
- **`Function4`** — 1 function(s): `apply()`
- **`Function5`** — 1 function(s): `apply()`
- **`Function6`** — 1 function(s): `apply()`
- **`Function7`** — 1 function(s): `apply()`
- **`Function8`** — 1 function(s): `apply()`
- **`Function9`** — 1 function(s): `apply()`
- **`IntFunction`** — 1 function(s): `apply()`
- **`LongConsumer`** — 1 function(s): `accept()`
- **`Predicate`** — 1 function(s): `test()`

</details>

### Package `io.reactivex.internal.disposables`  (8 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ArrayCompositeDisposable` | class | AtomicReferenceArray<Disposable> implements Disposable | 60 | 13 |
| `CancellableDisposable` | class | AtomicReference<Cancellable> implements Disposable | 36 | 6 |
| `DisposableContainer` | class | — | 13 | 3 |
| `DisposableHelper` | class | Disposable | 115 | 25 |
| `EmptyDisposable` | class | QueueDisposable<Object> | 89 | 17 |
| `ListCompositeDisposable` | class | Disposable, DisposableContainer | 170 | 42 |
| `ResettableConnectable` | class | — | 11 | 1 |
| `SequentialDisposable` | class | AtomicReference<Disposable> implements Disposable | 35 | 7 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.disposables</code></b> (click to expand)</summary>

- **`ArrayCompositeDisposable`** — 9 function(s): `ArrayCompositeDisposable()`, `super()`, `setResource()`, `if()`, `replaceResource()`, `dispose()`, `for()`, `isDisposed()`, `get()`
- **`CancellableDisposable`** — 6 function(s): `CancellableDisposable()`, `super()`, `isDisposed()`, `get()`, `dispose()`, `if()`
- **`DisposableContainer`** — 3 function(s): `add()`, `delete()`, `remove()`
- **`DisposableHelper`** — 9 function(s): `dispose()`, `isDisposed()`, `set()`, `if()`, `setOnce()`, `reportDisposableSet()`, `replace()`, `validate()`, `trySet()`
- **`EmptyDisposable`** — 10 function(s): `clear()`, `dispose()`, `isEmpty()`, `poll()`, `requestFusion()`, `isDisposed()`, `complete()`, `error()`, `offer()`, `UnsupportedOperationException()`
- **`ListCompositeDisposable`** — 13 function(s): `ListCompositeDisposable()`, `for()`, `dispose()`, `if()`, `synchronized()`, `isDisposed()`, `add()`, `addAll()`, `remove()`, `delete()`, `clear()`, `while()`, `CompositeException()`
- **`ResettableConnectable`** — 1 function(s): `resetIf()`
- **`SequentialDisposable`** — 6 function(s): `SequentialDisposable()`, `lazySet()`, `update()`, `replace()`, `dispose()`, `isDisposed()`

</details>

### Package `io.reactivex.internal.functions`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `Functions` | class | Action | 785 | 181 |
| `ObjectHelper` | class | BiPredicate<Object, Object> | 79 | 24 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.functions</code></b> (click to expand)</summary>

- **`Functions`** — 78 function(s): `Functions()`, `IllegalStateException()`, `toFunction()`, `Array2Func()`, `Array3Func()`, `Array4Func()`, `Array5Func()`, `Array6Func()`, `Array7Func()`, `Array8Func()`, `Array9Func()`, `identity()`, `return()`, `emptyConsumer()`, `alwaysTrue()`, `alwaysFalse()`, `nullSupplier()`, `naturalOrder()`, `FutureAction()`, `run()`, `futureAction()`, `JustValue()`, `call()`, `apply()`, `justCallable()`, `justFunction()`, `CastToClass()`, `castFunction()`, `ArrayListCapacityCallable()`, `ArrayList()`, `createArrayList()`, `EqualsPredicate()`, `test()`, `equalsWith()`, `HashSet()`, `createHashSet()`, `NotificationOnNext()`, `accept()`, `NotificationOnError()`, `NotificationOnComplete()`, `notificationOnNext()`, `notificationOnError()`, `notificationOnComplete()`, `ActionConsumer()`, `actionConsumer()`, `ClassFilter()`, `isInstanceOf()`, `BooleanSupplierPredicateReverse()`, `predicateReverseFor()`, `TimestampFunction()`, `timestampWith()`, `ToMapKeySelector()`, `toMapKeySelector()`, `ToMapKeyValueSelector()`, `toMapKeyValueSelector()`, `ToMultimapKeyValueSelector()`, `if()`, `toMultimapKeyValueSelector()`, `compare()`, `naturalComparator()`, `ListSorter()`, `listSorter()`, `IllegalArgumentException()`, `toString()`, `Identity()`, `EmptyRunnable()`, `EmptyAction()`, `EmptyConsumer()`, `ErrorConsumer()`, `OnErrorMissingConsumer()`, `EmptyLongConsumer()`, `TruePredicate()`, `FalsePredicate()`, `NullCallable()`, `NaturalObjectComparator()`, `MaxRequestSubscription()`, `boundedConsumer()`, `BoundedConsumer()`
- **`ObjectHelper`** — 15 function(s): `compare()`, `if()`, `ObjectHelper()`, `IllegalStateException()`, `requireNonNull()`, `NullPointerException()`, `equals()`, `hashCode()`, `equalsPredicate()`, `return()`, `verifyPositive()`, `IllegalArgumentException()`, `BiObjectPredicate()`, `test()`, `InternalError()`

</details>

### Package `io.reactivex.internal.fuseable`  (15 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ConditionalSubscriber` | class | FlowableSubscriber<T> | 9 | 1 |
| `FuseToFlowable` | class | — | 9 | 1 |
| `FuseToMaybe` | class | — | 9 | 1 |
| `FuseToObservable` | class | — | 9 | 1 |
| `HasUpstreamCompletableSource` | class | — | 9 | 1 |
| `HasUpstreamMaybeSource` | class | — | 9 | 1 |
| `HasUpstreamObservableSource` | class | — | 9 | 1 |
| `HasUpstreamPublisher` | class | — | 9 | 1 |
| `HasUpstreamSingleSource` | class | — | 9 | 1 |
| `QueueDisposable` | class | QueueFuseable<T>, Disposable | 8 | 0 |
| `QueueFuseable` | class | SimpleQueue<T> | 13 | 1 |
| `QueueSubscription` | class | QueueFuseable<T>, Subscription | 8 | 0 |
| `ScalarCallable` | class | Callable<T> | 10 | 1 |
| `SimplePlainQueue` | class | SimpleQueue<T> | 11 | 1 |
| `SimpleQueue` | class | — | 19 | 5 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.fuseable</code></b> (click to expand)</summary>

- **`ConditionalSubscriber`** — 1 function(s): `tryOnNext()`
- **`FuseToFlowable`** — 1 function(s): `fuseToFlowable()`
- **`FuseToMaybe`** — 1 function(s): `fuseToMaybe()`
- **`FuseToObservable`** — 1 function(s): `fuseToObservable()`
- **`HasUpstreamCompletableSource`** — 1 function(s): `source()`
- **`HasUpstreamMaybeSource`** — 1 function(s): `source()`
- **`HasUpstreamObservableSource`** — 1 function(s): `source()`
- **`HasUpstreamPublisher`** — 1 function(s): `source()`
- **`HasUpstreamSingleSource`** — 1 function(s): `source()`
- **`QueueFuseable`** — 1 function(s): `requestFusion()`
- **`ScalarCallable`** — 1 function(s): `call()`
- **`SimplePlainQueue`** — 1 function(s): `poll()`
- **`SimpleQueue`** — 4 function(s): `clear()`, `isEmpty()`, `offer()`, `poll()`

</details>

### Package `io.reactivex.internal.observers`  (27 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BasicFuseableObserver` | class | Observer<T>, QueueDisposable<R> | 112 | 25 |
| `BasicIntQueueDisposable` | class | AtomicInteger implements QueueDisposable<T> | 20 | 4 |
| `BasicQueueDisposable` | class | QueueDisposable<T> | 17 | 4 |
| `BiConsumerSingleObserver` | class | AtomicReference<Disposable> implements SingleObserver<T>, Disposable | 58 | 9 |
| `BlockingBaseObserver` | class | CountDownLatch implements Observer<T>, Disposable | 64 | 14 |
| `BlockingFirstObserver` | class | BlockingBaseObserver<T> | 22 | 6 |
| `BlockingLastObserver` | class | BlockingBaseObserver<T> | 17 | 3 |
| `BlockingMultiObserver` | class | CountDownLatch implements SingleObserver<T>, CompletableObserver, MaybeObserver<T> | 141 | 37 |
| `BlockingObserver` | class | AtomicReference<Disposable> implements Observer<T>, Disposable | 52 | 9 |
| `CallbackCompletableObserver` | class | AtomicReference<Disposable> implements CompletableObserver, Disposable, Consumer<Throwa... | 77 | 12 |
| `ConsumerSingleObserver` | class | AtomicReference<Disposable> implements SingleObserver<T>, Disposable, LambdaConsumerInt... | 67 | 10 |
| `DeferredScalarDisposable` | class | BasicIntQueueDisposable<T> | 105 | 29 |
| `DeferredScalarObserver` | class | DeferredScalarDisposable<R> implements Observer<T> | 47 | 11 |
| `DisposableLambdaObserver` | class | Observer<T>, Disposable | 84 | 11 |
| `EmptyCompletableObserver` | class | AtomicReference<Disposable> implements CompletableObserver, Disposable, LambdaConsumerI... | 46 | 9 |
| `ForEachWhileObserver` | class | AtomicReference<Disposable> implements Observer<T>, Disposable | 90 | 15 |
| `FutureObserver` | class | CountDownLatch implements Observer<T>, Future<T>, Disposable | 147 | 40 |
| `FutureSingleObserver` | class | CountDownLatch implements SingleObserver<T>, Future<T>, Disposable | 127 | 34 |
| `InnerQueuedObserver` | class | AtomicReference<Disposable> implements Observer<T>, Disposable | 93 | 16 |
| `InnerQueuedObserverSupport` | class | — | 13 | 4 |
| `LambdaObserver` | class | AtomicReference<Disposable> implements Observer<T>, Disposable, LambdaConsumerIntrospec... | 102 | 18 |
| `QueueDrainObserver` | class | QueueDrainSubscriberPad2 implements Observer<T>, ObservableQueueDrain<U, V> | 95 | 19 |
| `QueueDrainSubscriberPad0` | class | — | 22 | 0 |
| `QueueDrainSubscriberPad2` | class | QueueDrainSubscriberWip | 22 | 0 |
| `QueueDrainSubscriberWip` | class | QueueDrainSubscriberPad0 | 10 | 0 |
| `ResumeSingleObserver` | class | SingleObserver<T> | 33 | 4 |
| `SubscriberCompletableObserver` | class | CompletableObserver, Subscription | 45 | 7 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.observers</code></b> (click to expand)</summary>

- **`BasicFuseableObserver`** — 15 function(s): `afterDownstream()`, `beforeDownstream()`, `BasicFuseableObserver()`, `onSubscribe()`, `if()`, `onError()`, `fail()`, `onComplete()`, `transitiveBoundaryFusion()`, `dispose()`, `isDisposed()`, `isEmpty()`, `clear()`, `offer()`, `UnsupportedOperationException()`
- **`BasicIntQueueDisposable`** — 2 function(s): `offer()`, `UnsupportedOperationException()`
- **`BasicQueueDisposable`** — 2 function(s): `offer()`, `UnsupportedOperationException()`
- **`BiConsumerSingleObserver`** — 8 function(s): `BiConsumerSingleObserver()`, `onError()`, `lazySet()`, `onSubscribe()`, `onSuccess()`, `dispose()`, `isDisposed()`, `get()`
- **`BlockingBaseObserver`** — 10 function(s): `BlockingBaseObserver()`, `super()`, `onSubscribe()`, `if()`, `onComplete()`, `countDown()`, `dispose()`, `isDisposed()`, `blockingGet()`, `await()`
- **`BlockingFirstObserver`** — 4 function(s): `onNext()`, `if()`, `countDown()`, `onError()`
- **`BlockingLastObserver`** — 3 function(s): `onNext()`, `onError()`, `countDown()`
- **`BlockingMultiObserver`** — 13 function(s): `BlockingMultiObserver()`, `super()`, `dispose()`, `if()`, `onSubscribe()`, `onSuccess()`, `countDown()`, `onError()`, `onComplete()`, `blockingGet()`, `await()`, `blockingGetError()`, `blockingAwait()`
- **`BlockingObserver`** — 9 function(s): `BlockingObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `if()`, `isDisposed()`, `get()`
- **`CallbackCompletableObserver`** — 10 function(s): `CallbackCompletableObserver()`, `accept()`, `onComplete()`, `lazySet()`, `onError()`, `onSubscribe()`, `dispose()`, `isDisposed()`, `get()`, `hasCustomOnError()`
- **`ConsumerSingleObserver`** — 9 function(s): `ConsumerSingleObserver()`, `onError()`, `lazySet()`, `onSubscribe()`, `onSuccess()`, `dispose()`, `isDisposed()`, `get()`, `hasCustomOnError()`
- **`DeferredScalarDisposable`** — 15 function(s): `DeferredScalarDisposable()`, `requestFusion()`, `if()`, `lazySet()`, `complete()`, `error()`, `poll()`, `isEmpty()`, `get()`, `clear()`, `dispose()`, `set()`, `tryDispose()`, `getAndSet()`, `isDisposed()`
- **`DeferredScalarObserver`** — 9 function(s): `DeferredScalarObserver()`, `super()`, `onSubscribe()`, `if()`, `onError()`, `error()`, `onComplete()`, `complete()`, `dispose()`
- **`DisposableLambdaObserver`** — 8 function(s): `DisposableLambdaObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`EmptyCompletableObserver`** — 8 function(s): `hasCustomOnError()`, `dispose()`, `isDisposed()`, `get()`, `onComplete()`, `lazySet()`, `onError()`, `onSubscribe()`
- **`ForEachWhileObserver`** — 8 function(s): `ForEachWhileObserver()`, `onSubscribe()`, `onNext()`, `if()`, `dispose()`, `onComplete()`, `onError()`, `isDisposed()`
- **`FutureObserver`** — 19 function(s): `dispose()`, `FutureObserver()`, `super()`, `cancel()`, `if()`, `countDown()`, `isCancelled()`, `isDone()`, `getCount()`, `get()`, `await()`, `CancellationException()`, `ExecutionException()`, `TimeoutException()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `isDisposed()`
- **`FutureSingleObserver`** — 18 function(s): `dispose()`, `FutureSingleObserver()`, `super()`, `cancel()`, `if()`, `countDown()`, `isCancelled()`, `isDone()`, `getCount()`, `get()`, `await()`, `CancellationException()`, `ExecutionException()`, `TimeoutException()`, `onSubscribe()`, `onSuccess()`, `onError()`, `isDisposed()`
- **`InnerQueuedObserver`** — 12 function(s): `InnerQueuedObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `isDone()`, `setDone()`, `queue()`, `fusionMode()`
- **`InnerQueuedObserverSupport`** — 4 function(s): `drain()`, `innerComplete()`, `innerError()`, `innerNext()`
- **`LambdaObserver`** — 11 function(s): `LambdaObserver()`, `onSubscribe()`, `if()`, `onError()`, `onNext()`, `get()`, `lazySet()`, `onComplete()`, `dispose()`, `isDisposed()`, `hasCustomOnError()`
- **`QueueDrainObserver`** — 11 function(s): `accept()`, `QueueDrainObserver()`, `cancelled()`, `done()`, `enter()`, `fastEnter()`, `fastPathEmit()`, `if()`, `fastPathOrderedEmit()`, `error()`, `leave()`
- **`ResumeSingleObserver`** — 4 function(s): `ResumeSingleObserver()`, `onSubscribe()`, `onSuccess()`, `onError()`
- **`SubscriberCompletableObserver`** — 7 function(s): `request()`, `SubscriberCompletableObserver()`, `onComplete()`, `onError()`, `onSubscribe()`, `if()`, `cancel()`

</details>

### Package `io.reactivex.internal.operators.completable`  (44 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CompletableAmb` | class | Completable | 119 | 17 |
| `CompletableAndThenCompletable` | class | Completable | 90 | 13 |
| `CompletableCache` | class | Completable implements CompletableObserver | 142 | 28 |
| `CompletableConcat` | class | Completable | 216 | 40 |
| `CompletableConcatArray` | class | Completable | 73 | 12 |
| `CompletableConcatIterable` | class | Completable | 90 | 12 |
| `CompletableCreate` | class | Completable | 111 | 18 |
| `CompletableDefer` | class | Completable | 29 | 2 |
| `CompletableDelay` | class | Completable | 91 | 11 |
| `CompletableDetach` | class | Completable | 72 | 11 |
| `CompletableDisposeOn` | class | Completable | 81 | 12 |
| `CompletableDoFinally` | class | Completable | 83 | 14 |
| `CompletableDoOnEvent` | class | Completable | 62 | 6 |
| `CompletableEmpty` | class | Completable | 19 | 2 |
| `CompletableError` | class | Completable | 20 | 2 |
| `CompletableErrorSupplier` | class | Completable | 29 | 2 |
| `CompletableFromAction` | class | Completable | 37 | 4 |
| `CompletableFromCallable` | class | Completable | 39 | 4 |
| `CompletableFromObservable` | class | Completable | 50 | 7 |
| `CompletableFromPublisher` | class | Completable | 68 | 10 |
| `CompletableFromRunnable` | class | Completable | 36 | 4 |
| `CompletableFromSingle` | class | Completable | 46 | 6 |
| `CompletableFromUnsafeSource` | class | Completable | 20 | 2 |
| `CompletableHide` | class | Completable | 61 | 9 |
| `CompletableLift` | class | Completable | 32 | 2 |
| `CompletableMaterialize` | class | Single<Notification<T>> | 24 | 2 |
| `CompletableMerge` | class | Completable | 201 | 37 |
| `CompletableMergeArray` | class | Completable | 76 | 12 |
| `CompletableMergeDelayErrorArray` | class | Completable | 93 | 17 |
| `CompletableMergeDelayErrorIterable` | class | Completable | 70 | 8 |
| `CompletableMergeIterable` | class | Completable | 103 | 12 |
| `CompletableNever` | class | Completable | 19 | 2 |
| `CompletableObserveOn` | class | Completable | 78 | 11 |
| `CompletableOnErrorComplete` | class | Completable | 59 | 7 |
| `CompletablePeek` | class | Completable | 124 | 14 |
| `CompletableResumeNext` | class | Completable | 79 | 9 |
| `CompletableSubscribeOn` | class | Completable | 73 | 9 |
| `CompletableTakeUntilCompletable` | class | Completable | 119 | 19 |
| `CompletableTimeout` | class | Completable | 124 | 16 |
| `CompletableTimer` | class | Completable | 59 | 7 |
| `CompletableToFlowable` | class | Flowable<T> | 21 | 2 |
| `CompletableToObservable` | class | Observable<T> | 81 | 13 |
| `CompletableToSingle` | class | Single<T> | 68 | 8 |
| `CompletableUsing` | class | Completable | 159 | 23 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.operators.completable</code></b> (click to expand)</summary>

- **`CompletableAmb`** — 8 function(s): `CompletableAmb()`, `subscribeActual()`, `if()`, `for()`, `Amb()`, `onComplete()`, `onError()`, `onSubscribe()`
- **`CompletableAndThenCompletable`** — 10 function(s): `CompletableAndThenCompletable()`, `subscribeActual()`, `SourceObserver()`, `onSubscribe()`, `if()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `NextObserver()`
- **`CompletableCache`** — 14 function(s): `onSubscribe()`, `CompletableCache()`, `subscribeActual()`, `if()`, `remove()`, `onError()`, `for()`, `onComplete()`, `add()`, `while()`, `InnerCompletableCache()`, `isDisposed()`, `get()`, `dispose()`
- **`CompletableConcat`** — 16 function(s): `CompletableConcat()`, `subscribeActual()`, `CompletableConcatSubscriber()`, `onSubscribe()`, `if()`, `drain()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `while()`, `request()`, `innerError()`, `innerComplete()`, `ConcatInnerObserver()`
- **`CompletableConcatArray`** — 9 function(s): `CompletableConcatArray()`, `subscribeActual()`, `ConcatInnerObserver()`, `onSubscribe()`, `onError()`, `onComplete()`, `next()`, `if()`, `while()`
- **`CompletableConcatIterable`** — 9 function(s): `CompletableConcatIterable()`, `subscribeActual()`, `ConcatInnerObserver()`, `onSubscribe()`, `onError()`, `onComplete()`, `next()`, `if()`, `while()`
- **`CompletableCreate`** — 12 function(s): `CompletableCreate()`, `subscribeActual()`, `Emitter()`, `onComplete()`, `if()`, `onError()`, `tryOnError()`, `setDisposable()`, `setCancellable()`, `dispose()`, `isDisposed()`, `toString()`
- **`CompletableDefer`** — 2 function(s): `CompletableDefer()`, `subscribeActual()`
- **`CompletableDelay`** — 10 function(s): `CompletableDelay()`, `subscribeActual()`, `Delay()`, `onSubscribe()`, `if()`, `onComplete()`, `onError()`, `dispose()`, `isDisposed()`, `run()`
- **`CompletableDetach`** — 9 function(s): `CompletableDetach()`, `subscribeActual()`, `DetachCompletableObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onError()`, `onComplete()`
- **`CompletableDisposeOn`** — 10 function(s): `CompletableDisposeOn()`, `subscribeActual()`, `DisposeOnObserver()`, `onComplete()`, `if()`, `onError()`, `onSubscribe()`, `dispose()`, `isDisposed()`, `run()`
- **`CompletableDoFinally`** — 10 function(s): `CompletableDoFinally()`, `subscribeActual()`, `DoFinallyObserver()`, `onSubscribe()`, `if()`, `onError()`, `runFinally()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`CompletableDoOnEvent`** — 6 function(s): `CompletableDoOnEvent()`, `subscribeActual()`, `DoOnEvent()`, `onComplete()`, `onError()`, `onSubscribe()`
- **`CompletableEmpty`** — 2 function(s): `CompletableEmpty()`, `subscribeActual()`
- **`CompletableError`** — 2 function(s): `CompletableError()`, `subscribeActual()`
- **`CompletableErrorSupplier`** — 2 function(s): `CompletableErrorSupplier()`, `subscribeActual()`
- **`CompletableFromAction`** — 3 function(s): `CompletableFromAction()`, `subscribeActual()`, `if()`
- **`CompletableFromCallable`** — 3 function(s): `CompletableFromCallable()`, `subscribeActual()`, `if()`
- **`CompletableFromObservable`** — 7 function(s): `CompletableFromObservable()`, `subscribeActual()`, `onNext()`, `CompletableFromObservableObserver()`, `onSubscribe()`, `onError()`, `onComplete()`
- **`CompletableFromPublisher`** — 10 function(s): `CompletableFromPublisher()`, `subscribeActual()`, `onNext()`, `FromPublisherSubscriber()`, `onSubscribe()`, `if()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`CompletableFromRunnable`** — 3 function(s): `CompletableFromRunnable()`, `subscribeActual()`, `if()`
- **`CompletableFromSingle`** — 6 function(s): `CompletableFromSingle()`, `subscribeActual()`, `CompletableFromSingleObserver()`, `onError()`, `onSubscribe()`, `onSuccess()`
- **`CompletableFromUnsafeSource`** — 2 function(s): `CompletableFromUnsafeSource()`, `subscribeActual()`
- **`CompletableHide`** — 9 function(s): `CompletableHide()`, `subscribeActual()`, `HideCompletableObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onError()`, `onComplete()`
- **`CompletableLift`** — 2 function(s): `CompletableLift()`, `subscribeActual()`
- **`CompletableMaterialize`** — 2 function(s): `CompletableMaterialize()`, `subscribeActual()`
- **`CompletableMerge`** — 15 function(s): `CompletableMerge()`, `subscribeActual()`, `CompletableMergeSubscriber()`, `lazySet()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onNext()`, `getAndIncrement()`, `onError()`, `onComplete()`, `innerError()`, `innerComplete()`, `MergeInnerObserver()`
- **`CompletableMergeArray`** — 9 function(s): `CompletableMergeArray()`, `subscribeActual()`, `for()`, `if()`, `InnerCompletableObserver()`, `lazySet()`, `onSubscribe()`, `onError()`, `onComplete()`
- **`CompletableMergeDelayErrorArray`** — 9 function(s): `CompletableMergeDelayErrorArray()`, `subscribeActual()`, `for()`, `if()`, `MergeInnerCompletableObserver()`, `onSubscribe()`, `onError()`, `tryTerminate()`, `onComplete()`
- **`CompletableMergeDelayErrorIterable`** — 4 function(s): `CompletableMergeDelayErrorIterable()`, `subscribeActual()`, `while()`, `if()`
- **`CompletableMergeIterable`** — 8 function(s): `CompletableMergeIterable()`, `subscribeActual()`, `while()`, `if()`, `MergeCompletableObserver()`, `onSubscribe()`, `onError()`, `onComplete()`
- **`CompletableNever`** — 2 function(s): `CompletableNever()`, `subscribeActual()`
- **`CompletableObserveOn`** — 10 function(s): `CompletableObserveOn()`, `subscribeActual()`, `ObserveOnCompletableObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onError()`, `onComplete()`, `run()`
- **`CompletableOnErrorComplete`** — 7 function(s): `CompletableOnErrorComplete()`, `subscribeActual()`, `OnError()`, `onComplete()`, `onError()`, `if()`, `onSubscribe()`
- **`CompletablePeek`** — 10 function(s): `CompletablePeek()`, `subscribeActual()`, `CompletableObserverImplementation()`, `onSubscribe()`, `if()`, `onError()`, `doAfter()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`CompletableResumeNext`** — 9 function(s): `CompletableResumeNext()`, `subscribeActual()`, `ResumeNextObserver()`, `onSubscribe()`, `onComplete()`, `onError()`, `if()`, `isDisposed()`, `dispose()`
- **`CompletableSubscribeOn`** — 9 function(s): `CompletableSubscribeOn()`, `subscribeActual()`, `SubscribeOnObserver()`, `run()`, `onSubscribe()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`CompletableTakeUntilCompletable`** — 12 function(s): `CompletableTakeUntilCompletable()`, `subscribeActual()`, `TakeUntilMainObserver()`, `dispose()`, `if()`, `isDisposed()`, `onSubscribe()`, `onComplete()`, `onError()`, `innerComplete()`, `innerError()`, `OtherObserver()`
- **`CompletableTimeout`** — 10 function(s): `CompletableTimeout()`, `subscribeActual()`, `TimeOutObserver()`, `onSubscribe()`, `onError()`, `if()`, `onComplete()`, `DisposeTask()`, `run()`, `DisposeObserver()`
- **`CompletableTimer`** — 7 function(s): `CompletableTimer()`, `subscribeActual()`, `TimerDisposable()`, `run()`, `dispose()`, `isDisposed()`, `setFuture()`
- **`CompletableToFlowable`** — 2 function(s): `CompletableToFlowable()`, `subscribeActual()`
- **`CompletableToObservable`** — 13 function(s): `CompletableToObservable()`, `subscribeActual()`, `clear()`, `isEmpty()`, `poll()`, `requestFusion()`, `ObserverCompletableObserver()`, `onComplete()`, `onError()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`
- **`CompletableToSingle`** — 7 function(s): `CompletableToSingle()`, `subscribeActual()`, `ToSingle()`, `onComplete()`, `if()`, `onError()`, `onSubscribe()`
- **`CompletableUsing`** — 11 function(s): `CompletableUsing()`, `subscribeActual()`, `if()`, `UsingObserver()`, `super()`, `dispose()`, `disposeResourceAfter()`, `isDisposed()`, `onSubscribe()`, `onError()`, `onComplete()`

</details>

### Package `io.reactivex.internal.operators.flowable`  (157 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AbstractFlowableWithUpstream` | class | Flowable<R> implements HasUpstreamPublisher<T> | 22 | 2 |
| `BlockingFlowableIterable` | class | Iterable<T> | 163 | 33 |
| `BlockingFlowableLatest` | class | Iterable<T> | 95 | 17 |
| `BlockingFlowableMostRecent` | class | Iterable<T> | 94 | 18 |
| `BlockingFlowableNext` | class | Iterable<T> | 144 | 29 |
| `FlowableAll` | class | AbstractFlowableWithUpstream<T, Boolean> | 93 | 18 |
| `FlowableAllSingle` | class | Single<Boolean> implements FuseToFlowable<Boolean> | 110 | 16 |
| `FlowableAmb` | class | Flowable<T> | 205 | 37 |
| `FlowableAny` | class | AbstractFlowableWithUpstream<T, Boolean> | 92 | 18 |
| `FlowableAnySingle` | class | Single<Boolean> implements FuseToFlowable<Boolean> | 109 | 16 |
| `FlowableAutoConnect` | class | Flowable<T> | 31 | 3 |
| `FlowableBlockingSubscribe` | class | — | 75 | 13 |
| `FlowableBuffer` | class | AbstractFlowableWithUpstream<T, C> | 348 | 62 |
| `FlowableBufferBoundary` | class | AbstractFlowableWithUpstream<T, U> | 361 | 75 |
| `FlowableBufferBoundarySupplier` | class | AbstractFlowableWithUpstream<T, U> | 235 | 43 |
| `FlowableBufferExactBoundary` | class | AbstractFlowableWithUpstream<T, U> | 189 | 36 |
| `FlowableBufferTimed` | class | AbstractFlowableWithUpstream<T, U> | 498 | 96 |
| `FlowableCache` | class | AbstractFlowableWithUpstream<T, T> implements FlowableSubscriber<T> | 254 | 45 |
| `FlowableCollect` | class | AbstractFlowableWithUpstream<T, U> | 99 | 16 |
| `FlowableCollectSingle` | class | Single<U> implements FuseToFlowable<U> | 114 | 15 |
| `FlowableCombineLatest` | class | Flowable<R> | 433 | 83 |
| `FlowableConcatArray` | class | Flowable<T> | 127 | 22 |
| `FlowableConcatMap` | class | AbstractFlowableWithUpstream<T, R> | 504 | 102 |
| `FlowableConcatMapEager` | class | AbstractFlowableWithUpstream<T, R> | 364 | 69 |
| `FlowableConcatMapEagerPublisher` | class | Flowable<R> | 31 | 2 |
| `FlowableConcatMapPublisher` | class | Flowable<R> | 31 | 3 |
| `FlowableConcatWithCompletable` | class | AbstractFlowableWithUpstream<T, T> | 89 | 13 |
| `FlowableConcatWithMaybe` | class | AbstractFlowableWithUpstream<T, T> | 82 | 13 |
| `FlowableConcatWithSingle` | class | AbstractFlowableWithUpstream<T, T> | 76 | 12 |
| `FlowableCount` | class | AbstractFlowableWithUpstream<T, Long> | 62 | 12 |
| `FlowableCountSingle` | class | Single<Long> implements FuseToFlowable<Long> | 79 | 11 |
| `FlowableCreate` | class | Flowable<T> | 631 | 155 |
| `FlowableDebounce` | class | AbstractFlowableWithUpstream<T, T> | 183 | 34 |
| `FlowableDebounceTimed` | class | AbstractFlowableWithUpstream<T, T> | 184 | 32 |
| `FlowableDefer` | class | Flowable<T> | 29 | 2 |
| `FlowableDelay` | class | AbstractFlowableWithUpstream<T, T> | 131 | 17 |
| `FlowableDelaySubscriptionOther` | class | Flowable<T> | 122 | 21 |
| `FlowableDematerialize` | class | AbstractFlowableWithUpstream<T, R> | 110 | 20 |
| `FlowableDetach` | class | AbstractFlowableWithUpstream<T, T> | 73 | 11 |
| `FlowableDistinct` | class | AbstractFlowableWithUpstream<T, T> | 119 | 21 |
| `FlowableDistinctUntilChanged` | class | AbstractFlowableWithUpstream<T, T> | 194 | 40 |
| `FlowableDoAfterNext` | class | AbstractFlowableWithUpstream<T, T> | 118 | 25 |
| `FlowableDoFinally` | class | AbstractFlowableWithUpstream<T, T> | 235 | 49 |
| `FlowableDoOnEach` | class | AbstractFlowableWithUpstream<T, T> | 295 | 43 |
| `FlowableDoOnLifecycle` | class | AbstractFlowableWithUpstream<T, T> | 112 | 14 |
| `FlowableElementAt` | class | AbstractFlowableWithUpstream<T, T> | 107 | 19 |
| `FlowableElementAtMaybe` | class | Maybe<T> implements FuseToFlowable<T> | 104 | 15 |
| `FlowableElementAtSingle` | class | Single<T> implements FuseToFlowable<T> | 114 | 16 |
| `FlowableEmpty` | class | Flowable<Object> implements ScalarCallable<Object> | 25 | 3 |
| `FlowableError` | class | Flowable<T> | 29 | 2 |
| `FlowableFilter` | class | AbstractFlowableWithUpstream<T, T> | 152 | 35 |
| `FlowableFlatMap` | class | AbstractFlowableWithUpstream<T, U> | 699 | 148 |
| `FlowableFlatMapCompletable` | class | AbstractFlowableWithUpstream<T, T> | 208 | 39 |
| `FlowableFlatMapCompletableCompletable` | class | Completable implements FuseToFlowable<T> | 195 | 35 |
| `FlowableFlatMapMaybe` | class | AbstractFlowableWithUpstream<T, R> | 450 | 85 |
| `FlowableFlatMapPublisher` | class | Flowable<U> | 32 | 3 |
| `FlowableFlatMapSingle` | class | AbstractFlowableWithUpstream<T, R> | 412 | 74 |
| `FlowableFlattenIterable` | class | AbstractFlowableWithUpstream<T, R> | 356 | 66 |
| `FlowableFromArray` | class | Flowable<T> | 253 | 49 |
| `FlowableFromCallable` | class | Flowable<T> implements Callable<T> | 41 | 5 |
| `FlowableFromFuture` | class | Flowable<T> | 42 | 4 |
| `FlowableFromIterable` | class | Flowable<T> | 334 | 59 |
| `FlowableFromObservable` | class | Flowable<T> | 63 | 9 |
| `FlowableFromPublisher` | class | Flowable<T> | 20 | 2 |
| `FlowableGenerate` | class | Flowable<T> | 170 | 29 |
| `FlowableGroupBy` | class | AbstractFlowableWithUpstream<T, GroupedFlowable<K, V>> | 645 | 137 |
| `FlowableGroupJoin` | class | AbstractFlowableWithUpstream<TLeft, R> | 389 | 77 |
| `FlowableHide` | class | AbstractFlowableWithUpstream<T, T> | 63 | 11 |
| `FlowableIgnoreElements` | class | AbstractFlowableWithUpstream<T, T> | 94 | 19 |
| `FlowableIgnoreElementsCompletable` | class | Completable implements FuseToFlowable<T> | 77 | 11 |
| `FlowableInternalHelper` | class | BiFunction<S, Emitter<T>, S> | 370 | 67 |
| `FlowableInterval` | class | Flowable<Long> | 89 | 11 |
| `FlowableIntervalRange` | class | Flowable<Long> | 107 | 15 |
| `FlowableJoin` | class | AbstractFlowableWithUpstream<TLeft, R> | 299 | 59 |
| `FlowableJust` | class | Flowable<T> implements ScalarCallable<T> | 26 | 3 |
| `FlowableLastMaybe` | class | Maybe<T> | 79 | 11 |
| `FlowableLastSingle` | class | Single<T> | 89 | 12 |
| `FlowableLift` | class | AbstractFlowableWithUpstream<T, R> | 37 | 5 |
| `FlowableLimit` | class | AbstractFlowableWithUpstream<T, T> | 108 | 19 |
| `FlowableMap` | class | AbstractFlowableWithUpstream<T, U> | 128 | 29 |
| `FlowableMapNotification` | class | AbstractFlowableWithUpstream<T, R> | 80 | 10 |
| `FlowableMapPublisher` | class | Flowable<U> | 24 | 2 |
| `FlowableMaterialize` | class | AbstractFlowableWithUpstream<T, Notification<T>> | 54 | 12 |
| `FlowableMergeWithCompletable` | class | AbstractFlowableWithUpstream<T, T> | 123 | 18 |
| `FlowableMergeWithMaybe` | class | AbstractFlowableWithUpstream<T, T> | 305 | 59 |
| `FlowableMergeWithSingle` | class | AbstractFlowableWithUpstream<T, T> | 295 | 56 |
| `FlowableNever` | class | Flowable<Object> | 19 | 2 |
| `FlowableObserveOn` | class | AbstractFlowableWithUpstream<T, T> | 585 | 115 |
| `FlowableOnBackpressureBuffer` | class | AbstractFlowableWithUpstream<T, T> | 232 | 46 |
| `FlowableOnBackpressureBufferStrategy` | class | AbstractFlowableWithUpstream<T, T> | 227 | 48 |
| `FlowableOnBackpressureDrop` | class | AbstractFlowableWithUpstream<T, T> implements Consumer<T> | 110 | 21 |
| `FlowableOnBackpressureError` | class | AbstractFlowableWithUpstream<T, T> | 89 | 17 |
| `FlowableOnBackpressureLatest` | class | AbstractFlowableWithUpstream<T, T> | 147 | 32 |
| `FlowableOnErrorNext` | class | AbstractFlowableWithUpstream<T, T> | 106 | 18 |
| `FlowableOnErrorReturn` | class | AbstractFlowableWithUpstream<T, T> | 58 | 9 |
| `FlowablePublish` | class | ConnectableFlowable<T> implements HasUpstreamPublisher<T> | 489 | 82 |
| `FlowablePublishMulticast` | class | AbstractFlowableWithUpstream<T, R> | 455 | 92 |
| `FlowableRange` | class | Flowable<Integer> | 228 | 44 |
| `FlowableRangeLong` | class | Flowable<Long> | 230 | 44 |
| `FlowableReduce` | class | AbstractFlowableWithUpstream<T, T> | 99 | 18 |
| `FlowableReduceMaybe` | class | Maybe<T> implements HasUpstreamPublisher<T>, FuseToFlowable<T> | 120 | 18 |
| `FlowableReduceSeedSingle` | class | Single<R> | 102 | 14 |
| `FlowableReduceWithSingle` | class | Single<R> | 35 | 2 |
| `FlowableRefCount` | class | Flowable<T> | 217 | 42 |
| `FlowableRepeat` | class | AbstractFlowableWithUpstream<T, T> | 91 | 17 |
| `FlowableRepeatUntil` | class | AbstractFlowableWithUpstream<T, T> | 94 | 16 |
| `FlowableRepeatWhen` | class | AbstractFlowableWithUpstream<T, T> | 169 | 28 |
| `FlowableReplay` | class | ConnectableFlowable<T> implements HasUpstreamPublisher<T>, ResettableConnectable | 931 | 191 |
| `FlowableRetryBiPredicate` | class | AbstractFlowableWithUpstream<T, T> | 99 | 16 |
| `FlowableRetryPredicate` | class | AbstractFlowableWithUpstream<T, T> | 107 | 18 |
| `FlowableRetryWhen` | class | AbstractFlowableWithUpstream<T, T> | 63 | 8 |
| `FlowableSamplePublisher` | class | Flowable<T> | 226 | 49 |
| `FlowableSampleTimed` | class | AbstractFlowableWithUpstream<T, T> | 170 | 38 |
| `FlowableScalarXMap` | class | Flowable<R> | 104 | 12 |
| `FlowableScan` | class | AbstractFlowableWithUpstream<T, T> | 102 | 16 |
| `FlowableScanSeed` | class | AbstractFlowableWithUpstream<T, R> | 192 | 32 |
| `FlowableSequenceEqual` | class | Flowable<Boolean> | 285 | 53 |
| `FlowableSequenceEqualSingle` | class | Single<Boolean> implements FuseToFlowable<Boolean> | 192 | 31 |
| `FlowableSerialized` | class | AbstractFlowableWithUpstream<T, T> | 19 | 3 |
| `FlowableSingle` | class | AbstractFlowableWithUpstream<T, T> | 105 | 19 |
| `FlowableSingleMaybe` | class | Maybe<T> implements FuseToFlowable<T> | 105 | 16 |
| `FlowableSingleSingle` | class | Single<T> implements FuseToFlowable<T> | 113 | 17 |
| `FlowableSkip` | class | AbstractFlowableWithUpstream<T, T> | 74 | 12 |
| `FlowableSkipLast` | class | AbstractFlowableWithUpstream<T, T> | 76 | 14 |
| `FlowableSkipLastTimed` | class | AbstractFlowableWithUpstream<T, T> | 179 | 32 |
| `FlowableSkipUntil` | class | AbstractFlowableWithUpstream<T, T> | 123 | 19 |
| `FlowableSkipWhile` | class | AbstractFlowableWithUpstream<T, T> | 86 | 13 |
| `FlowableSubscribeOn` | class | AbstractFlowableWithUpstream<T, T> | 136 | 25 |
| `FlowableSwitchIfEmpty` | class | AbstractFlowableWithUpstream<T, T> | 67 | 10 |
| `FlowableSwitchMap` | class | AbstractFlowableWithUpstream<T, R> | 381 | 72 |
| `FlowableTake` | class | AbstractFlowableWithUpstream<T, T> | 110 | 20 |
| `FlowableTakeLast` | class | AbstractFlowableWithUpstream<T, T> | 117 | 26 |
| `FlowableTakeLastOne` | class | AbstractFlowableWithUpstream<T, T> | 67 | 13 |
| `FlowableTakeLastTimed` | class | AbstractFlowableWithUpstream<T, T> | 195 | 38 |
| `FlowableTakePublisher` | class | Flowable<T> | 23 | 2 |
| `FlowableTakeUntil` | class | AbstractFlowableWithUpstream<T, T> | 111 | 16 |
| `FlowableTakeUntilPredicate` | class | AbstractFlowableWithUpstream<T, T> | 95 | 16 |
| `FlowableTakeWhile` | class | AbstractFlowableWithUpstream<T, T> | 96 | 16 |
| `FlowableThrottleFirstTimed` | class | AbstractFlowableWithUpstream<T, T> | 125 | 19 |
| `FlowableThrottleLatest` | class | AbstractFlowableWithUpstream<T, T> | 178 | 29 |
| `FlowableTimeInterval` | class | AbstractFlowableWithUpstream<T, Timed<T>> | 80 | 11 |
| `FlowableTimeout` | class | AbstractFlowableWithUpstream<T, T> | 330 | 64 |
| `FlowableTimeoutTimed` | class | AbstractFlowableWithUpstream<T, T> | 277 | 46 |
| `FlowableTimer` | class | Flowable<Long> | 75 | 12 |
| `FlowableToList` | class | AbstractFlowableWithUpstream<T, U> | 80 | 13 |
| `FlowableToListSingle` | class | Single<U> implements FuseToFlowable<U> | 98 | 13 |
| `FlowableUnsubscribeOn` | class | AbstractFlowableWithUpstream<T, T> | 95 | 17 |
| `FlowableUsing` | class | Flowable<T> | 154 | 20 |
| `FlowableWindow` | class | AbstractFlowableWithUpstream<T, Flowable<T>> | 424 | 87 |
| `FlowableWindowBoundary` | class | AbstractFlowableWithUpstream<T, Flowable<T>> | 251 | 47 |
| `FlowableWindowBoundarySelector` | class | AbstractFlowableWithUpstream<T, Flowable<T>> | 346 | 74 |
| `FlowableWindowBoundarySupplier` | class | AbstractFlowableWithUpstream<T, Flowable<T>> | 282 | 57 |
| `FlowableWindowTimed` | class | AbstractFlowableWithUpstream<T, Flowable<T>> | 750 | 162 |
| `FlowableWithLatestFrom` | class | AbstractFlowableWithUpstream<T, R> | 144 | 22 |
| `FlowableWithLatestFromMany` | class | AbstractFlowableWithUpstream<T, R> | 277 | 51 |
| `FlowableZip` | class | Flowable<R> | 348 | 68 |
| `FlowableZipIterable` | class | AbstractFlowableWithUpstream<T, V> | 131 | 20 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.operators.flowable</code></b> (click to expand)</summary>

- **`AbstractFlowableWithUpstream`** — 2 function(s): `AbstractFlowableWithUpstream()`, `source()`
- **`BlockingFlowableIterable`** — 19 function(s): `BlockingFlowableIterable()`, `iterator()`, `BlockingFlowableIterator()`, `hasNext()`, `while()`, `if()`, `run()`, `next()`, `get()`, `NoSuchElementException()`, `onSubscribe()`, `onNext()`, `onError()`, `signalConsumer()`, `onComplete()`, `remove()`, `UnsupportedOperationException()`, `dispose()`, `isDisposed()`
- **`BlockingFlowableLatest`** — 13 function(s): `BlockingFlowableLatest()`, `iterator()`, `onComplete()`, `LatestSubscriberIterator()`, `onNext()`, `if()`, `onError()`, `hasNext()`, `dispose()`, `next()`, `NoSuchElementException()`, `remove()`, `UnsupportedOperationException()`
- **`BlockingFlowableMostRecent`** — 15 function(s): `BlockingFlowableMostRecent()`, `iterator()`, `MostRecentSubscriber()`, `onComplete()`, `onError()`, `onNext()`, `getIterable()`, `Iterator()`, `hasNext()`, `next()`, `if()`, `NoSuchElementException()`, `return()`, `remove()`, `UnsupportedOperationException()`
- **`BlockingFlowableNext`** — 18 function(s): `BlockingFlowableNext()`, `iterator()`, `NextIterator()`, `hasNext()`, `if()`, `moveToNext()`, `IllegalStateException()`, `next()`, `NoSuchElementException()`, `remove()`, `UnsupportedOperationException()`, `onComplete()`, `NextSubscriber()`, `onError()`, `onNext()`, `while()`, `takeNext()`, `setWaiting()`
- **`FlowableAll`** — 11 function(s): `FlowableAll()`, `super()`, `subscribeActual()`, `AllSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `complete()`, `onError()`, `onComplete()`, `cancel()`
- **`FlowableAllSingle`** — 11 function(s): `FlowableAllSingle()`, `subscribeActual()`, `fuseToFlowable()`, `AllSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`FlowableAmb`** — 16 function(s): `FlowableAmb()`, `subscribeActual()`, `if()`, `for()`, `AmbCoordinator()`, `subscribe()`, `while()`, `request()`, `win()`, `cancel()`, `AmbInnerSubscriber()`, `onSubscribe()`, `onNext()`, `get()`, `onError()`, `onComplete()`
- **`FlowableAny`** — 11 function(s): `FlowableAny()`, `super()`, `subscribeActual()`, `AnySubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `complete()`, `onError()`, `onComplete()`, `cancel()`
- **`FlowableAnySingle`** — 11 function(s): `FlowableAnySingle()`, `subscribeActual()`, `fuseToFlowable()`, `AnySubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`FlowableAutoConnect`** — 3 function(s): `FlowableAutoConnect()`, `subscribeActual()`, `if()`
- **`FlowableBlockingSubscribe`** — 5 function(s): `FlowableBlockingSubscribe()`, `IllegalStateException()`, `subscribe()`, `while()`, `if()`
- **`FlowableBuffer`** — 15 function(s): `FlowableBuffer()`, `super()`, `subscribeActual()`, `if()`, `PublisherBufferExactSubscriber()`, `request()`, `cancel()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `PublisherBufferSkipSubscriber()`, `PublisherBufferOverlappingSubscriber()`, `getAsBoolean()`, `while()`
- **`FlowableBufferBoundary`** — 24 function(s): `FlowableBufferBoundary()`, `super()`, `subscribeActual()`, `BufferBoundarySubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `synchronized()`, `while()`, `onError()`, `drain()`, `onComplete()`, `request()`, `cancel()`, `open()`, `openComplete()`, `close()`, `boundaryError()`, `BufferOpenSubscriber()`, `lazySet()`, `dispose()`, `isDisposed()`, `get()`, `BufferCloseSubscriber()`
- **`FlowableBufferBoundarySupplier`** — 20 function(s): `FlowableBufferBoundarySupplier()`, `super()`, `subscribeActual()`, `accept()`, `BufferBoundarySupplierSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `synchronized()`, `onError()`, `cancel()`, `onComplete()`, `request()`, `requested()`, `disposeOther()`, `next()`, `fastPathEmitMax()`, `dispose()`, `isDisposed()`, `BufferBoundarySubscriber()`
- **`FlowableBufferExactBoundary`** — 19 function(s): `FlowableBufferExactBoundary()`, `super()`, `subscribeActual()`, `accept()`, `BufferExactBoundarySubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `synchronized()`, `onError()`, `cancel()`, `onComplete()`, `request()`, `requested()`, `next()`, `fastPathEmitMax()`, `dispose()`, `isDisposed()`, `BufferBoundarySubscriber()`
- **`FlowableBufferTimed`** — 24 function(s): `FlowableBufferTimed()`, `super()`, `subscribeActual()`, `if()`, `accept()`, `BufferExactUnboundedSubscriber()`, `onSubscribe()`, `cancel()`, `onNext()`, `synchronized()`, `onError()`, `onComplete()`, `request()`, `requested()`, `run()`, `fastPathEmitMax()`, `dispose()`, `isDisposed()`, `BufferSkipBoundedSubscriber()`, `while()`, `clear()`, `RemoveFromBuffer()`, `BufferExactBoundedSubscriber()`, `fastPathOrderedEmitMax()`
- **`FlowableCache`** — 20 function(s): `FlowableCache()`, `super()`, `subscribeActual()`, `add()`, `if()`, `replay()`, `isConnected()`, `hasSubscribers()`, `cachedEventCount()`, `remove()`, `while()`, `onSubscribe()`, `onNext()`, `for()`, `onError()`, `onComplete()`, `CacheSubscription()`, `request()`, `cancel()`, `Node()`
- **`FlowableCollect`** — 11 function(s): `FlowableCollect()`, `super()`, `subscribeActual()`, `CollectSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `complete()`, `cancel()`
- **`FlowableCollectSingle`** — 11 function(s): `FlowableCollectSingle()`, `subscribeActual()`, `fuseToFlowable()`, `CollectSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`FlowableCombineLatest`** — 31 function(s): `FlowableCombineLatest()`, `subscribeActual()`, `if()`, `while()`, `CombineLatestCoordinator()`, `for()`, `request()`, `drain()`, `cancel()`, `cancelAll()`, `subscribe()`, `innerValue()`, `synchronized()`, `innerComplete()`, `innerError()`, `drainOutput()`, `drainAsync()`, `checkTerminated()`, `requestFusion()`, `poll()`, `clear()`, `isEmpty()`, `CombineLatestInnerSubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `requestOne()`, `get()`, `SingletonArrayFunc()`, `apply()`
- **`FlowableConcatArray`** — 12 function(s): `FlowableConcatArray()`, `subscribeActual()`, `ConcatArraySubscriber()`, `super()`, `onSubscribe()`, `setSubscription()`, `onNext()`, `onError()`, `if()`, `onComplete()`, `while()`, `produced()`
- **`FlowableConcatMap`** — 24 function(s): `innerComplete()`, `innerError()`, `innerNext()`, `FlowableConcatMap()`, `super()`, `subscribe()`, `switch()`, `ConcatMapDelayed()`, `ConcatMapImmediate()`, `subscribeActual()`, `if()`, `drain()`, `BaseConcatMapSubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `while()`, `WeakScalarSubscription()`, `ConcatMapInner()`, `setSubscription()`, `produced()`
- **`FlowableConcatMapEager`** — 18 function(s): `FlowableConcatMapEager()`, `super()`, `subscribeActual()`, `ConcatMapEagerDelayErrorSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `drainAndCancel()`, `onError()`, `drain()`, `onComplete()`, `cancel()`, `cancelAll()`, `while()`, `request()`, `innerNext()`, `innerError()`, `innerComplete()`
- **`FlowableConcatMapEagerPublisher`** — 2 function(s): `FlowableConcatMapEagerPublisher()`, `subscribeActual()`
- **`FlowableConcatMapPublisher`** — 3 function(s): `FlowableConcatMapPublisher()`, `subscribeActual()`, `if()`
- **`FlowableConcatWithCompletable`** — 11 function(s): `FlowableConcatWithCompletable()`, `super()`, `subscribeActual()`, `ConcatWithSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`
- **`FlowableConcatWithMaybe`** — 12 function(s): `FlowableConcatWithMaybe()`, `super()`, `subscribeActual()`, `ConcatWithSubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `onSuccess()`, `complete()`, `onComplete()`, `if()`, `cancel()`
- **`FlowableConcatWithSingle`** — 11 function(s): `FlowableConcatWithSingle()`, `super()`, `subscribeActual()`, `ConcatWithSubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `onSuccess()`, `complete()`, `onComplete()`, `cancel()`
- **`FlowableCount`** — 11 function(s): `FlowableCount()`, `super()`, `subscribeActual()`, `CountSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `complete()`, `cancel()`
- **`FlowableCountSingle`** — 11 function(s): `FlowableCountSingle()`, `subscribeActual()`, `fuseToFlowable()`, `CountSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`FlowableCreate`** — 35 function(s): `FlowableCreate()`, `subscribeActual()`, `switch()`, `serialize()`, `SerializedEmitter()`, `onNext()`, `if()`, `onError()`, `synchronized()`, `drainLoop()`, `tryOnError()`, `drain()`, `onComplete()`, `while()`, `setDisposable()`, `setCancellable()`, `requested()`, `isCancelled()`, `toString()`, `onRequested()`, `onUnsubscribed()`, `BaseEmitter()`, `complete()`, `error()`, `cancel()`, `request()`, `get()`, `MissingEmitter()`, `super()`, `onOverflow()`, `NoOverflowBaseAsyncEmitter()`, `DropAsyncEmitter()`, `ErrorAsyncEmitter()`, `BufferAsyncEmitter()`, `LatestAsyncEmitter()`
- **`FlowableDebounce`** — 13 function(s): `FlowableDebounce()`, `super()`, `subscribeActual()`, `DebounceSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `cancel()`, `onError()`, `onComplete()`, `request()`, `emit()`, `DebounceInnerSubscriber()`
- **`FlowableDebounceTimed`** — 18 function(s): `FlowableDebounceTimed()`, `super()`, `subscribeActual()`, `DebounceTimedSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `emit()`, `DebounceEmitter()`, `run()`, `dispose()`, `isDisposed()`, `get()`, `setResource()`
- **`FlowableDefer`** — 2 function(s): `FlowableDefer()`, `subscribeActual()`
- **`FlowableDelay`** — 15 function(s): `FlowableDelay()`, `super()`, `subscribeActual()`, `DelaySubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `OnNext()`, `run()`, `OnError()`, `OnComplete()`
- **`FlowableDelaySubscriptionOther`** — 13 function(s): `FlowableDelaySubscriptionOther()`, `subscribeActual()`, `MainSubscriber()`, `next()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `if()`, `cancel()`, `onSubscribe()`, `OtherSubscriber()`, `lazySet()`
- **`FlowableDematerialize`** — 11 function(s): `FlowableDematerialize()`, `super()`, `subscribeActual()`, `DematerializeSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`
- **`FlowableDetach`** — 11 function(s): `FlowableDetach()`, `super()`, `subscribeActual()`, `DetachSubscriber()`, `request()`, `cancel()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`
- **`FlowableDistinct`** — 14 function(s): `FlowableDistinct()`, `super()`, `subscribeActual()`, `DistinctSubscriber()`, `onNext()`, `if()`, `fail()`, `onError()`, `onComplete()`, `requestFusion()`, `transitiveBoundaryFusion()`, `poll()`, `while()`, `clear()`
- **`FlowableDistinctUntilChanged`** — 13 function(s): `FlowableDistinctUntilChanged()`, `super()`, `subscribeActual()`, `if()`, `DistinctUntilChangedSubscriber()`, `onNext()`, `tryOnNext()`, `fail()`, `requestFusion()`, `transitiveBoundaryFusion()`, `poll()`, `while()`, `DistinctUntilChangedConditionalSubscriber()`
- **`FlowableDoAfterNext`** — 12 function(s): `FlowableDoAfterNext()`, `super()`, `subscribeActual()`, `if()`, `DoAfterSubscriber()`, `onNext()`, `fail()`, `requestFusion()`, `transitiveBoundaryFusion()`, `poll()`, `DoAfterConditionalSubscriber()`, `tryOnNext()`
- **`FlowableDoFinally`** — 18 function(s): `FlowableDoFinally()`, `super()`, `subscribeActual()`, `if()`, `DoFinallySubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `runFinally()`, `onComplete()`, `cancel()`, `request()`, `requestFusion()`, `clear()`, `isEmpty()`, `poll()`, `DoFinallyConditionalSubscriber()`, `tryOnNext()`
- **`FlowableDoOnEach`** — 15 function(s): `FlowableDoOnEach()`, `super()`, `subscribeActual()`, `if()`, `DoOnEachSubscriber()`, `onNext()`, `fail()`, `onError()`, `onComplete()`, `requestFusion()`, `transitiveBoundaryFusion()`, `poll()`, `CompositeException()`, `DoOnEachConditionalSubscriber()`, `tryOnNext()`
- **`FlowableDoOnLifecycle`** — 11 function(s): `FlowableDoOnLifecycle()`, `super()`, `subscribeActual()`, `SubscriptionLambdaSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`
- **`FlowableElementAt`** — 11 function(s): `FlowableElementAt()`, `super()`, `subscribeActual()`, `ElementAtSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `complete()`, `onError()`, `onComplete()`, `cancel()`
- **`FlowableElementAtMaybe`** — 11 function(s): `FlowableElementAtMaybe()`, `subscribeActual()`, `fuseToFlowable()`, `ElementAtSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`FlowableElementAtSingle`** — 11 function(s): `FlowableElementAtSingle()`, `subscribeActual()`, `fuseToFlowable()`, `ElementAtSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`FlowableEmpty`** — 3 function(s): `call()`, `FlowableEmpty()`, `subscribeActual()`
- **`FlowableError`** — 2 function(s): `FlowableError()`, `subscribeActual()`
- **`FlowableFilter`** — 13 function(s): `FlowableFilter()`, `super()`, `subscribeActual()`, `if()`, `FilterSubscriber()`, `onNext()`, `tryOnNext()`, `fail()`, `requestFusion()`, `transitiveBoundaryFusion()`, `poll()`, `while()`, `FilterConditionalSubscriber()`
- **`FlowableFlatMap`** — 32 function(s): `FlowableFlatMap()`, `super()`, `subscribeActual()`, `if()`, `subscribe()`, `MergeSubscriber()`, `onSubscribe()`, `onNext()`, `tryEmitScalar()`, `drain()`, `onError()`, `addInner()`, `removeInner()`, `while()`, `getMainQueue()`, `drainLoop()`, `getInnerQueue()`, `tryEmit()`, `onComplete()`, `request()`, `cancel()`, `disposeAll()`, `for()`, `checkTerminate()`, `clearScalarQueue()`, `innerError()`, `InnerSubscriber()`, `lazySet()`, `requestMore()`, `get()`, `dispose()`, `isDisposed()`
- **`FlowableFlatMapCompletable`** — 22 function(s): `FlowableFlatMapCompletable()`, `super()`, `subscribeActual()`, `clear()`, `isEmpty()`, `poll()`, `request()`, `requestFusion()`, `FlatMapCompletableMainSubscriber()`, `lazySet()`, `onSubscribe()`, `if()`, `onNext()`, `getAndIncrement()`, `onError()`, `cancel()`, `onComplete()`, `innerComplete()`, `innerError()`, `InnerConsumer()`, `dispose()`, `isDisposed()`
- **`FlowableFlatMapCompletableCompletable`** — 16 function(s): `FlowableFlatMapCompletableCompletable()`, `subscribeActual()`, `fuseToFlowable()`, `FlatMapCompletableMainSubscriber()`, `lazySet()`, `onSubscribe()`, `if()`, `onNext()`, `getAndIncrement()`, `onError()`, `dispose()`, `onComplete()`, `isDisposed()`, `innerComplete()`, `innerError()`, `InnerObserver()`
- **`FlowableFlatMapMaybe`** — 24 function(s): `FlowableFlatMapMaybe()`, `super()`, `subscribeActual()`, `FlatMapMaybeSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `drain()`, `onComplete()`, `cancel()`, `request()`, `innerSuccess()`, `synchronized()`, `drainLoop()`, `getOrCreateQueue()`, `innerError()`, `innerComplete()`, `clear()`, `while()`, `InnerObserver()`, `onSuccess()`, `isDisposed()`, `dispose()`
- **`FlowableFlatMapPublisher`** — 3 function(s): `FlowableFlatMapPublisher()`, `subscribeActual()`, `if()`
- **`FlowableFlatMapSingle`** — 23 function(s): `FlowableFlatMapSingle()`, `super()`, `subscribeActual()`, `FlatMapSingleSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `drain()`, `onComplete()`, `cancel()`, `request()`, `innerSuccess()`, `synchronized()`, `drainLoop()`, `getOrCreateQueue()`, `innerError()`, `clear()`, `while()`, `InnerObserver()`, `onSuccess()`, `isDisposed()`, `dispose()`
- **`FlowableFlattenIterable`** — 20 function(s): `FlowableFlattenIterable()`, `super()`, `subscribeActual()`, `if()`, `FlattenIterableSubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `drain()`, `onComplete()`, `request()`, `cancel()`, `while()`, `consumedOne()`, `checkTerminated()`, `clear()`, `isEmpty()`, `poll()`, `requestFusion()`, `return()`
- **`FlowableFromArray`** — 18 function(s): `FlowableFromArray()`, `subscribeActual()`, `if()`, `fastPath()`, `requestFusion()`, `slowPath()`, `BaseArraySubscription()`, `poll()`, `return()`, `isEmpty()`, `clear()`, `request()`, `cancel()`, `ArraySubscription()`, `super()`, `for()`, `while()`, `ArrayConditionalSubscription()`
- **`FlowableFromCallable`** — 5 function(s): `FlowableFromCallable()`, `subscribeActual()`, `if()`, `call()`, `return()`
- **`FlowableFromFuture`** — 3 function(s): `FlowableFromFuture()`, `subscribeActual()`, `if()`
- **`FlowableFromIterable`** — 18 function(s): `FlowableFromIterable()`, `subscribeActual()`, `subscribe()`, `if()`, `fastPath()`, `requestFusion()`, `slowPath()`, `BaseRangeSubscription()`, `poll()`, `return()`, `isEmpty()`, `clear()`, `request()`, `cancel()`, `IteratorSubscription()`, `super()`, `while()`, `IteratorConditionalSubscription()`
- **`FlowableFromObservable`** — 9 function(s): `FlowableFromObservable()`, `subscribeActual()`, `request()`, `SubscriberObserver()`, `onComplete()`, `onError()`, `onNext()`, `onSubscribe()`, `cancel()`
- **`FlowableFromPublisher`** — 2 function(s): `FlowableFromPublisher()`, `subscribeActual()`
- **`FlowableGenerate`** — 11 function(s): `FlowableGenerate()`, `subscribeActual()`, `GeneratorSubscription()`, `request()`, `if()`, `while()`, `dispose()`, `onError()`, `cancel()`, `onNext()`, `onComplete()`
- **`FlowableGroupBy`** — 27 function(s): `FlowableGroupBy()`, `super()`, `subscribeActual()`, `if()`, `GroupBySubscriber()`, `onSubscribe()`, `onNext()`, `completeEvictions()`, `drain()`, `onError()`, `while()`, `onComplete()`, `request()`, `cancel()`, `drainFused()`, `drainNormal()`, `checkTerminated()`, `requestFusion()`, `poll()`, `clear()`, `isEmpty()`, `EvictionAction()`, `accept()`, `createWith()`, `GroupedUnicast()`, `State()`, `subscribe()`
- **`FlowableGroupJoin`** — 27 function(s): `innerClose()`, `innerCloseError()`, `innerComplete()`, `innerError()`, `innerValue()`, `FlowableGroupJoin()`, `super()`, `subscribeActual()`, `GroupJoinSubscription()`, `request()`, `if()`, `cancel()`, `cancelAll()`, `errorAll()`, `while()`, `fail()`, `drain()`, `synchronized()`, `LeftRightSubscriber()`, `dispose()`, `isDisposed()`, `get()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `LeftRightEndSubscriber()`
- **`FlowableHide`** — 11 function(s): `FlowableHide()`, `super()`, `subscribeActual()`, `HideSubscriber()`, `request()`, `cancel()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`
- **`FlowableIgnoreElements`** — 17 function(s): `FlowableIgnoreElements()`, `super()`, `subscribeActual()`, `clear()`, `isEmpty()`, `onNext()`, `poll()`, `request()`, `requestFusion()`, `IgnoreElementsSubscriber()`, `onSubscribe()`, `if()`, `onError()`, `onComplete()`, `offer()`, `UnsupportedOperationException()`, `cancel()`
- **`FlowableIgnoreElementsCompletable`** — 11 function(s): `FlowableIgnoreElementsCompletable()`, `subscribeActual()`, `fuseToFlowable()`, `onNext()`, `IgnoreElementsSubscriber()`, `onSubscribe()`, `if()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`FlowableInternalHelper`** — 34 function(s): `FlowableInternalHelper()`, `IllegalStateException()`, `apply()`, `SimpleGenerator()`, `simpleGenerator()`, `SimpleBiGenerator()`, `simpleBiGenerator()`, `ItemDelayFunction()`, `FlowableTakePublisher()`, `itemDelay()`, `SubscriberOnNext()`, `accept()`, `SubscriberOnError()`, `SubscriberOnComplete()`, `run()`, `subscriberOnNext()`, `subscriberOnError()`, `subscriberOnComplete()`, `FlatMapWithCombinerInner()`, `FlatMapWithCombinerOuter()`, `FlowableMapPublisher()`, `flatMapWithCombiner()`, `FlatMapIntoIterable()`, `FlowableFromIterable()`, `flatMapIntoIterable()`, `replayCallable()`, `ReplayCallable()`, `BufferedReplayCallable()`, `BufferedTimedReplay()`, `TimedReplay()`, `replayFunction()`, `ReplayFunction()`, `ZipIterableFunction()`, `call()`
- **`FlowableInterval`** — 8 function(s): `FlowableInterval()`, `subscribeActual()`, `if()`, `IntervalSubscriber()`, `request()`, `cancel()`, `run()`, `setResource()`
- **`FlowableIntervalRange`** — 9 function(s): `FlowableIntervalRange()`, `subscribeActual()`, `if()`, `IntervalRangeSubscriber()`, `request()`, `cancel()`, `run()`, `decrementAndGet()`, `setResource()`
- **`FlowableJoin`** — 18 function(s): `FlowableJoin()`, `super()`, `subscribeActual()`, `JoinSubscription()`, `request()`, `if()`, `cancel()`, `cancelAll()`, `errorAll()`, `fail()`, `drain()`, `while()`, `innerError()`, `innerComplete()`, `innerValue()`, `synchronized()`, `innerClose()`, `innerCloseError()`
- **`FlowableJust`** — 3 function(s): `FlowableJust()`, `subscribeActual()`, `call()`
- **`FlowableLastMaybe`** — 10 function(s): `FlowableLastMaybe()`, `subscribeActual()`, `LastSubscriber()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`
- **`FlowableLastSingle`** — 10 function(s): `FlowableLastSingle()`, `subscribeActual()`, `LastSubscriber()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`
- **`FlowableLift`** — 5 function(s): `FlowableLift()`, `super()`, `subscribeActual()`, `if()`, `NullPointerException()`
- **`FlowableLimit`** — 12 function(s): `FlowableLimit()`, `super()`, `subscribeActual()`, `LimitSubscriber()`, `lazySet()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`
- **`FlowableMap`** — 13 function(s): `FlowableMap()`, `super()`, `subscribeActual()`, `if()`, `MapSubscriber()`, `onNext()`, `fail()`, `requestFusion()`, `transitiveBoundaryFusion()`, `poll()`, `return()`, `MapConditionalSubscriber()`, `tryOnNext()`
- **`FlowableMapNotification`** — 8 function(s): `FlowableMapNotification()`, `super()`, `subscribeActual()`, `MapNotificationSubscriber()`, `onNext()`, `onError()`, `complete()`, `onComplete()`
- **`FlowableMapPublisher`** — 2 function(s): `FlowableMapPublisher()`, `subscribeActual()`
- **`FlowableMaterialize`** — 10 function(s): `FlowableMaterialize()`, `super()`, `subscribeActual()`, `MaterializeSubscriber()`, `onNext()`, `onError()`, `complete()`, `onComplete()`, `onDrop()`, `if()`
- **`FlowableMergeWithCompletable`** — 14 function(s): `FlowableMergeWithCompletable()`, `super()`, `subscribeActual()`, `MergeWithSubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `if()`, `request()`, `cancel()`, `otherError()`, `otherComplete()`, `OtherObserver()`
- **`FlowableMergeWithMaybe`** — 20 function(s): `FlowableMergeWithMaybe()`, `super()`, `subscribeActual()`, `MergeWithObserver()`, `onSubscribe()`, `onNext()`, `if()`, `getOrCreateQueue()`, `drainLoop()`, `onError()`, `drain()`, `onComplete()`, `request()`, `cancel()`, `otherSuccess()`, `otherError()`, `otherComplete()`, `while()`, `OtherObserver()`, `onSuccess()`
- **`FlowableMergeWithSingle`** — 19 function(s): `FlowableMergeWithSingle()`, `super()`, `subscribeActual()`, `MergeWithObserver()`, `onSubscribe()`, `onNext()`, `if()`, `getOrCreateQueue()`, `drainLoop()`, `onError()`, `drain()`, `onComplete()`, `request()`, `cancel()`, `otherSuccess()`, `otherError()`, `while()`, `OtherObserver()`, `onSuccess()`
- **`FlowableNever`** — 2 function(s): `FlowableNever()`, `subscribeActual()`
- **`FlowableObserveOn`** — 24 function(s): `FlowableObserveOn()`, `super()`, `subscribeActual()`, `if()`, `runAsync()`, `runBackfused()`, `runSync()`, `BaseObserveOnSubscriber()`, `onNext()`, `trySchedule()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `run()`, `checkTerminated()`, `clear()`, `requestFusion()`, `isEmpty()`, `ObserveOnSubscriber()`, `onSubscribe()`, `while()`, `poll()`, `ObserveOnConditionalSubscriber()`
- **`FlowableOnBackpressureBuffer`** — 18 function(s): `FlowableOnBackpressureBuffer()`, `super()`, `subscribeActual()`, `BackpressureBufferSubscriber()`, `if()`, `onSubscribe()`, `onNext()`, `onError()`, `drain()`, `onComplete()`, `request()`, `cancel()`, `while()`, `checkTerminated()`, `requestFusion()`, `poll()`, `clear()`, `isEmpty()`
- **`FlowableOnBackpressureBufferStrategy`** — 16 function(s): `FlowableOnBackpressureBufferStrategy()`, `super()`, `subscribeActual()`, `OnBackpressureBufferStrategySubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `synchronized()`, `switch()`, `onError()`, `drain()`, `onComplete()`, `request()`, `cancel()`, `clear()`, `while()`
- **`FlowableOnBackpressureDrop`** — 12 function(s): `accept()`, `FlowableOnBackpressureDrop()`, `super()`, `subscribeActual()`, `BackpressureDropSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `cancel()`, `onError()`, `onComplete()`, `request()`
- **`FlowableOnBackpressureError`** — 11 function(s): `FlowableOnBackpressureError()`, `super()`, `subscribeActual()`, `BackpressureErrorSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`
- **`FlowableOnBackpressureLatest`** — 14 function(s): `FlowableOnBackpressureLatest()`, `super()`, `subscribeActual()`, `BackpressureLatestSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `drain()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `while()`, `checkTerminated()`
- **`FlowableOnErrorNext`** — 11 function(s): `FlowableOnErrorNext()`, `super()`, `subscribeActual()`, `OnErrorNextSubscriber()`, `onSubscribe()`, `setSubscription()`, `onNext()`, `if()`, `onError()`, `produced()`, `onComplete()`
- **`FlowableOnErrorReturn`** — 8 function(s): `FlowableOnErrorReturn()`, `super()`, `subscribeActual()`, `OnErrorReturnSubscriber()`, `onNext()`, `onError()`, `complete()`, `onComplete()`
- **`FlowablePublish`** — 24 function(s): `create()`, `FlowablePublish()`, `source()`, `subscribeActual()`, `connect()`, `while()`, `if()`, `PublishSubscriber()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `dispatch()`, `onNext()`, `onError()`, `onComplete()`, `add()`, `remove()`, `checkTerminated()`, `for()`, `InnerSubscriber()`, `request()`, `cancel()`, `FlowablePublisher()`, `subscribe()`
- **`FlowablePublishMulticast`** — 24 function(s): `FlowablePublishMulticast()`, `super()`, `subscribeActual()`, `OutputCanceller()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `MulticastProcessor()`, `drain()`, `dispose()`, `isDisposed()`, `add()`, `remove()`, `while()`, `errorAll()`, `completeAll()`, `for()`, `MulticastSubscription()`, `isCancelled()`, `get()`
- **`FlowableRange`** — 17 function(s): `FlowableRange()`, `subscribeActual()`, `if()`, `fastPath()`, `requestFusion()`, `slowPath()`, `BaseRangeSubscription()`, `poll()`, `isEmpty()`, `clear()`, `request()`, `cancel()`, `RangeSubscription()`, `super()`, `for()`, `while()`, `RangeConditionalSubscription()`
- **`FlowableRangeLong`** — 17 function(s): `FlowableRangeLong()`, `subscribeActual()`, `if()`, `fastPath()`, `requestFusion()`, `slowPath()`, `BaseRangeSubscription()`, `poll()`, `isEmpty()`, `clear()`, `request()`, `cancel()`, `RangeSubscription()`, `super()`, `for()`, `while()`, `RangeConditionalSubscription()`
- **`FlowableReduce`** — 11 function(s): `FlowableReduce()`, `super()`, `subscribeActual()`, `ReduceSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `complete()`, `cancel()`
- **`FlowableReduceMaybe`** — 12 function(s): `FlowableReduceMaybe()`, `source()`, `fuseToFlowable()`, `subscribeActual()`, `ReduceSubscriber()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`
- **`FlowableReduceSeedSingle`** — 10 function(s): `FlowableReduceSeedSingle()`, `subscribeActual()`, `ReduceSeedObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`FlowableReduceWithSingle`** — 2 function(s): `FlowableReduceWithSingle()`, `subscribeActual()`
- **`FlowableRefCount`** — 17 function(s): `FlowableRefCount()`, `this()`, `subscribeActual()`, `synchronized()`, `if()`, `cancel()`, `timeout()`, `terminated()`, `RefConnection()`, `run()`, `accept()`, `RefCountSubscriber()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `onSubscribe()`
- **`FlowableRepeat`** — 11 function(s): `FlowableRepeat()`, `super()`, `subscribeActual()`, `RepeatSubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `if()`, `subscribeNext()`, `while()`
- **`FlowableRepeatUntil`** — 11 function(s): `FlowableRepeatUntil()`, `super()`, `subscribeActual()`, `RepeatSubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `if()`, `subscribeNext()`, `while()`
- **`FlowableRepeatWhen`** — 17 function(s): `FlowableRepeatWhen()`, `super()`, `subscribeActual()`, `WhenReceiver()`, `onSubscribe()`, `onNext()`, `if()`, `while()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `WhenSourceSubscriber()`, `setSubscription()`, `again()`, `produced()`, `RepeatWhenSubscriber()`
- **`FlowableReplay`** — 67 function(s): `complete()`, `error()`, `next()`, `replay()`, `multicastSelector()`, `MulticastFlowable()`, `observeOn()`, `createFrom()`, `create()`, `if()`, `FlowableReplay()`, `source()`, `subscribeActual()`, `resetIf()`, `connect()`, `while()`, `ReplaySubscriber()`, `isDisposed()`, `dispose()`, `add()`, `NullPointerException()`, `remove()`, `onSubscribe()`, `manageRequests()`, `for()`, `onNext()`, `onError()`, `onComplete()`, `InnerSubscription()`, `request()`, `produced()`, `get()`, `cancel()`, `index()`, `return()`, `UnboundedReplayBuffer()`, `super()`, `synchronized()`, `Node()`, `enterTransform()`, `leaveTransform()`, `truncate()`, `BoundedReplayBuffer()`, `set()`, `addLast()`, `removeFirst()`, `IllegalStateException()`, `setFirst()`, `removeSome()`, `truncateFinal()`, `trimHead()`, `collect()`, `hasError()`, `hasCompleted()`, `getHead()`, `SizeBoundReplayBuffer()`, `SizeAndTimeBoundReplayBuffer()`, `Timed()`, `DisposableConsumer()`, `accept()`, `ConnectableFlowableReplay()`, `ReplayBufferTask()`, `call()`, `ScheduledReplayBufferTask()`, `ReplayPublisher()`, `subscribe()`, `DefaultUnboundedFactory()`
- **`FlowableRetryBiPredicate`** — 11 function(s): `FlowableRetryBiPredicate()`, `super()`, `subscribeActual()`, `RetryBiSubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `if()`, `subscribeNext()`, `onComplete()`, `while()`
- **`FlowableRetryPredicate`** — 11 function(s): `FlowableRetryPredicate()`, `super()`, `subscribeActual()`, `RetrySubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `if()`, `subscribeNext()`, `onComplete()`, `while()`
- **`FlowableRetryWhen`** — 7 function(s): `FlowableRetryWhen()`, `super()`, `subscribeActual()`, `RetryWhenSubscriber()`, `onError()`, `again()`, `onComplete()`
- **`FlowableSamplePublisher`** — 22 function(s): `FlowableSamplePublisher()`, `subscribeActual()`, `if()`, `completeMain()`, `completeOther()`, `run()`, `SamplePublisherSubscriber()`, `onSubscribe()`, `onNext()`, `lazySet()`, `onError()`, `onComplete()`, `setOther()`, `request()`, `cancel()`, `error()`, `complete()`, `emit()`, `SamplerSubscriber()`, `SampleMainNoLast()`, `super()`, `SampleMainEmitLast()`
- **`FlowableSampleTimed`** — 18 function(s): `FlowableSampleTimed()`, `super()`, `subscribeActual()`, `if()`, `complete()`, `SampleTimedSubscriber()`, `onSubscribe()`, `onNext()`, `lazySet()`, `onError()`, `cancelTimer()`, `onComplete()`, `request()`, `cancel()`, `emit()`, `SampleTimedNoLast()`, `run()`, `SampleTimedEmitLast()`
- **`FlowableScalarXMap`** — 7 function(s): `FlowableScalarXMap()`, `IllegalStateException()`, `tryScalarXMapSubscribe()`, `if()`, `scalarXMap()`, `ScalarXMapFlowable()`, `subscribeActual()`
- **`FlowableScan`** — 11 function(s): `FlowableScan()`, `super()`, `subscribeActual()`, `ScanSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`
- **`FlowableScanSeed`** — 13 function(s): `FlowableScanSeed()`, `super()`, `subscribeActual()`, `ScanSeedSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `drain()`, `onError()`, `onComplete()`, `cancel()`, `request()`, `while()`
- **`FlowableSequenceEqual`** — 20 function(s): `drain()`, `innerError()`, `FlowableSequenceEqual()`, `subscribeActual()`, `EqualCoordinator()`, `super()`, `subscribe()`, `cancel()`, `if()`, `cancelAndClear()`, `while()`, `complete()`, `EqualSubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `get()`, `clear()`
- **`FlowableSequenceEqualSingle`** — 12 function(s): `FlowableSequenceEqualSingle()`, `subscribeActual()`, `fuseToFlowable()`, `EqualCoordinator()`, `subscribe()`, `dispose()`, `if()`, `isDisposed()`, `cancelAndClear()`, `drain()`, `while()`, `innerError()`
- **`FlowableSerialized`** — 3 function(s): `FlowableSerialized()`, `super()`, `subscribeActual()`
- **`FlowableSingle`** — 11 function(s): `FlowableSingle()`, `super()`, `subscribeActual()`, `SingleElementSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `complete()`, `cancel()`
- **`FlowableSingleMaybe`** — 11 function(s): `FlowableSingleMaybe()`, `subscribeActual()`, `fuseToFlowable()`, `SingleElementSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`FlowableSingleSingle`** — 11 function(s): `FlowableSingleSingle()`, `subscribeActual()`, `fuseToFlowable()`, `SingleElementSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`FlowableSkip`** — 11 function(s): `FlowableSkip()`, `super()`, `subscribeActual()`, `SkipSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`
- **`FlowableSkipLast`** — 12 function(s): `FlowableSkipLast()`, `super()`, `subscribeActual()`, `SkipLastSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `offer()`, `onError()`, `onComplete()`, `request()`, `cancel()`
- **`FlowableSkipLastTimed`** — 14 function(s): `FlowableSkipLastTimed()`, `super()`, `subscribeActual()`, `SkipLastTimedSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `drain()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `while()`, `checkTerminated()`
- **`FlowableSkipUntil`** — 14 function(s): `FlowableSkipUntil()`, `super()`, `subscribeActual()`, `SkipUntilMainSubscriber()`, `onSubscribe()`, `onNext()`, `if()`, `tryOnNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `OtherSubscriber()`, `get()`
- **`FlowableSkipWhile`** — 11 function(s): `FlowableSkipWhile()`, `super()`, `subscribeActual()`, `SkipWhileSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`
- **`FlowableSubscribeOn`** — 15 function(s): `FlowableSubscribeOn()`, `super()`, `subscribeActual()`, `SubscribeOnSubscriber()`, `run()`, `lazySet()`, `onSubscribe()`, `if()`, `requestUpstream()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `Request()`
- **`FlowableSwitchIfEmpty`** — 9 function(s): `FlowableSwitchIfEmpty()`, `super()`, `subscribeActual()`, `SwitchIfEmptySubscriber()`, `onSubscribe()`, `onNext()`, `if()`, `onError()`, `onComplete()`
- **`FlowableSwitchMap`** — 15 function(s): `FlowableSwitchMap()`, `super()`, `subscribeActual()`, `if()`, `SwitchMapSubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `disposeInner()`, `drain()`, `onComplete()`, `request()`, `cancel()`, `while()`, `SwitchMapInnerSubscriber()`
- **`FlowableTake`** — 11 function(s): `FlowableTake()`, `super()`, `subscribeActual()`, `TakeSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onComplete()`, `onError()`, `request()`, `cancel()`
- **`FlowableTakeLast`** — 15 function(s): `FlowableTakeLast()`, `super()`, `subscribeActual()`, `TakeLastSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `poll()`, `offer()`, `onError()`, `onComplete()`, `drain()`, `request()`, `cancel()`, `while()`
- **`FlowableTakeLastOne`** — 11 function(s): `FlowableTakeLastOne()`, `super()`, `subscribeActual()`, `TakeLastOneSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `complete()`, `cancel()`
- **`FlowableTakeLastTimed`** — 15 function(s): `FlowableTakeLastTimed()`, `super()`, `subscribeActual()`, `TakeLastTimedSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `trim()`, `onError()`, `drain()`, `onComplete()`, `while()`, `request()`, `cancel()`, `checkTerminated()`
- **`FlowableTakePublisher`** — 2 function(s): `FlowableTakePublisher()`, `subscribeActual()`
- **`FlowableTakeUntil`** — 11 function(s): `FlowableTakeUntil()`, `super()`, `subscribeActual()`, `TakeUntilMainSubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `OtherSubscriber()`
- **`FlowableTakeUntilPredicate`** — 11 function(s): `FlowableTakeUntilPredicate()`, `super()`, `subscribeActual()`, `InnerSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`
- **`FlowableTakeWhile`** — 11 function(s): `FlowableTakeWhile()`, `super()`, `subscribeActual()`, `TakeWhileSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`
- **`FlowableThrottleFirstTimed`** — 12 function(s): `FlowableThrottleFirstTimed()`, `super()`, `subscribeActual()`, `DebounceTimedSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `cancel()`, `run()`, `onError()`, `onComplete()`, `request()`
- **`FlowableThrottleLatest`** — 14 function(s): `FlowableThrottleLatest()`, `super()`, `subscribeActual()`, `ThrottleLatestSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `drain()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `run()`, `while()`
- **`FlowableTimeInterval`** — 11 function(s): `FlowableTimeInterval()`, `super()`, `subscribeActual()`, `TimeIntervalSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`
- **`FlowableTimeout`** — 23 function(s): `onTimeoutError()`, `FlowableTimeout()`, `super()`, `subscribeActual()`, `if()`, `TimeoutSubscriber()`, `onSubscribe()`, `onNext()`, `getAndSet()`, `startFirstTimeout()`, `onError()`, `onComplete()`, `onTimeout()`, `request()`, `cancel()`, `TimeoutFallbackSubscriber()`, `setSubscription()`, `produced()`, `TimeoutConsumer()`, `lazySet()`, `dispose()`, `isDisposed()`, `get()`
- **`FlowableTimeoutTimed`** — 19 function(s): `onTimeout()`, `FlowableTimeoutTimed()`, `super()`, `subscribeActual()`, `if()`, `TimeoutSubscriber()`, `onSubscribe()`, `onNext()`, `startTimeout()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `TimeoutTask()`, `run()`, `TimeoutFallbackSubscriber()`, `setSubscription()`, `produced()`, `FallbackSubscriber()`
- **`FlowableTimer`** — 9 function(s): `FlowableTimer()`, `subscribeActual()`, `TimerSubscriber()`, `request()`, `if()`, `cancel()`, `run()`, `lazySet()`, `setResource()`
- **`FlowableToList`** — 11 function(s): `FlowableToList()`, `super()`, `subscribeActual()`, `ToListSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `complete()`, `cancel()`
- **`FlowableToListSingle`** — 12 function(s): `FlowableToListSingle()`, `this()`, `subscribeActual()`, `fuseToFlowable()`, `ToListSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`FlowableUnsubscribeOn`** — 13 function(s): `FlowableUnsubscribeOn()`, `super()`, `subscribeActual()`, `UnsubscribeSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `Cancellation()`, `run()`
- **`FlowableUsing`** — 11 function(s): `FlowableUsing()`, `subscribeActual()`, `UsingSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `disposeAfter()`, `onComplete()`, `request()`, `cancel()`
- **`FlowableWindow`** — 18 function(s): `FlowableWindow()`, `super()`, `subscribeActual()`, `if()`, `WindowExactSubscriber()`, `onSubscribe()`, `onNext()`, `getAndIncrement()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `run()`, `WindowSkipSubscriber()`, `WindowOverlapSubscriber()`, `drain()`, `while()`, `checkTerminated()`
- **`FlowableWindowBoundary`** — 18 function(s): `FlowableWindowBoundary()`, `super()`, `subscribeActual()`, `WindowBoundaryMainSubscriber()`, `onSubscribe()`, `onNext()`, `drain()`, `onError()`, `if()`, `onComplete()`, `cancel()`, `request()`, `run()`, `innerNext()`, `innerError()`, `innerComplete()`, `while()`, `WindowBoundaryInnerSubscriber()`
- **`FlowableWindowBoundarySelector`** — 23 function(s): `FlowableWindowBoundarySelector()`, `super()`, `subscribeActual()`, `accept()`, `WindowBoundaryMainSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `while()`, `drainLoop()`, `onError()`, `onComplete()`, `error()`, `request()`, `requested()`, `cancel()`, `dispose()`, `produced()`, `open()`, `close()`, `WindowOperation()`, `OperatorWindowBoundaryOpenSubscriber()`, `OperatorWindowBoundaryCloseSubscriber()`
- **`FlowableWindowBoundarySupplier`** — 20 function(s): `FlowableWindowBoundarySupplier()`, `super()`, `subscribeActual()`, `WindowBoundaryMainSubscriber()`, `onSubscribe()`, `if()`, `drain()`, `onNext()`, `onError()`, `disposeBoundary()`, `onComplete()`, `cancel()`, `request()`, `run()`, `innerNext()`, `innerError()`, `innerComplete()`, `while()`, `WindowBoundaryInnerSubscriber()`, `dispose()`
- **`FlowableWindowTimed`** — 23 function(s): `FlowableWindowTimed()`, `super()`, `subscribeActual()`, `if()`, `WindowExactUnboundedSubscriber()`, `onSubscribe()`, `produced()`, `onNext()`, `drainLoop()`, `onError()`, `dispose()`, `onComplete()`, `request()`, `requested()`, `cancel()`, `run()`, `while()`, `WindowExactBoundedSubscriber()`, `ConsumerIndexHolder()`, `WindowSkipSubscriber()`, `complete()`, `SubjectWork()`, `Completion()`
- **`FlowableWithLatestFrom`** — 15 function(s): `FlowableWithLatestFrom()`, `super()`, `subscribeActual()`, `WithLatestFromSubscriber()`, `onSubscribe()`, `onNext()`, `if()`, `tryOnNext()`, `cancel()`, `onError()`, `onComplete()`, `request()`, `setOther()`, `otherError()`, `FlowableWithLatestSubscriber()`
- **`FlowableWithLatestFromMany`** — 25 function(s): `FlowableWithLatestFromMany()`, `super()`, `subscribeActual()`, `if()`, `for()`, `FlowableMap()`, `WithLatestFromSubscriber()`, `subscribe()`, `onSubscribe()`, `onNext()`, `tryOnNext()`, `while()`, `cancel()`, `onError()`, `cancelAllBut()`, `onComplete()`, `request()`, `innerNext()`, `innerError()`, `innerComplete()`, `WithLatestInnerSubscriber()`, `dispose()`, `SingletonArrayFunc()`, `apply()`, `return()`
- **`FlowableZip`** — 18 function(s): `FlowableZip()`, `subscribeActual()`, `if()`, `for()`, `ZipCoordinator()`, `subscribe()`, `request()`, `drain()`, `cancel()`, `cancelAll()`, `error()`, `while()`, `ZipSubscriber()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `get()`
- **`FlowableZipIterable`** — 12 function(s): `FlowableZipIterable()`, `super()`, `subscribeActual()`, `if()`, `ZipIterableSubscriber()`, `onSubscribe()`, `onNext()`, `error()`, `onError()`, `onComplete()`, `request()`, `cancel()`

</details>

### Package `io.reactivex.internal.operators.maybe`  (73 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AbstractMaybeWithUpstream` | class | Maybe<R> implements HasUpstreamMaybeSource<T> | 21 | 2 |
| `MaybeAmb` | class | Maybe<T> | 128 | 19 |
| `MaybeCache` | class | Maybe<T> implements MaybeObserver<T> | 163 | 34 |
| `MaybeCallbackObserver` | class | AtomicReference<Disposable> implements MaybeObserver<T>, Disposable, LambdaConsumerIntr... | 81 | 11 |
| `MaybeConcatArray` | class | Flowable<T> | 125 | 22 |
| `MaybeConcatArrayDelayError` | class | Flowable<T> | 137 | 25 |
| `MaybeConcatIterable` | class | Flowable<T> | 142 | 22 |
| `MaybeContains` | class | Single<Boolean> implements HasUpstreamMaybeSource<T> | 81 | 11 |
| `MaybeCount` | class | Single<Long> implements HasUpstreamMaybeSource<T> | 76 | 11 |
| `MaybeCreate` | class | Maybe<T> | 134 | 23 |
| `MaybeDefer` | class | Maybe<T> | 29 | 2 |
| `MaybeDelay` | class | AbstractMaybeWithUpstream<T, T> | 100 | 18 |
| `MaybeDelayOtherPublisher` | class | AbstractMaybeWithUpstream<T, T> | 137 | 26 |
| `MaybeDelaySubscriptionOtherPublisher` | class | AbstractMaybeWithUpstream<T, T> | 125 | 22 |
| `MaybeDelayWithCompletable` | class | Maybe<T> | 97 | 14 |
| `MaybeDetach` | class | AbstractMaybeWithUpstream<T, T> | 79 | 14 |
| `MaybeDoAfterSuccess` | class | AbstractMaybeWithUpstream<T, T> | 76 | 11 |
| `MaybeDoFinally` | class | AbstractMaybeWithUpstream<T, T> | 87 | 17 |
| `MaybeDoOnEvent` | class | AbstractMaybeWithUpstream<T, T> | 92 | 11 |
| `MaybeDoOnTerminate` | class | Maybe<T> | 73 | 7 |
| `MaybeEmpty` | class | Maybe<Object> implements ScalarCallable<Object> | 22 | 2 |
| `MaybeEqualSingle` | class | Single<Boolean> | 134 | 19 |
| `MaybeError` | class | Maybe<T> | 21 | 2 |
| `MaybeErrorCallable` | class | Maybe<T> | 30 | 2 |
| `MaybeFilter` | class | AbstractMaybeWithUpstream<T, T> | 80 | 12 |
| `MaybeFilterSingle` | class | Maybe<T> | 78 | 10 |
| `MaybeFlatMapBiSelector` | class | AbstractMaybeWithUpstream<T, R> | 121 | 17 |
| `MaybeFlatMapCompletable` | class | Completable | 83 | 11 |
| `MaybeFlatMapIterableFlowable` | class | Flowable<R> | 219 | 39 |
| `MaybeFlatMapIterableObservable` | class | Observable<R> | 153 | 22 |
| `MaybeFlatMapNotification` | class | AbstractMaybeWithUpstream<T, R> | 124 | 16 |
| `MaybeFlatMapSingle` | class | Single<R> | 110 | 16 |
| `MaybeFlatMapSingleElement` | class | Maybe<R> | 105 | 15 |
| `MaybeFlatten` | class | AbstractMaybeWithUpstream<T, R> | 108 | 17 |
| `MaybeFromAction` | class | Maybe<T> implements Callable<T> | 49 | 6 |
| `MaybeFromCallable` | class | Maybe<T> implements Callable<T> | 51 | 7 |
| `MaybeFromCompletable` | class | Maybe<T> implements HasUpstreamCompletableSource | 70 | 10 |
| `MaybeFromFuture` | class | Maybe<T> | 59 | 8 |
| `MaybeFromRunnable` | class | Maybe<T> implements Callable<T> | 48 | 6 |
| `MaybeFromSingle` | class | Maybe<T> implements HasUpstreamSingleSource<T> | 70 | 10 |
| `MaybeHide` | class | AbstractMaybeWithUpstream<T, T> | 63 | 11 |
| `MaybeIgnoreElement` | class | AbstractMaybeWithUpstream<T, T> | 66 | 11 |
| `MaybeIgnoreElementCompletable` | class | Completable implements FuseToMaybe<T> | 78 | 11 |
| `MaybeIsEmpty` | class | AbstractMaybeWithUpstream<T, Boolean> | 62 | 11 |
| `MaybeIsEmptySingle` | class | Single<Boolean> implements HasUpstreamMaybeSource<T>, FuseToMaybe<Boolean> | 84 | 12 |
| `MaybeJust` | class | Maybe<T> implements ScalarCallable<T> | 27 | 3 |
| `MaybeLift` | class | AbstractMaybeWithUpstream<T, R> | 29 | 3 |
| `MaybeMap` | class | AbstractMaybeWithUpstream<T, R> | 78 | 11 |
| `MaybeMaterialize` | class | Single<Notification<T>> | 24 | 2 |
| `MaybeMergeArray` | class | Flowable<T> | 388 | 83 |
| `MaybeNever` | class | Maybe<Object> | 16 | 1 |
| `MaybeObserveOn` | class | AbstractMaybeWithUpstream<T, T> | 89 | 14 |
| `MaybeOnErrorComplete` | class | AbstractMaybeWithUpstream<T, T> | 79 | 12 |
| `MaybeOnErrorNext` | class | AbstractMaybeWithUpstream<T, T> | 117 | 17 |
| `MaybeOnErrorReturn` | class | AbstractMaybeWithUpstream<T, T> | 76 | 11 |
| `MaybePeek` | class | AbstractMaybeWithUpstream<T, T> | 145 | 22 |
| `MaybeSubscribeOn` | class | AbstractMaybeWithUpstream<T, T> | 85 | 12 |
| `MaybeSwitchIfEmpty` | class | AbstractMaybeWithUpstream<T, T> | 102 | 17 |
| `MaybeSwitchIfEmptySingle` | class | Single<T> implements HasUpstreamMaybeSource<T> | 107 | 16 |
| `MaybeTakeUntilMaybe` | class | AbstractMaybeWithUpstream<T, T> | 124 | 22 |
| `MaybeTakeUntilPublisher` | class | AbstractMaybeWithUpstream<T, T> | 129 | 22 |
| `MaybeTimeoutMaybe` | class | AbstractMaybeWithUpstream<T, T> | 170 | 29 |
| `MaybeTimeoutPublisher` | class | AbstractMaybeWithUpstream<T, T> | 175 | 30 |
| `MaybeTimer` | class | Maybe<Long> | 59 | 7 |
| `MaybeToFlowable` | class | Flowable<T> implements HasUpstreamMaybeSource<T> | 69 | 12 |
| `MaybeToObservable` | class | Observable<T> implements HasUpstreamMaybeSource<T> | 74 | 16 |
| `MaybeToPublisher` | class | Function<MaybeSource<Object>, Publisher<Object>> | 20 | 3 |
| `MaybeToSingle` | class | Single<T> implements HasUpstreamMaybeSource<T> | 85 | 12 |
| `MaybeUnsafeCreate` | class | AbstractMaybeWithUpstream<T, T> | 17 | 3 |
| `MaybeUnsubscribeOn` | class | AbstractMaybeWithUpstream<T, T> | 78 | 13 |
| `MaybeUsing` | class | Maybe<T> | 182 | 28 |
| `MaybeZipArray` | class | Maybe<R> | 175 | 34 |
| `MaybeZipIterable` | class | Maybe<R> | 73 | 11 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.operators.maybe</code></b> (click to expand)</summary>

- **`AbstractMaybeWithUpstream`** — 2 function(s): `AbstractMaybeWithUpstream()`, `source()`
- **`MaybeAmb`** — 9 function(s): `MaybeAmb()`, `subscribeActual()`, `if()`, `for()`, `AmbMaybeObserver()`, `onSubscribe()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeCache`** — 16 function(s): `onSubscribe()`, `MaybeCache()`, `subscribeActual()`, `if()`, `remove()`, `onSuccess()`, `for()`, `onError()`, `onComplete()`, `add()`, `while()`, `CacheDisposable()`, `super()`, `dispose()`, `isDisposed()`, `get()`
- **`MaybeCallbackObserver`** — 9 function(s): `MaybeCallbackObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `lazySet()`, `onError()`, `onComplete()`, `hasCustomOnError()`
- **`MaybeConcatArray`** — 12 function(s): `MaybeConcatArray()`, `subscribeActual()`, `ConcatMaybeObserver()`, `request()`, `if()`, `drain()`, `cancel()`, `onSubscribe()`, `onSuccess()`, `onError()`, `onComplete()`, `while()`
- **`MaybeConcatArrayDelayError`** — 12 function(s): `MaybeConcatArrayDelayError()`, `subscribeActual()`, `ConcatMaybeObserver()`, `request()`, `if()`, `drain()`, `cancel()`, `onSubscribe()`, `onSuccess()`, `onError()`, `onComplete()`, `while()`
- **`MaybeConcatIterable`** — 12 function(s): `MaybeConcatIterable()`, `subscribeActual()`, `ConcatMaybeObserver()`, `request()`, `if()`, `drain()`, `cancel()`, `onSubscribe()`, `onSuccess()`, `onError()`, `onComplete()`, `while()`
- **`MaybeContains`** — 11 function(s): `MaybeContains()`, `source()`, `subscribeActual()`, `ContainsMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeCount`** — 11 function(s): `MaybeCount()`, `source()`, `subscribeActual()`, `CountMaybeObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`, `isDisposed()`, `dispose()`
- **`MaybeCreate`** — 13 function(s): `MaybeCreate()`, `subscribeActual()`, `Emitter()`, `onSuccess()`, `if()`, `onError()`, `tryOnError()`, `onComplete()`, `setDisposable()`, `setCancellable()`, `dispose()`, `isDisposed()`, `toString()`
- **`MaybeDefer`** — 2 function(s): `MaybeDefer()`, `subscribeActual()`
- **`MaybeDelay`** — 13 function(s): `MaybeDelay()`, `super()`, `subscribeActual()`, `DelayMaybeObserver()`, `run()`, `if()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `schedule()`, `onError()`, `onComplete()`
- **`MaybeDelayOtherPublisher`** — 15 function(s): `MaybeDelayOtherPublisher()`, `super()`, `subscribeActual()`, `DelayMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `subscribeNext()`, `onError()`, `onComplete()`, `OtherSubscriber()`, `onNext()`, `lazySet()`
- **`MaybeDelaySubscriptionOtherPublisher`** — 14 function(s): `MaybeDelaySubscriptionOtherPublisher()`, `super()`, `subscribeActual()`, `OtherSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `subscribeNext()`, `onError()`, `onComplete()`, `isDisposed()`, `dispose()`, `DelayMaybeObserver()`, `onSuccess()`
- **`MaybeDelayWithCompletable`** — 11 function(s): `MaybeDelayWithCompletable()`, `subscribeActual()`, `OtherObserver()`, `onSubscribe()`, `if()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `DelayWithMainObserver()`, `onSuccess()`
- **`MaybeDetach`** — 11 function(s): `MaybeDetach()`, `super()`, `subscribeActual()`, `DetachMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeDoAfterSuccess`** — 11 function(s): `MaybeDoAfterSuccess()`, `super()`, `subscribeActual()`, `DoAfterObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`MaybeDoFinally`** — 12 function(s): `MaybeDoFinally()`, `super()`, `subscribeActual()`, `DoFinallyObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `runFinally()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`MaybeDoOnEvent`** — 11 function(s): `MaybeDoOnEvent()`, `super()`, `subscribeActual()`, `DoOnEventMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeDoOnTerminate`** — 7 function(s): `MaybeDoOnTerminate()`, `subscribeActual()`, `DoOnTerminate()`, `onSubscribe()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeEmpty`** — 2 function(s): `call()`, `subscribeActual()`
- **`MaybeEqualSingle`** — 15 function(s): `MaybeEqualSingle()`, `subscribeActual()`, `EqualCoordinator()`, `super()`, `subscribe()`, `dispose()`, `isDisposed()`, `done()`, `if()`, `error()`, `EqualObserver()`, `onSubscribe()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeError`** — 2 function(s): `MaybeError()`, `subscribeActual()`
- **`MaybeErrorCallable`** — 2 function(s): `MaybeErrorCallable()`, `subscribeActual()`
- **`MaybeFilter`** — 11 function(s): `MaybeFilter()`, `super()`, `subscribeActual()`, `FilterMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeFilterSingle`** — 9 function(s): `MaybeFilterSingle()`, `subscribeActual()`, `FilterMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`
- **`MaybeFlatMapBiSelector`** — 12 function(s): `MaybeFlatMapBiSelector()`, `super()`, `subscribeActual()`, `FlatMapBiMainObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`, `InnerObserver()`
- **`MaybeFlatMapCompletable`** — 10 function(s): `MaybeFlatMapCompletable()`, `subscribeActual()`, `FlatMapCompletableObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `if()`, `onError()`, `onComplete()`
- **`MaybeFlatMapIterableFlowable`** — 17 function(s): `MaybeFlatMapIterableFlowable()`, `subscribeActual()`, `FlatMapIterableObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `drain()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `fastPath()`, `while()`, `requestFusion()`, `clear()`, `isEmpty()`, `poll()`
- **`MaybeFlatMapIterableObservable`** — 15 function(s): `MaybeFlatMapIterableObservable()`, `subscribeActual()`, `FlatMapIterableObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `while()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `requestFusion()`, `clear()`, `isEmpty()`, `poll()`
- **`MaybeFlatMapNotification`** — 12 function(s): `MaybeFlatMapNotification()`, `super()`, `subscribeActual()`, `FlatMapMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`, `InnerObserver()`
- **`MaybeFlatMapSingle`** — 11 function(s): `MaybeFlatMapSingle()`, `subscribeActual()`, `FlatMapMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`, `FlatMapSingleObserver()`
- **`MaybeFlatMapSingleElement`** — 11 function(s): `MaybeFlatMapSingleElement()`, `subscribeActual()`, `FlatMapMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`, `FlatMapSingleObserver()`
- **`MaybeFlatten`** — 12 function(s): `MaybeFlatten()`, `super()`, `subscribeActual()`, `FlatMapMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`, `InnerObserver()`
- **`MaybeFromAction`** — 4 function(s): `MaybeFromAction()`, `subscribeActual()`, `if()`, `call()`
- **`MaybeFromCallable`** — 4 function(s): `MaybeFromCallable()`, `subscribeActual()`, `if()`, `call()`
- **`MaybeFromCompletable`** — 10 function(s): `MaybeFromCompletable()`, `source()`, `subscribeActual()`, `FromCompletableObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onComplete()`, `onError()`
- **`MaybeFromFuture`** — 3 function(s): `MaybeFromFuture()`, `subscribeActual()`, `if()`
- **`MaybeFromRunnable`** — 4 function(s): `MaybeFromRunnable()`, `subscribeActual()`, `if()`, `call()`
- **`MaybeFromSingle`** — 10 function(s): `MaybeFromSingle()`, `source()`, `subscribeActual()`, `FromSingleObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`
- **`MaybeHide`** — 11 function(s): `MaybeHide()`, `super()`, `subscribeActual()`, `HideMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeIgnoreElement`** — 11 function(s): `MaybeIgnoreElement()`, `super()`, `subscribeActual()`, `IgnoreMaybeObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`, `isDisposed()`, `dispose()`
- **`MaybeIgnoreElementCompletable`** — 11 function(s): `MaybeIgnoreElementCompletable()`, `subscribeActual()`, `fuseToMaybe()`, `IgnoreMaybeObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`, `isDisposed()`, `dispose()`
- **`MaybeIsEmpty`** — 11 function(s): `MaybeIsEmpty()`, `super()`, `subscribeActual()`, `IsEmptyMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeIsEmptySingle`** — 12 function(s): `MaybeIsEmptySingle()`, `source()`, `fuseToMaybe()`, `subscribeActual()`, `IsEmptyMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeJust`** — 3 function(s): `MaybeJust()`, `subscribeActual()`, `call()`
- **`MaybeLift`** — 3 function(s): `MaybeLift()`, `super()`, `subscribeActual()`
- **`MaybeMap`** — 11 function(s): `MaybeMap()`, `super()`, `subscribeActual()`, `MapMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeMaterialize`** — 2 function(s): `MaybeMaterialize()`, `subscribeActual()`
- **`MaybeMergeArray`** — 31 function(s): `consumerIndex()`, `drop()`, `peek()`, `poll()`, `producerIndex()`, `MaybeMergeArray()`, `subscribeActual()`, `if()`, `for()`, `MergeMaybeObserver()`, `requestFusion()`, `isEmpty()`, `clear()`, `request()`, `drain()`, `cancel()`, `onSubscribe()`, `onSuccess()`, `onError()`, `onComplete()`, `isCancelled()`, `drainNormal()`, `while()`, `drainFused()`, `MpscFillOnceSimpleQueue()`, `super()`, `offer()`, `lazySet()`, `UnsupportedOperationException()`, `get()`, `ClqSimpleQueue()`
- **`MaybeNever`** — 1 function(s): `subscribeActual()`
- **`MaybeObserveOn`** — 12 function(s): `MaybeObserveOn()`, `super()`, `subscribeActual()`, `ObserveOnMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`, `run()`
- **`MaybeOnErrorComplete`** — 11 function(s): `MaybeOnErrorComplete()`, `super()`, `subscribeActual()`, `OnErrorCompleteMaybeObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`MaybeOnErrorNext`** — 12 function(s): `MaybeOnErrorNext()`, `super()`, `subscribeActual()`, `OnErrorNextMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`, `NextMaybeObserver()`
- **`MaybeOnErrorReturn`** — 11 function(s): `MaybeOnErrorReturn()`, `super()`, `subscribeActual()`, `OnErrorReturnMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybePeek`** — 13 function(s): `MaybePeek()`, `super()`, `subscribeActual()`, `MaybePeekObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onAfterTerminate()`, `onErrorInner()`, `onError()`, `onComplete()`
- **`MaybeSubscribeOn`** — 12 function(s): `MaybeSubscribeOn()`, `super()`, `subscribeActual()`, `SubscribeTask()`, `run()`, `SubscribeOnMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeSwitchIfEmpty`** — 12 function(s): `MaybeSwitchIfEmpty()`, `super()`, `subscribeActual()`, `SwitchIfEmptyMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`, `OtherMaybeObserver()`
- **`MaybeSwitchIfEmptySingle`** — 12 function(s): `MaybeSwitchIfEmptySingle()`, `source()`, `subscribeActual()`, `SwitchIfEmptyMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`, `OtherSingleObserver()`
- **`MaybeTakeUntilMaybe`** — 14 function(s): `MaybeTakeUntilMaybe()`, `super()`, `subscribeActual()`, `TakeUntilMainMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `if()`, `onError()`, `onComplete()`, `otherError()`, `otherComplete()`, `TakeUntilOtherMaybeObserver()`
- **`MaybeTakeUntilPublisher`** — 15 function(s): `MaybeTakeUntilPublisher()`, `super()`, `subscribeActual()`, `TakeUntilMainMaybeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `if()`, `onError()`, `onComplete()`, `otherError()`, `otherComplete()`, `TakeUntilOtherMaybeObserver()`, `onNext()`
- **`MaybeTimeoutMaybe`** — 15 function(s): `MaybeTimeoutMaybe()`, `super()`, `subscribeActual()`, `TimeoutMainMaybeObserver()`, `dispose()`, `if()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `onError()`, `onComplete()`, `otherError()`, `otherComplete()`, `TimeoutOtherMaybeObserver()`, `TimeoutFallbackMaybeObserver()`
- **`MaybeTimeoutPublisher`** — 17 function(s): `MaybeTimeoutPublisher()`, `super()`, `subscribeActual()`, `TimeoutMainMaybeObserver()`, `dispose()`, `if()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `onError()`, `onComplete()`, `otherError()`, `otherComplete()`, `TimeoutOtherMaybeObserver()`, `onNext()`, `get()`, `TimeoutFallbackMaybeObserver()`
- **`MaybeTimer`** — 7 function(s): `MaybeTimer()`, `subscribeActual()`, `TimerDisposable()`, `run()`, `dispose()`, `isDisposed()`, `setFuture()`
- **`MaybeToFlowable`** — 12 function(s): `MaybeToFlowable()`, `source()`, `subscribeActual()`, `MaybeToFlowableSubscriber()`, `super()`, `onSubscribe()`, `if()`, `onSuccess()`, `complete()`, `onError()`, `onComplete()`, `cancel()`
- **`MaybeToObservable`** — 14 function(s): `MaybeToObservable()`, `source()`, `subscribeActual()`, `create()`, `MaybeToObservableObserver()`, `super()`, `onSubscribe()`, `if()`, `onSuccess()`, `complete()`, `onError()`, `error()`, `onComplete()`, `dispose()`
- **`MaybeToPublisher`** — 3 function(s): `instance()`, `apply()`, `MaybeToFlowable()`
- **`MaybeToSingle`** — 11 function(s): `MaybeToSingle()`, `source()`, `subscribeActual()`, `ToSingleMaybeSubscriber()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeUnsafeCreate`** — 3 function(s): `MaybeUnsafeCreate()`, `super()`, `subscribeActual()`
- **`MaybeUnsubscribeOn`** — 12 function(s): `MaybeUnsubscribeOn()`, `super()`, `subscribeActual()`, `UnsubscribeOnMaybeObserver()`, `dispose()`, `if()`, `run()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeUsing`** — 12 function(s): `MaybeUsing()`, `subscribeActual()`, `if()`, `UsingObserver()`, `super()`, `dispose()`, `disposeResourceAfter()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `onError()`, `onComplete()`
- **`MaybeZipArray`** — 22 function(s): `MaybeZipArray()`, `subscribeActual()`, `if()`, `for()`, `ZipCoordinator()`, `super()`, `isDisposed()`, `get()`, `dispose()`, `innerSuccess()`, `disposeExcept()`, `while()`, `innerError()`, `innerComplete()`, `ZipMaybeObserver()`, `onSubscribe()`, `onSuccess()`, `onError()`, `onComplete()`, `SingletonArrayFunc()`, `apply()`, `return()`
- **`MaybeZipIterable`** — 7 function(s): `MaybeZipIterable()`, `subscribeActual()`, `for()`, `if()`, `SingletonArrayFunc()`, `apply()`, `return()`

</details>

### Package `io.reactivex.internal.operators.mixed`  (19 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CompletableAndThenObservable` | class | Observable<R> | 77 | 10 |
| `CompletableAndThenPublisher` | class | Flowable<R> | 90 | 12 |
| `FlowableConcatMapCompletable` | class | Completable | 241 | 43 |
| `FlowableConcatMapMaybe` | class | Flowable<R> | 264 | 45 |
| `FlowableConcatMapSingle` | class | Flowable<R> | 254 | 42 |
| `FlowableSwitchMapCompletable` | class | Completable | 198 | 37 |
| `FlowableSwitchMapMaybe` | class | Flowable<R> | 232 | 44 |
| `FlowableSwitchMapSingle` | class | Flowable<R> | 221 | 40 |
| `MaterializeSingleObserver` | class | SingleObserver<T>, MaybeObserver<T>, CompletableObserver, Disposable | 54 | 8 |
| `MaybeFlatMapObservable` | class | Observable<R> | 84 | 10 |
| `MaybeFlatMapPublisher` | class | Flowable<R> | 97 | 12 |
| `ObservableConcatMapCompletable` | class | Completable | 259 | 47 |
| `ObservableConcatMapMaybe` | class | Observable<R> | 237 | 41 |
| `ObservableConcatMapSingle` | class | Observable<R> | 227 | 38 |
| `ObservableSwitchMapCompletable` | class | Completable | 198 | 38 |
| `ObservableSwitchMapMaybe` | class | Observable<R> | 222 | 44 |
| `ObservableSwitchMapSingle` | class | Observable<R> | 211 | 40 |
| `ScalarXMapZHelper` | class | — | 86 | 11 |
| `SingleFlatMapObservable` | class | Observable<R> | 84 | 10 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.operators.mixed</code></b> (click to expand)</summary>

- **`CompletableAndThenObservable`** — 10 function(s): `CompletableAndThenObservable()`, `subscribeActual()`, `AndThenObservableObserver()`, `onNext()`, `onError()`, `onComplete()`, `if()`, `dispose()`, `isDisposed()`, `onSubscribe()`
- **`CompletableAndThenPublisher`** — 10 function(s): `CompletableAndThenPublisher()`, `subscribeActual()`, `AndThenPublisherSubscriber()`, `onNext()`, `onError()`, `onComplete()`, `if()`, `request()`, `cancel()`, `onSubscribe()`
- **`FlowableConcatMapCompletable`** — 15 function(s): `FlowableConcatMapCompletable()`, `subscribeActual()`, `ConcatMapCompletableObserver()`, `onSubscribe()`, `if()`, `onNext()`, `drain()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `innerError()`, `innerComplete()`, `while()`, `ConcatMapInnerObserver()`
- **`FlowableConcatMapMaybe`** — 18 function(s): `FlowableConcatMapMaybe()`, `subscribeActual()`, `ConcatMapMaybeSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `drain()`, `onComplete()`, `request()`, `cancel()`, `innerSuccess()`, `innerComplete()`, `innerError()`, `while()`, `ConcatMapMaybeObserver()`, `onSuccess()`, `dispose()`
- **`FlowableConcatMapSingle`** — 17 function(s): `FlowableConcatMapSingle()`, `subscribeActual()`, `ConcatMapSingleSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `drain()`, `onComplete()`, `request()`, `cancel()`, `innerSuccess()`, `innerError()`, `while()`, `ConcatMapSingleObserver()`, `onSuccess()`, `dispose()`
- **`FlowableSwitchMapCompletable`** — 14 function(s): `FlowableSwitchMapCompletable()`, `subscribeActual()`, `SwitchMapCompletableObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `disposeInner()`, `dispose()`, `isDisposed()`, `innerError()`, `innerComplete()`, `SwitchMapInnerObserver()`
- **`FlowableSwitchMapMaybe`** — 18 function(s): `FlowableSwitchMapMaybe()`, `subscribeActual()`, `SwitchMapMaybeSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `disposeInner()`, `drain()`, `onComplete()`, `request()`, `cancel()`, `innerError()`, `innerComplete()`, `while()`, `SwitchMapMaybeObserver()`, `onSuccess()`, `dispose()`
- **`FlowableSwitchMapSingle`** — 17 function(s): `FlowableSwitchMapSingle()`, `subscribeActual()`, `SwitchMapSingleSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `disposeInner()`, `drain()`, `onComplete()`, `request()`, `cancel()`, `innerError()`, `while()`, `SwitchMapSingleObserver()`, `onSuccess()`, `dispose()`
- **`MaterializeSingleObserver`** — 8 function(s): `MaterializeSingleObserver()`, `onSubscribe()`, `if()`, `onComplete()`, `onSuccess()`, `onError()`, `isDisposed()`, `dispose()`
- **`MaybeFlatMapObservable`** — 10 function(s): `MaybeFlatMapObservable()`, `subscribeActual()`, `FlatMapObserver()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`
- **`MaybeFlatMapPublisher`** — 11 function(s): `MaybeFlatMapPublisher()`, `subscribeActual()`, `FlatMapPublisherSubscriber()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `cancel()`, `onSubscribe()`, `if()`, `onSuccess()`
- **`ObservableConcatMapCompletable`** — 15 function(s): `ObservableConcatMapCompletable()`, `subscribeActual()`, `if()`, `ConcatMapCompletableObserver()`, `onSubscribe()`, `drain()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `innerError()`, `innerComplete()`, `while()`, `ConcatMapInnerObserver()`
- **`ObservableConcatMapMaybe`** — 17 function(s): `ObservableConcatMapMaybe()`, `subscribeActual()`, `if()`, `ConcatMapMaybeMainObserver()`, `onSubscribe()`, `onNext()`, `drain()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `innerSuccess()`, `innerComplete()`, `innerError()`, `while()`, `ConcatMapMaybeObserver()`, `onSuccess()`
- **`ObservableConcatMapSingle`** — 16 function(s): `ObservableConcatMapSingle()`, `subscribeActual()`, `if()`, `ConcatMapSingleMainObserver()`, `onSubscribe()`, `onNext()`, `drain()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `innerSuccess()`, `innerError()`, `while()`, `ConcatMapSingleObserver()`, `onSuccess()`
- **`ObservableSwitchMapCompletable`** — 14 function(s): `ObservableSwitchMapCompletable()`, `subscribeActual()`, `if()`, `SwitchMapCompletableObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `disposeInner()`, `dispose()`, `isDisposed()`, `innerError()`, `innerComplete()`, `SwitchMapInnerObserver()`
- **`ObservableSwitchMapMaybe`** — 17 function(s): `ObservableSwitchMapMaybe()`, `subscribeActual()`, `if()`, `SwitchMapMaybeMainObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `disposeInner()`, `drain()`, `onComplete()`, `dispose()`, `isDisposed()`, `innerError()`, `innerComplete()`, `while()`, `SwitchMapMaybeObserver()`, `onSuccess()`
- **`ObservableSwitchMapSingle`** — 16 function(s): `ObservableSwitchMapSingle()`, `subscribeActual()`, `if()`, `SwitchMapSingleMainObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `disposeInner()`, `drain()`, `onComplete()`, `dispose()`, `isDisposed()`, `innerError()`, `while()`, `SwitchMapSingleObserver()`, `onSuccess()`
- **`ScalarXMapZHelper`** — 6 function(s): `ScalarXMapZHelper()`, `IllegalStateException()`, `tryAsCompletable()`, `if()`, `tryAsMaybe()`, `tryAsSingle()`
- **`SingleFlatMapObservable`** — 10 function(s): `SingleFlatMapObservable()`, `subscribeActual()`, `FlatMapObserver()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`

</details>

### Package `io.reactivex.internal.operators.observable`  (144 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AbstractObservableWithUpstream` | class | Observable<U> implements HasUpstreamObservableSource<T> | 21 | 2 |
| `BlockingObservableIterable` | class | Iterable<T> | 139 | 26 |
| `BlockingObservableLatest` | class | Iterable<T> | 94 | 17 |
| `BlockingObservableMostRecent` | class | Iterable<T> | 93 | 18 |
| `BlockingObservableNext` | class | Iterable<T> | 139 | 28 |
| `ObservableAll` | class | AbstractObservableWithUpstream<T, Boolean> | 96 | 16 |
| `ObservableAllSingle` | class | Single<Boolean> implements FuseToObservable<Boolean> | 104 | 16 |
| `ObservableAmb` | class | Observable<T> | 186 | 31 |
| `ObservableAny` | class | AbstractObservableWithUpstream<T, Boolean> | 95 | 16 |
| `ObservableAnySingle` | class | Single<Boolean> implements FuseToObservable<Boolean> | 103 | 16 |
| `ObservableAutoConnect` | class | Observable<T> | 31 | 3 |
| `ObservableBlockingSubscribe` | class | — | 63 | 10 |
| `ObservableBuffer` | class | AbstractObservableWithUpstream<T, U> | 202 | 32 |
| `ObservableBufferBoundary` | class | AbstractObservableWithUpstream<T, U> | 329 | 69 |
| `ObservableBufferBoundarySupplier` | class | AbstractObservableWithUpstream<T, U> | 218 | 39 |
| `ObservableBufferExactBoundary` | class | AbstractObservableWithUpstream<T, U> | 174 | 32 |
| `ObservableBufferTimed` | class | AbstractObservableWithUpstream<T, U> | 493 | 92 |
| `ObservableCache` | class | AbstractObservableWithUpstream<T, T> implements Observer<T> | 236 | 42 |
| `ObservableCollect` | class | AbstractObservableWithUpstream<T, U> | 99 | 15 |
| `ObservableCollectSingle` | class | Single<U> implements FuseToObservable<U> | 108 | 15 |
| `ObservableCombineLatest` | class | Observable<R> | 305 | 66 |
| `ObservableConcatMap` | class | AbstractObservableWithUpstream<T, U> | 439 | 78 |
| `ObservableConcatMapEager` | class | AbstractObservableWithUpstream<T, R> | 305 | 65 |
| `ObservableConcatWithCompletable` | class | AbstractObservableWithUpstream<T, T> | 79 | 12 |
| `ObservableConcatWithMaybe` | class | AbstractObservableWithUpstream<T, T> | 85 | 13 |
| `ObservableConcatWithSingle` | class | AbstractObservableWithUpstream<T, T> | 81 | 12 |
| `ObservableCount` | class | AbstractObservableWithUpstream<T, Long> | 64 | 11 |
| `ObservableCountSingle` | class | Single<Long> implements FuseToObservable<Long> | 78 | 11 |
| `ObservableCreate` | class | Observable<T> | 260 | 58 |
| `ObservableDebounce` | class | AbstractObservableWithUpstream<T, T> | 165 | 31 |
| `ObservableDebounceTimed` | class | AbstractObservableWithUpstream<T, T> | 164 | 27 |
| `ObservableDefer` | class | Observable<T> | 29 | 2 |
| `ObservableDelay` | class | AbstractObservableWithUpstream<T, T> | 130 | 17 |
| `ObservableDelaySubscriptionOther` | class | Observable<T> | 95 | 15 |
| `ObservableDematerialize` | class | AbstractObservableWithUpstream<T, R> | 109 | 20 |
| `ObservableDetach` | class | AbstractObservableWithUpstream<T, T> | 72 | 11 |
| `ObservableDistinct` | class | AbstractObservableWithUpstream<T, T> | 113 | 19 |
| `ObservableDistinctUntilChanged` | class | AbstractObservableWithUpstream<T, T> | 94 | 18 |
| `ObservableDoAfterNext` | class | AbstractObservableWithUpstream<T, T> | 60 | 12 |
| `ObservableDoFinally` | class | AbstractObservableWithUpstream<T, T> | 126 | 25 |
| `ObservableDoOnEach` | class | AbstractObservableWithUpstream<T, T> | 128 | 16 |
| `ObservableDoOnLifecycle` | class | AbstractObservableWithUpstream<T, T> | 26 | 3 |
| `ObservableElementAt` | class | AbstractObservableWithUpstream<T, T> | 107 | 17 |
| `ObservableElementAtMaybe` | class | Maybe<T> implements FuseToObservable<T> | 99 | 15 |
| `ObservableElementAtSingle` | class | Single<T> implements FuseToObservable<T> | 109 | 16 |
| `ObservableEmpty` | class | Observable<Object> implements ScalarCallable<Object> | 25 | 3 |
| `ObservableError` | class | Observable<T> | 29 | 2 |
| `ObservableFilter` | class | AbstractObservableWithUpstream<T, T> | 68 | 13 |
| `ObservableFlatMap` | class | AbstractObservableWithUpstream<T, U> | 604 | 119 |
| `ObservableFlatMapCompletable` | class | AbstractObservableWithUpstream<T, T> | 186 | 36 |
| `ObservableFlatMapCompletableCompletable` | class | Completable implements FuseToObservable<T> | 174 | 32 |
| `ObservableFlatMapMaybe` | class | AbstractObservableWithUpstream<T, R> | 289 | 62 |
| `ObservableFlatMapSingle` | class | AbstractObservableWithUpstream<T, R> | 257 | 53 |
| `ObservableFlattenIterable` | class | AbstractObservableWithUpstream<T, R> | 109 | 18 |
| `ObservableFromArray` | class | Observable<T> | 99 | 17 |
| `ObservableFromCallable` | class | Observable<T> implements Callable<T> | 44 | 6 |
| `ObservableFromFuture` | class | Observable<T> | 42 | 4 |
| `ObservableFromIterable` | class | Observable<T> | 134 | 21 |
| `ObservableFromPublisher` | class | Observable<T> | 69 | 10 |
| `ObservableFromUnsafeSource` | class | Observable<T> | 20 | 2 |
| `ObservableGenerate` | class | Observable<T> | 144 | 25 |
| `ObservableGroupBy` | class | AbstractObservableWithUpstream<T, GroupedObservable<K, V>> | 323 | 61 |
| `ObservableGroupJoin` | class | AbstractObservableWithUpstream<TLeft, R> | 373 | 72 |
| `ObservableHide` | class | AbstractObservableWithUpstream<T, T> | 62 | 11 |
| `ObservableIgnoreElements` | class | AbstractObservableWithUpstream<T, T> | 58 | 10 |
| `ObservableIgnoreElementsCompletable` | class | Completable implements FuseToObservable<T> | 70 | 10 |
| `ObservableInternalHelper` | class | BiFunction<S, Emitter<T>, S> | 369 | 67 |
| `ObservableInterval` | class | Observable<Long> | 75 | 10 |
| `ObservableIntervalRange` | class | Observable<Long> | 87 | 11 |
| `ObservableJoin` | class | AbstractObservableWithUpstream<TLeft, R> | 259 | 50 |
| `ObservableJust` | class | Observable<T> implements ScalarCallable<T> | 28 | 3 |
| `ObservableLastMaybe` | class | Maybe<T> | 77 | 11 |
| `ObservableLastSingle` | class | Single<T> | 87 | 12 |
| `ObservableLift` | class | AbstractObservableWithUpstream<T, R> | 34 | 3 |
| `ObservableMap` | class | AbstractObservableWithUpstream<T, U> | 65 | 14 |
| `ObservableMapNotification` | class | R>> | 97 | 11 |
| `ObservableMaterialize` | class | AbstractObservableWithUpstream<T, Notification<T>> | 65 | 11 |
| `ObservableMergeWithCompletable` | class | AbstractObservableWithUpstream<T, T> | 118 | 18 |
| `ObservableMergeWithMaybe` | class | AbstractObservableWithUpstream<T, T> | 220 | 44 |
| `ObservableMergeWithSingle` | class | AbstractObservableWithUpstream<T, T> | 210 | 41 |
| `ObservableNever` | class | Observable<Object> | 19 | 2 |
| `ObservableObserveOn` | class | AbstractObservableWithUpstream<T, T> | 292 | 56 |
| `ObservableOnErrorNext` | class | AbstractObservableWithUpstream<T, T> | 100 | 14 |
| `ObservableOnErrorReturn` | class | AbstractObservableWithUpstream<T, T> | 83 | 12 |
| `ObservablePublish` | class | ConnectableObservable<T> implements HasUpstreamObservableSource<T> | 244 | 43 |
| `ObservablePublishSelector` | class | AbstractObservableWithUpstream<T, R> | 116 | 16 |
| `ObservableRange` | class | Observable<Integer> | 97 | 20 |
| `ObservableRangeLong` | class | Observable<Long> | 97 | 20 |
| `ObservableReduceMaybe` | class | Maybe<T> | 106 | 16 |
| `ObservableReduceSeedSingle` | class | Single<R> | 97 | 14 |
| `ObservableReduceWithSingle` | class | Single<R> | 35 | 2 |
| `ObservableRefCount` | class | Observable<T> | 214 | 42 |
| `ObservableRepeat` | class | AbstractObservableWithUpstream<T, T> | 83 | 16 |
| `ObservableRepeatUntil` | class | AbstractObservableWithUpstream<T, T> | 83 | 13 |
| `ObservableRepeatWhen` | class | AbstractObservableWithUpstream<T, T> | 153 | 24 |
| `ObservableReplay` | class | ConnectableObservable<T> implements HasUpstreamObservableSource<T>, ResettableConnectable | 775 | 164 |
| `ObservableRetryBiPredicate` | class | AbstractObservableWithUpstream<T, T> | 91 | 15 |
| `ObservableRetryPredicate` | class | AbstractObservableWithUpstream<T, T> | 99 | 17 |
| `ObservableRetryWhen` | class | AbstractObservableWithUpstream<T, T> | 153 | 24 |
| `ObservableSampleTimed` | class | AbstractObservableWithUpstream<T, T> | 154 | 35 |
| `ObservableSampleWithObservable` | class | AbstractObservableWithUpstream<T, T> | 210 | 47 |
| `ObservableScalarXMap` | class | Observable<R> | 185 | 35 |
| `ObservableScan` | class | AbstractObservableWithUpstream<T, T> | 101 | 16 |
| `ObservableScanSeed` | class | AbstractObservableWithUpstream<T, R> | 104 | 15 |
| `ObservableSequenceEqual` | class | Observable<Boolean> | 205 | 33 |
| `ObservableSequenceEqualSingle` | class | Single<Boolean> implements FuseToObservable<Boolean> | 212 | 34 |
| `ObservableSerialized` | class | AbstractObservableWithUpstream<T, T> | 18 | 3 |
| `ObservableSingleMaybe` | class | Maybe<T> | 93 | 15 |
| `ObservableSingleSingle` | class | Single<T> | 101 | 16 |
| `ObservableSkip` | class | AbstractObservableWithUpstream<T, T> | 71 | 12 |
| `ObservableSkipLast` | class | AbstractObservableWithUpstream<T, T> | 73 | 14 |
| `ObservableSkipLastTimed` | class | AbstractObservableWithUpstream<T, T> | 156 | 26 |
| `ObservableSkipUntil` | class | AbstractObservableWithUpstream<T, T> | 112 | 16 |
| `ObservableSkipWhile` | class | AbstractObservableWithUpstream<T, T> | 84 | 13 |
| `ObservableSubscribeOn` | class | AbstractObservableWithUpstream<T, T> | 86 | 13 |
| `ObservableSwitchIfEmpty` | class | AbstractObservableWithUpstream<T, T> | 65 | 10 |
| `ObservableSwitchMap` | class | AbstractObservableWithUpstream<T, R> | 320 | 60 |
| `ObservableTake` | class | AbstractObservableWithUpstream<T, T> | 98 | 18 |
| `ObservableTakeLast` | class | AbstractObservableWithUpstream<T, T> | 88 | 18 |
| `ObservableTakeLastOne` | class | AbstractObservableWithUpstream<T, T> | 74 | 14 |
| `ObservableTakeLastTimed` | class | AbstractObservableWithUpstream<T, T> | 146 | 24 |
| `ObservableTakeUntil` | class | AbstractObservableWithUpstream<T, T> | 114 | 17 |
| `ObservableTakeUntilPredicate` | class | AbstractObservableWithUpstream<T, T> | 94 | 16 |
| `ObservableTakeWhile` | class | AbstractObservableWithUpstream<T, T> | 95 | 16 |
| `ObservableThrottleFirstTimed` | class | AbstractObservableWithUpstream<T, T> | 109 | 16 |
| `ObservableThrottleLatest` | class | AbstractObservableWithUpstream<T, T> | 149 | 26 |
| `ObservableTimeInterval` | class | AbstractObservableWithUpstream<T, Timed<T>> | 79 | 11 |
| `ObservableTimeout` | class | AbstractObservableWithUpstream<T, T> | 320 | 59 |
| `ObservableTimeoutTimed` | class | AbstractObservableWithUpstream<T, T> | 268 | 42 |
| `ObservableTimer` | class | Observable<Long> | 65 | 10 |
| `ObservableToList` | class | AbstractObservableWithUpstream<T, U> | 87 | 13 |
| `ObservableToListSingle` | class | Single<U> implements FuseToObservable<U> | 97 | 12 |
| `ObservableUnsubscribeOn` | class | AbstractObservableWithUpstream<T, T> | 94 | 18 |
| `ObservableUsing` | class | Observable<T> | 147 | 20 |
| `ObservableWindow` | class | AbstractObservableWithUpstream<T, Observable<T>> | 216 | 36 |
| `ObservableWindowBoundary` | class | AbstractObservableWithUpstream<T, Observable<T>> | 235 | 48 |
| `ObservableWindowBoundarySelector` | class | AbstractObservableWithUpstream<T, Observable<T>> | 328 | 68 |
| `ObservableWindowBoundarySupplier` | class | AbstractObservableWithUpstream<T, Observable<T>> | 264 | 55 |
| `ObservableWindowTimed` | class | AbstractObservableWithUpstream<T, Observable<T>> | 644 | 129 |
| `ObservableWithLatestFrom` | class | AbstractObservableWithUpstream<T, R> | 126 | 19 |
| `ObservableWithLatestFromMany` | class | AbstractObservableWithUpstream<T, R> | 262 | 49 |
| `ObservableZip` | class | Observable<R> | 257 | 54 |
| `ObservableZipIterable` | class | Observable<V> | 133 | 19 |
| `ObserverResourceWrapper` | class | AtomicReference<Disposable> implements Observer<T>, Disposable | 57 | 11 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.operators.observable</code></b> (click to expand)</summary>

- **`AbstractObservableWithUpstream`** — 2 function(s): `AbstractObservableWithUpstream()`, `source()`
- **`BlockingObservableIterable`** — 17 function(s): `BlockingObservableIterable()`, `iterator()`, `BlockingObservableIterator()`, `hasNext()`, `while()`, `if()`, `signalConsumer()`, `next()`, `NoSuchElementException()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `remove()`, `UnsupportedOperationException()`, `dispose()`, `isDisposed()`
- **`BlockingObservableLatest`** — 13 function(s): `BlockingObservableLatest()`, `iterator()`, `onComplete()`, `BlockingObservableLatestIterator()`, `onNext()`, `if()`, `onError()`, `hasNext()`, `dispose()`, `next()`, `NoSuchElementException()`, `remove()`, `UnsupportedOperationException()`
- **`BlockingObservableMostRecent`** — 15 function(s): `BlockingObservableMostRecent()`, `iterator()`, `MostRecentObserver()`, `onComplete()`, `onError()`, `onNext()`, `getIterable()`, `Iterator()`, `hasNext()`, `next()`, `if()`, `NoSuchElementException()`, `return()`, `remove()`, `UnsupportedOperationException()`
- **`BlockingObservableNext`** — 18 function(s): `BlockingObservableNext()`, `iterator()`, `NextIterator()`, `hasNext()`, `if()`, `moveToNext()`, `ObservableMaterialize()`, `next()`, `NoSuchElementException()`, `remove()`, `UnsupportedOperationException()`, `onComplete()`, `NextObserver()`, `onError()`, `onNext()`, `while()`, `takeNext()`, `setWaiting()`
- **`ObservableAll`** — 11 function(s): `ObservableAll()`, `super()`, `subscribeActual()`, `AllObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`ObservableAllSingle`** — 11 function(s): `ObservableAllSingle()`, `subscribeActual()`, `fuseToObservable()`, `AllObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`ObservableAmb`** — 16 function(s): `ObservableAmb()`, `subscribeActual()`, `if()`, `for()`, `AmbCoordinator()`, `subscribe()`, `while()`, `win()`, `dispose()`, `isDisposed()`, `AmbInnerObserver()`, `onSubscribe()`, `onNext()`, `get()`, `onError()`, `onComplete()`
- **`ObservableAny`** — 11 function(s): `ObservableAny()`, `super()`, `subscribeActual()`, `AnyObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`ObservableAnySingle`** — 11 function(s): `ObservableAnySingle()`, `subscribeActual()`, `fuseToObservable()`, `AnyObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`ObservableAutoConnect`** — 3 function(s): `ObservableAutoConnect()`, `subscribeActual()`, `if()`
- **`ObservableBlockingSubscribe`** — 5 function(s): `ObservableBlockingSubscribe()`, `IllegalStateException()`, `subscribe()`, `while()`, `if()`
- **`ObservableBuffer`** — 14 function(s): `ObservableBuffer()`, `super()`, `subscribeActual()`, `if()`, `BufferExactObserver()`, `createBuffer()`, `onSubscribe()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`, `BufferSkipObserver()`, `while()`
- **`ObservableBufferBoundary`** — 22 function(s): `ObservableBufferBoundary()`, `super()`, `subscribeActual()`, `BufferBoundaryObserver()`, `onSubscribe()`, `if()`, `onNext()`, `synchronized()`, `while()`, `onError()`, `drain()`, `onComplete()`, `dispose()`, `isDisposed()`, `open()`, `openComplete()`, `close()`, `boundaryError()`, `BufferOpenObserver()`, `lazySet()`, `get()`, `BufferCloseObserver()`
- **`ObservableBufferBoundarySupplier`** — 17 function(s): `ObservableBufferBoundarySupplier()`, `super()`, `subscribeActual()`, `accept()`, `BufferBoundarySupplierObserver()`, `onSubscribe()`, `if()`, `onNext()`, `synchronized()`, `onError()`, `dispose()`, `onComplete()`, `disposeOther()`, `isDisposed()`, `next()`, `fastPathEmit()`, `BufferBoundaryObserver()`
- **`ObservableBufferExactBoundary`** — 16 function(s): `ObservableBufferExactBoundary()`, `super()`, `subscribeActual()`, `accept()`, `BufferExactBoundaryObserver()`, `onSubscribe()`, `if()`, `onNext()`, `synchronized()`, `onError()`, `dispose()`, `onComplete()`, `isDisposed()`, `next()`, `fastPathEmit()`, `BufferBoundaryObserver()`
- **`ObservableBufferTimed`** — 22 function(s): `ObservableBufferTimed()`, `super()`, `subscribeActual()`, `if()`, `accept()`, `BufferExactUnboundedObserver()`, `onSubscribe()`, `dispose()`, `onNext()`, `synchronized()`, `onError()`, `onComplete()`, `isDisposed()`, `run()`, `fastPathEmit()`, `BufferSkipBoundedObserver()`, `while()`, `clear()`, `RemoveFromBuffer()`, `RemoveFromBufferEmit()`, `BufferExactBoundedObserver()`, `fastPathOrderedEmit()`
- **`ObservableCache`** — 20 function(s): `onSubscribe()`, `ObservableCache()`, `super()`, `subscribeActual()`, `add()`, `if()`, `replay()`, `isConnected()`, `hasObservers()`, `cachedEventCount()`, `remove()`, `while()`, `onNext()`, `for()`, `onError()`, `onComplete()`, `CacheDisposable()`, `dispose()`, `isDisposed()`, `Node()`
- **`ObservableCollect`** — 11 function(s): `ObservableCollect()`, `super()`, `subscribeActual()`, `CollectObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableCollectSingle`** — 11 function(s): `ObservableCollectSingle()`, `subscribeActual()`, `fuseToObservable()`, `CollectObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableCombineLatest`** — 21 function(s): `ObservableCombineLatest()`, `subscribeActual()`, `if()`, `for()`, `LatestCoordinator()`, `subscribe()`, `dispose()`, `cancelSources()`, `clear()`, `isDisposed()`, `synchronized()`, `drain()`, `while()`, `innerNext()`, `innerError()`, `innerComplete()`, `CombinerObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableConcatMap`** — 17 function(s): `ObservableConcatMap()`, `super()`, `subscribeActual()`, `if()`, `SourceObserver()`, `onSubscribe()`, `drain()`, `onNext()`, `onError()`, `dispose()`, `onComplete()`, `innerComplete()`, `isDisposed()`, `while()`, `InnerObserver()`, `ConcatMapDelayErrorObserver()`, `DelayErrorInnerObserver()`
- **`ObservableConcatMapEager`** — 18 function(s): `ObservableConcatMapEager()`, `super()`, `subscribeActual()`, `ConcatMapEagerMainObserver()`, `onSubscribe()`, `if()`, `drain()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `drainAndDispose()`, `disposeAll()`, `isDisposed()`, `while()`, `innerNext()`, `innerError()`, `innerComplete()`
- **`ObservableConcatWithCompletable`** — 11 function(s): `ObservableConcatWithCompletable()`, `super()`, `subscribeActual()`, `ConcatWithObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`ObservableConcatWithMaybe`** — 12 function(s): `ObservableConcatWithMaybe()`, `super()`, `subscribeActual()`, `ConcatWithObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onSuccess()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`ObservableConcatWithSingle`** — 12 function(s): `ObservableConcatWithSingle()`, `super()`, `subscribeActual()`, `ConcatWithObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onSuccess()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`ObservableCount`** — 11 function(s): `ObservableCount()`, `super()`, `subscribeActual()`, `CountObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableCountSingle`** — 11 function(s): `ObservableCountSingle()`, `subscribeActual()`, `fuseToObservable()`, `CountObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableCreate`** — 19 function(s): `ObservableCreate()`, `subscribeActual()`, `CreateEmitter()`, `onNext()`, `if()`, `onError()`, `tryOnError()`, `dispose()`, `onComplete()`, `setDisposable()`, `setCancellable()`, `serialize()`, `SerializedEmitter()`, `isDisposed()`, `toString()`, `synchronized()`, `drainLoop()`, `drain()`, `while()`
- **`ObservableDebounce`** — 13 function(s): `ObservableDebounce()`, `super()`, `subscribeActual()`, `DebounceObserver()`, `onSubscribe()`, `if()`, `onNext()`, `dispose()`, `onError()`, `onComplete()`, `isDisposed()`, `emit()`, `DebounceInnerObserver()`
- **`ObservableDebounceTimed`** — 16 function(s): `ObservableDebounceTimed()`, `super()`, `subscribeActual()`, `DebounceTimedObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `emit()`, `DebounceEmitter()`, `run()`, `get()`, `setResource()`
- **`ObservableDefer`** — 2 function(s): `ObservableDefer()`, `subscribeActual()`
- **`ObservableDelay`** — 15 function(s): `ObservableDelay()`, `super()`, `subscribeActual()`, `DelayObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `OnNext()`, `run()`, `OnError()`, `OnComplete()`
- **`ObservableDelaySubscriptionOther`** — 9 function(s): `ObservableDelaySubscriptionOther()`, `subscribeActual()`, `DelayObserver()`, `onSubscribe()`, `onNext()`, `onComplete()`, `onError()`, `if()`, `OnComplete()`
- **`ObservableDematerialize`** — 11 function(s): `ObservableDematerialize()`, `super()`, `subscribeActual()`, `DematerializeObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableDetach`** — 11 function(s): `ObservableDetach()`, `super()`, `subscribeActual()`, `DetachObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableDistinct`** — 13 function(s): `ObservableDistinct()`, `super()`, `subscribeActual()`, `DistinctObserver()`, `onNext()`, `if()`, `fail()`, `onError()`, `onComplete()`, `requestFusion()`, `transitiveBoundaryFusion()`, `poll()`, `clear()`
- **`ObservableDistinctUntilChanged`** — 11 function(s): `ObservableDistinctUntilChanged()`, `super()`, `subscribeActual()`, `DistinctUntilChangedObserver()`, `onNext()`, `if()`, `fail()`, `requestFusion()`, `transitiveBoundaryFusion()`, `poll()`, `while()`
- **`ObservableDoAfterNext`** — 10 function(s): `ObservableDoAfterNext()`, `super()`, `subscribeActual()`, `DoAfterObserver()`, `onNext()`, `if()`, `fail()`, `requestFusion()`, `transitiveBoundaryFusion()`, `poll()`
- **`ObservableDoFinally`** — 16 function(s): `ObservableDoFinally()`, `super()`, `subscribeActual()`, `DoFinallyObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `runFinally()`, `onComplete()`, `dispose()`, `isDisposed()`, `requestFusion()`, `clear()`, `isEmpty()`, `poll()`
- **`ObservableDoOnEach`** — 11 function(s): `ObservableDoOnEach()`, `super()`, `subscribeActual()`, `DoOnEachObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableDoOnLifecycle`** — 3 function(s): `ObservableDoOnLifecycle()`, `super()`, `subscribeActual()`
- **`ObservableElementAt`** — 11 function(s): `ObservableElementAt()`, `super()`, `subscribeActual()`, `ElementAtObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableElementAtMaybe`** — 11 function(s): `ObservableElementAtMaybe()`, `subscribeActual()`, `fuseToObservable()`, `ElementAtObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableElementAtSingle`** — 11 function(s): `ObservableElementAtSingle()`, `subscribeActual()`, `fuseToObservable()`, `ElementAtObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableEmpty`** — 3 function(s): `call()`, `ObservableEmpty()`, `subscribeActual()`
- **`ObservableError`** — 2 function(s): `ObservableError()`, `subscribeActual()`
- **`ObservableFilter`** — 10 function(s): `ObservableFilter()`, `super()`, `subscribeActual()`, `FilterObserver()`, `onNext()`, `if()`, `fail()`, `requestFusion()`, `transitiveBoundaryFusion()`, `poll()`
- **`ObservableFlatMap`** — 24 function(s): `ObservableFlatMap()`, `super()`, `subscribeActual()`, `if()`, `MergeObserver()`, `onSubscribe()`, `onNext()`, `synchronized()`, `subscribeInner()`, `onError()`, `while()`, `drain()`, `addInner()`, `removeInner()`, `tryEmitScalar()`, `drainLoop()`, `tryEmit()`, `onComplete()`, `dispose()`, `isDisposed()`, `for()`, `checkTerminate()`, `disposeAll()`, `InnerObserver()`
- **`ObservableFlatMapCompletable`** — 20 function(s): `ObservableFlatMapCompletable()`, `super()`, `subscribeActual()`, `clear()`, `isEmpty()`, `poll()`, `requestFusion()`, `FlatMapCompletableMainObserver()`, `lazySet()`, `onSubscribe()`, `if()`, `onNext()`, `getAndIncrement()`, `onError()`, `dispose()`, `onComplete()`, `isDisposed()`, `innerComplete()`, `innerError()`, `InnerObserver()`
- **`ObservableFlatMapCompletableCompletable`** — 16 function(s): `ObservableFlatMapCompletableCompletable()`, `subscribeActual()`, `fuseToObservable()`, `FlatMapCompletableMainObserver()`, `lazySet()`, `onSubscribe()`, `if()`, `onNext()`, `getAndIncrement()`, `onError()`, `dispose()`, `onComplete()`, `isDisposed()`, `innerComplete()`, `innerError()`, `InnerObserver()`
- **`ObservableFlatMapMaybe`** — 22 function(s): `ObservableFlatMapMaybe()`, `super()`, `subscribeActual()`, `FlatMapMaybeObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `drain()`, `onComplete()`, `dispose()`, `isDisposed()`, `innerSuccess()`, `drainLoop()`, `synchronized()`, `getOrCreateQueue()`, `innerError()`, `innerComplete()`, `clear()`, `while()`, `InnerObserver()`, `onSuccess()`
- **`ObservableFlatMapSingle`** — 21 function(s): `ObservableFlatMapSingle()`, `super()`, `subscribeActual()`, `FlatMapSingleObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `drain()`, `onComplete()`, `dispose()`, `isDisposed()`, `innerSuccess()`, `drainLoop()`, `synchronized()`, `getOrCreateQueue()`, `innerError()`, `clear()`, `while()`, `InnerObserver()`, `onSuccess()`
- **`ObservableFlattenIterable`** — 12 function(s): `ObservableFlattenIterable()`, `super()`, `subscribeActual()`, `FlattenIterableObserver()`, `onSubscribe()`, `if()`, `onNext()`, `while()`, `onError()`, `onComplete()`, `isDisposed()`, `dispose()`
- **`ObservableFromArray`** — 13 function(s): `ObservableFromArray()`, `subscribeActual()`, `if()`, `FromArrayDisposable()`, `requestFusion()`, `poll()`, `return()`, `isEmpty()`, `clear()`, `dispose()`, `isDisposed()`, `run()`, `for()`
- **`ObservableFromCallable`** — 5 function(s): `ObservableFromCallable()`, `subscribeActual()`, `if()`, `call()`, `return()`
- **`ObservableFromFuture`** — 3 function(s): `ObservableFromFuture()`, `subscribeActual()`, `if()`
- **`ObservableFromIterable`** — 13 function(s): `ObservableFromIterable()`, `subscribeActual()`, `if()`, `FromIterableDisposable()`, `run()`, `while()`, `requestFusion()`, `poll()`, `return()`, `isEmpty()`, `clear()`, `dispose()`, `isDisposed()`
- **`ObservableFromPublisher`** — 10 function(s): `ObservableFromPublisher()`, `subscribeActual()`, `PublisherSubscriber()`, `onComplete()`, `onError()`, `onNext()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`
- **`ObservableFromUnsafeSource`** — 2 function(s): `ObservableFromUnsafeSource()`, `subscribeActual()`
- **`ObservableGenerate`** — 11 function(s): `ObservableGenerate()`, `subscribeActual()`, `GeneratorDisposable()`, `run()`, `if()`, `dispose()`, `while()`, `onError()`, `isDisposed()`, `onNext()`, `onComplete()`
- **`ObservableGroupBy`** — 21 function(s): `ObservableGroupBy()`, `super()`, `subscribeActual()`, `GroupByObserver()`, `lazySet()`, `onSubscribe()`, `if()`, `onNext()`, `getAndIncrement()`, `onError()`, `while()`, `onComplete()`, `dispose()`, `isDisposed()`, `cancel()`, `createWith()`, `GroupedUnicast()`, `State()`, `subscribe()`, `drain()`, `checkTerminated()`
- **`ObservableGroupJoin`** — 24 function(s): `innerClose()`, `innerCloseError()`, `innerComplete()`, `innerError()`, `innerValue()`, `ObservableGroupJoin()`, `super()`, `subscribeActual()`, `GroupJoinDisposable()`, `dispose()`, `if()`, `cancelAll()`, `isDisposed()`, `errorAll()`, `while()`, `fail()`, `drain()`, `synchronized()`, `LeftRightObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `LeftRightEndObserver()`
- **`ObservableHide`** — 11 function(s): `ObservableHide()`, `super()`, `subscribeActual()`, `HideDisposable()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableIgnoreElements`** — 10 function(s): `ObservableIgnoreElements()`, `super()`, `subscribeActual()`, `onNext()`, `IgnoreObservable()`, `onSubscribe()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`ObservableIgnoreElementsCompletable`** — 10 function(s): `ObservableIgnoreElementsCompletable()`, `subscribeActual()`, `fuseToObservable()`, `onNext()`, `IgnoreObservable()`, `onSubscribe()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`ObservableInternalHelper`** — 34 function(s): `ObservableInternalHelper()`, `IllegalStateException()`, `apply()`, `SimpleGenerator()`, `simpleGenerator()`, `SimpleBiGenerator()`, `simpleBiGenerator()`, `ItemDelayFunction()`, `ObservableTake()`, `itemDelay()`, `ObserverOnNext()`, `accept()`, `ObserverOnError()`, `ObserverOnComplete()`, `run()`, `observerOnNext()`, `observerOnError()`, `observerOnComplete()`, `FlatMapWithCombinerInner()`, `FlatMapWithCombinerOuter()`, `ObservableMap()`, `flatMapWithCombiner()`, `FlatMapIntoIterable()`, `ObservableFromIterable()`, `flatMapIntoIterable()`, `replayCallable()`, `ReplayCallable()`, `BufferedReplayCallable()`, `BufferedTimedReplayCallable()`, `TimedReplayCallable()`, `replayFunction()`, `ReplayFunction()`, `ZipIterableFunction()`, `call()`
- **`ObservableInterval`** — 9 function(s): `ObservableInterval()`, `subscribeActual()`, `if()`, `IntervalObserver()`, `dispose()`, `isDisposed()`, `get()`, `run()`, `setResource()`
- **`ObservableIntervalRange`** — 9 function(s): `ObservableIntervalRange()`, `subscribeActual()`, `if()`, `IntervalRangeObserver()`, `dispose()`, `isDisposed()`, `get()`, `run()`, `setResource()`
- **`ObservableJoin`** — 18 function(s): `ObservableJoin()`, `super()`, `subscribeActual()`, `JoinDisposable()`, `dispose()`, `if()`, `cancelAll()`, `isDisposed()`, `errorAll()`, `fail()`, `drain()`, `while()`, `innerError()`, `innerComplete()`, `innerValue()`, `synchronized()`, `innerClose()`, `innerCloseError()`
- **`ObservableJust`** — 3 function(s): `ObservableJust()`, `subscribeActual()`, `call()`
- **`ObservableLastMaybe`** — 10 function(s): `ObservableLastMaybe()`, `subscribeActual()`, `LastObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableLastSingle`** — 10 function(s): `ObservableLastSingle()`, `subscribeActual()`, `LastObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableLift`** — 3 function(s): `ObservableLift()`, `super()`, `subscribeActual()`
- **`ObservableMap`** — 11 function(s): `ObservableMap()`, `super()`, `subscribeActual()`, `MapObserver()`, `onNext()`, `if()`, `fail()`, `requestFusion()`, `transitiveBoundaryFusion()`, `poll()`, `return()`
- **`ObservableMapNotification`** — 11 function(s): `ObservableMapNotification()`, `super()`, `subscribeActual()`, `MapNotificationObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableMaterialize`** — 11 function(s): `ObservableMaterialize()`, `super()`, `subscribeActual()`, `MaterializeObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableMergeWithCompletable`** — 14 function(s): `ObservableMergeWithCompletable()`, `super()`, `subscribeActual()`, `MergeWithObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `if()`, `isDisposed()`, `dispose()`, `otherError()`, `otherComplete()`, `OtherObserver()`
- **`ObservableMergeWithMaybe`** — 20 function(s): `ObservableMergeWithMaybe()`, `super()`, `subscribeActual()`, `MergeWithObserver()`, `onSubscribe()`, `onNext()`, `if()`, `getOrCreateQueue()`, `drainLoop()`, `onError()`, `drain()`, `onComplete()`, `isDisposed()`, `dispose()`, `otherSuccess()`, `otherError()`, `otherComplete()`, `while()`, `OtherObserver()`, `onSuccess()`
- **`ObservableMergeWithSingle`** — 19 function(s): `ObservableMergeWithSingle()`, `super()`, `subscribeActual()`, `MergeWithObserver()`, `onSubscribe()`, `onNext()`, `if()`, `getOrCreateQueue()`, `drainLoop()`, `onError()`, `drain()`, `onComplete()`, `isDisposed()`, `dispose()`, `otherSuccess()`, `otherError()`, `while()`, `OtherObserver()`, `onSuccess()`
- **`ObservableNever`** — 2 function(s): `ObservableNever()`, `subscribeActual()`
- **`ObservableObserveOn`** — 21 function(s): `ObservableObserveOn()`, `super()`, `subscribeActual()`, `if()`, `ObserveOnObserver()`, `onSubscribe()`, `schedule()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `drainNormal()`, `while()`, `drainFused()`, `run()`, `checkTerminated()`, `requestFusion()`, `poll()`, `clear()`, `isEmpty()`
- **`ObservableOnErrorNext`** — 9 function(s): `ObservableOnErrorNext()`, `super()`, `subscribeActual()`, `OnErrorNextObserver()`, `onSubscribe()`, `onNext()`, `if()`, `onError()`, `onComplete()`
- **`ObservableOnErrorReturn`** — 11 function(s): `ObservableOnErrorReturn()`, `super()`, `subscribeActual()`, `OnErrorReturnObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservablePublish`** — 22 function(s): `create()`, `ObservablePublish()`, `source()`, `subscribeActual()`, `connect()`, `while()`, `if()`, `PublishObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `onNext()`, `for()`, `onError()`, `onComplete()`, `add()`, `remove()`, `InnerDisposable()`, `get()`, `setParent()`, `PublishSource()`, `subscribe()`
- **`ObservablePublishSelector`** — 12 function(s): `ObservablePublishSelector()`, `super()`, `subscribeActual()`, `SourceObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `TargetObserver()`, `if()`, `dispose()`, `isDisposed()`
- **`ObservableRange`** — 15 function(s): `ObservableRange()`, `subscribeActual()`, `RangeDisposable()`, `run()`, `if()`, `for()`, `lazySet()`, `poll()`, `isEmpty()`, `clear()`, `dispose()`, `set()`, `isDisposed()`, `get()`, `requestFusion()`
- **`ObservableRangeLong`** — 15 function(s): `ObservableRangeLong()`, `subscribeActual()`, `RangeDisposable()`, `run()`, `if()`, `for()`, `lazySet()`, `poll()`, `isEmpty()`, `clear()`, `dispose()`, `set()`, `isDisposed()`, `get()`, `requestFusion()`
- **`ObservableReduceMaybe`** — 10 function(s): `ObservableReduceMaybe()`, `subscribeActual()`, `ReduceObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`ObservableReduceSeedSingle`** — 10 function(s): `ObservableReduceSeedSingle()`, `subscribeActual()`, `ReduceSeedObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`ObservableReduceWithSingle`** — 2 function(s): `ObservableReduceWithSingle()`, `subscribeActual()`
- **`ObservableRefCount`** — 18 function(s): `ObservableRefCount()`, `this()`, `subscribeActual()`, `synchronized()`, `if()`, `cancel()`, `timeout()`, `terminated()`, `RefConnection()`, `run()`, `accept()`, `RefCountObserver()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `onSubscribe()`
- **`ObservableRepeat`** — 11 function(s): `ObservableRepeat()`, `super()`, `subscribeActual()`, `RepeatObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `if()`, `subscribeNext()`, `while()`
- **`ObservableRepeatUntil`** — 10 function(s): `ObservableRepeatUntil()`, `super()`, `subscribeActual()`, `RepeatUntilObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `if()`, `subscribeNext()`
- **`ObservableRepeatWhen`** — 17 function(s): `ObservableRepeatWhen()`, `super()`, `subscribeActual()`, `RepeatWhenObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `isDisposed()`, `dispose()`, `innerNext()`, `subscribeNext()`, `innerError()`, `innerComplete()`, `if()`, `while()`, `InnerRepeatObserver()`
- **`ObservableReplay`** — 61 function(s): `call()`, `complete()`, `error()`, `next()`, `replay()`, `multicastSelector()`, `observeOn()`, `createFrom()`, `create()`, `if()`, `ObservableReplay()`, `source()`, `resetIf()`, `subscribeActual()`, `connect()`, `while()`, `ReplayObserver()`, `isDisposed()`, `dispose()`, `add()`, `remove()`, `onSubscribe()`, `onNext()`, `onError()`, `replayFinal()`, `onComplete()`, `for()`, `InnerDisposable()`, `index()`, `return()`, `UnboundedReplayBuffer()`, `super()`, `Node()`, `enterTransform()`, `leaveTransform()`, `truncate()`, `BoundedReplayBuffer()`, `set()`, `addLast()`, `removeFirst()`, `setFirst()`, `trimHead()`, `removeSome()`, `truncateFinal()`, `collect()`, `hasError()`, `hasCompleted()`, `getHead()`, `get()`, `SizeBoundReplayBuffer()`, `SizeAndTimeBoundReplayBuffer()`, `Timed()`, `UnBoundedFactory()`, `DisposeConsumer()`, `accept()`, `ReplayBufferSupplier()`, `ScheduledReplaySupplier()`, `ReplaySource()`, `subscribe()`, `MulticastReplay()`, `Replay()`
- **`ObservableRetryBiPredicate`** — 11 function(s): `ObservableRetryBiPredicate()`, `super()`, `subscribeActual()`, `RetryBiObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `if()`, `subscribeNext()`, `onComplete()`, `while()`
- **`ObservableRetryPredicate`** — 11 function(s): `ObservableRetryPredicate()`, `super()`, `subscribeActual()`, `RepeatObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `if()`, `subscribeNext()`, `onComplete()`, `while()`
- **`ObservableRetryWhen`** — 17 function(s): `ObservableRetryWhen()`, `super()`, `subscribeActual()`, `RepeatWhenObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `isDisposed()`, `dispose()`, `innerNext()`, `subscribeNext()`, `innerError()`, `innerComplete()`, `if()`, `while()`, `InnerRepeatObserver()`
- **`ObservableSampleTimed`** — 18 function(s): `ObservableSampleTimed()`, `super()`, `subscribeActual()`, `if()`, `complete()`, `SampleTimedObserver()`, `onSubscribe()`, `onNext()`, `lazySet()`, `onError()`, `cancelTimer()`, `onComplete()`, `dispose()`, `isDisposed()`, `emit()`, `SampleTimedNoLast()`, `run()`, `SampleTimedEmitLast()`
- **`ObservableSampleWithObservable`** — 22 function(s): `ObservableSampleWithObservable()`, `super()`, `subscribeActual()`, `if()`, `completeMain()`, `completeOther()`, `run()`, `SampleMainObserver()`, `onSubscribe()`, `onNext()`, `lazySet()`, `onError()`, `onComplete()`, `setOther()`, `dispose()`, `isDisposed()`, `error()`, `complete()`, `emit()`, `SamplerObserver()`, `SampleMainNoLast()`, `SampleMainEmitLast()`
- **`ObservableScalarXMap`** — 20 function(s): `ObservableScalarXMap()`, `IllegalStateException()`, `tryScalarXMapSubscribe()`, `if()`, `scalarXMap()`, `ScalarXMapObservable()`, `subscribeActual()`, `ScalarDisposable()`, `offer()`, `UnsupportedOperationException()`, `poll()`, `lazySet()`, `isEmpty()`, `get()`, `clear()`, `dispose()`, `set()`, `isDisposed()`, `requestFusion()`, `run()`
- **`ObservableScan`** — 11 function(s): `ObservableScan()`, `super()`, `subscribeActual()`, `ScanObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableScanSeed`** — 11 function(s): `ObservableScanSeed()`, `super()`, `subscribeActual()`, `ScanSeedObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableSequenceEqual`** — 16 function(s): `ObservableSequenceEqual()`, `subscribeActual()`, `EqualCoordinator()`, `setDisposable()`, `subscribe()`, `dispose()`, `if()`, `isDisposed()`, `cancel()`, `drain()`, `while()`, `EqualObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableSequenceEqualSingle`** — 17 function(s): `ObservableSequenceEqualSingle()`, `subscribeActual()`, `fuseToObservable()`, `EqualCoordinator()`, `setDisposable()`, `subscribe()`, `dispose()`, `if()`, `isDisposed()`, `cancel()`, `drain()`, `while()`, `EqualObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableSerialized`** — 3 function(s): `ObservableSerialized()`, `super()`, `subscribeActual()`
- **`ObservableSingleMaybe`** — 10 function(s): `ObservableSingleMaybe()`, `subscribeActual()`, `SingleElementObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableSingleSingle`** — 10 function(s): `ObservableSingleSingle()`, `subscribeActual()`, `SingleElementObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableSkip`** — 11 function(s): `ObservableSkip()`, `super()`, `subscribeActual()`, `SkipObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`ObservableSkipLast`** — 12 function(s): `ObservableSkipLast()`, `super()`, `subscribeActual()`, `SkipLastObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `offer()`, `onError()`, `onComplete()`
- **`ObservableSkipLastTimed`** — 13 function(s): `ObservableSkipLastTimed()`, `super()`, `subscribeActual()`, `SkipLastTimedObserver()`, `onSubscribe()`, `if()`, `onNext()`, `drain()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `while()`
- **`ObservableSkipUntil`** — 10 function(s): `ObservableSkipUntil()`, `super()`, `subscribeActual()`, `SkipUntilObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `SkipUntil()`
- **`ObservableSkipWhile`** — 11 function(s): `ObservableSkipWhile()`, `super()`, `subscribeActual()`, `SkipWhileObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableSubscribeOn`** — 13 function(s): `ObservableSubscribeOn()`, `super()`, `subscribeActual()`, `SubscribeOnObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `setDisposable()`, `SubscribeTask()`, `run()`
- **`ObservableSwitchIfEmpty`** — 9 function(s): `ObservableSwitchIfEmpty()`, `super()`, `subscribeActual()`, `SwitchIfEmptyObserver()`, `onSubscribe()`, `onNext()`, `if()`, `onError()`, `onComplete()`
- **`ObservableSwitchMap`** — 17 function(s): `ObservableSwitchMap()`, `super()`, `subscribeActual()`, `if()`, `SwitchMapObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `disposeInner()`, `drain()`, `onComplete()`, `dispose()`, `isDisposed()`, `while()`, `innerError()`, `SwitchMapInnerObserver()`, `cancel()`
- **`ObservableTake`** — 11 function(s): `ObservableTake()`, `super()`, `subscribeActual()`, `TakeObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onComplete()`, `onError()`, `dispose()`, `isDisposed()`
- **`ObservableTakeLast`** — 14 function(s): `ObservableTakeLast()`, `super()`, `subscribeActual()`, `TakeLastObserver()`, `onSubscribe()`, `if()`, `onNext()`, `poll()`, `offer()`, `onError()`, `onComplete()`, `while()`, `dispose()`, `isDisposed()`
- **`ObservableTakeLastOne`** — 12 function(s): `ObservableTakeLastOne()`, `super()`, `subscribeActual()`, `TakeLastOneObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `emit()`, `dispose()`, `isDisposed()`
- **`ObservableTakeLastTimed`** — 13 function(s): `ObservableTakeLastTimed()`, `super()`, `subscribeActual()`, `TakeLastTimedObserver()`, `onSubscribe()`, `if()`, `onNext()`, `while()`, `onError()`, `drain()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`ObservableTakeUntil`** — 13 function(s): `ObservableTakeUntil()`, `super()`, `subscribeActual()`, `TakeUntilMainObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `otherError()`, `otherComplete()`, `OtherObserver()`
- **`ObservableTakeUntilPredicate`** — 11 function(s): `ObservableTakeUntilPredicate()`, `super()`, `subscribeActual()`, `TakeUntilPredicateObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableTakeWhile`** — 11 function(s): `ObservableTakeWhile()`, `super()`, `subscribeActual()`, `TakeWhileObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableThrottleFirstTimed`** — 12 function(s): `ObservableThrottleFirstTimed()`, `super()`, `subscribeActual()`, `DebounceTimedObserver()`, `onSubscribe()`, `if()`, `onNext()`, `run()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`ObservableThrottleLatest`** — 14 function(s): `ObservableThrottleLatest()`, `super()`, `subscribeActual()`, `ThrottleLatestObserver()`, `onSubscribe()`, `if()`, `onNext()`, `drain()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `run()`, `while()`
- **`ObservableTimeInterval`** — 11 function(s): `ObservableTimeInterval()`, `super()`, `subscribeActual()`, `TimeIntervalObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableTimeout`** — 18 function(s): `onTimeoutError()`, `ObservableTimeout()`, `super()`, `subscribeActual()`, `if()`, `TimeoutObserver()`, `onSubscribe()`, `onNext()`, `getAndSet()`, `startFirstTimeout()`, `onError()`, `onComplete()`, `onTimeout()`, `dispose()`, `isDisposed()`, `TimeoutFallbackObserver()`, `TimeoutConsumer()`, `lazySet()`
- **`ObservableTimeoutTimed`** — 17 function(s): `onTimeout()`, `ObservableTimeoutTimed()`, `super()`, `subscribeActual()`, `if()`, `TimeoutObserver()`, `onSubscribe()`, `onNext()`, `startTimeout()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `TimeoutTask()`, `run()`, `TimeoutFallbackObserver()`, `FallbackObserver()`
- **`ObservableTimer`** — 10 function(s): `ObservableTimer()`, `subscribeActual()`, `TimerObserver()`, `dispose()`, `isDisposed()`, `get()`, `run()`, `if()`, `lazySet()`, `setResource()`
- **`ObservableToList`** — 11 function(s): `ObservableToList()`, `super()`, `subscribeActual()`, `ToListObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableToListSingle`** — 11 function(s): `ObservableToListSingle()`, `subscribeActual()`, `fuseToObservable()`, `ToListObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableUnsubscribeOn`** — 14 function(s): `ObservableUnsubscribeOn()`, `super()`, `subscribeActual()`, `UnsubscribeObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `get()`, `DisposeTask()`, `run()`
- **`ObservableUsing`** — 12 function(s): `ObservableUsing()`, `subscribeActual()`, `UsingObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `disposeAfter()`, `onComplete()`, `dispose()`, `isDisposed()`, `get()`
- **`ObservableWindow`** — 14 function(s): `ObservableWindow()`, `super()`, `subscribeActual()`, `if()`, `WindowExactObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `run()`, `WindowSkipObserver()`, `while()`
- **`ObservableWindowBoundary`** — 18 function(s): `ObservableWindowBoundary()`, `super()`, `subscribeActual()`, `WindowBoundaryMainObserver()`, `onSubscribe()`, `if()`, `innerNext()`, `onNext()`, `drain()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`, `run()`, `innerError()`, `innerComplete()`, `while()`, `WindowBoundaryInnerObserver()`
- **`ObservableWindowBoundarySelector`** — 21 function(s): `ObservableWindowBoundarySelector()`, `super()`, `subscribeActual()`, `accept()`, `WindowBoundaryMainObserver()`, `onSubscribe()`, `if()`, `onNext()`, `while()`, `drainLoop()`, `onError()`, `onComplete()`, `error()`, `dispose()`, `isDisposed()`, `disposeBoundary()`, `open()`, `close()`, `WindowOperation()`, `OperatorWindowBoundaryOpenObserver()`, `OperatorWindowBoundaryCloseObserver()`
- **`ObservableWindowBoundarySupplier`** — 19 function(s): `ObservableWindowBoundarySupplier()`, `super()`, `subscribeActual()`, `WindowBoundaryMainObserver()`, `onSubscribe()`, `if()`, `drain()`, `onNext()`, `onError()`, `disposeBoundary()`, `onComplete()`, `dispose()`, `isDisposed()`, `run()`, `innerNext()`, `innerError()`, `innerComplete()`, `while()`, `WindowBoundaryInnerObserver()`
- **`ObservableWindowTimed`** — 22 function(s): `ObservableWindowTimed()`, `super()`, `subscribeActual()`, `if()`, `WindowExactUnboundedObserver()`, `onSubscribe()`, `onNext()`, `drainLoop()`, `onError()`, `disposeTimer()`, `onComplete()`, `dispose()`, `isDisposed()`, `run()`, `while()`, `WindowExactBoundedObserver()`, `ConsumerIndexHolder()`, `WindowSkipObserver()`, `disposeWorker()`, `complete()`, `SubjectWork()`, `CompletionTask()`
- **`ObservableWithLatestFrom`** — 14 function(s): `ObservableWithLatestFrom()`, `super()`, `subscribeActual()`, `WithLatestFromObserver()`, `onSubscribe()`, `onNext()`, `if()`, `dispose()`, `onError()`, `onComplete()`, `isDisposed()`, `setOther()`, `otherError()`, `WithLatestFromOtherObserver()`
- **`ObservableWithLatestFromMany`** — 23 function(s): `ObservableWithLatestFromMany()`, `super()`, `subscribeActual()`, `if()`, `for()`, `ObservableMap()`, `WithLatestFromObserver()`, `subscribe()`, `onSubscribe()`, `onNext()`, `while()`, `dispose()`, `onError()`, `cancelAllBut()`, `onComplete()`, `isDisposed()`, `innerNext()`, `innerError()`, `innerComplete()`, `WithLatestInnerObserver()`, `SingletonArrayFunc()`, `apply()`, `return()`
- **`ObservableZip`** — 20 function(s): `ObservableZip()`, `subscribeActual()`, `if()`, `for()`, `ZipCoordinator()`, `subscribe()`, `lazySet()`, `dispose()`, `cancelSources()`, `clear()`, `isDisposed()`, `cancel()`, `drain()`, `while()`, `checkTerminated()`, `ZipObserver()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`
- **`ObservableZipIterable`** — 11 function(s): `ObservableZipIterable()`, `subscribeActual()`, `if()`, `ZipIterableObserver()`, `onSubscribe()`, `dispose()`, `isDisposed()`, `onNext()`, `error()`, `onError()`, `onComplete()`
- **`ObserverResourceWrapper`** — 9 function(s): `ObserverResourceWrapper()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `dispose()`, `onComplete()`, `isDisposed()`, `setResource()`

</details>

### Package `io.reactivex.internal.operators.parallel`  (16 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ParallelCollect` | class | ParallelFlowable<C> | 121 | 22 |
| `ParallelConcatMap` | class | ParallelFlowable<R> | 42 | 5 |
| `ParallelDoOnNextTry` | class | ParallelFlowable<T> | 245 | 48 |
| `ParallelFilter` | class | ParallelFlowable<T> | 183 | 37 |
| `ParallelFilterTry` | class | ParallelFlowable<T> | 232 | 48 |
| `ParallelFlatMap` | class | ParallelFlowable<R> | 42 | 5 |
| `ParallelFromArray` | class | ParallelFlowable<T> | 30 | 5 |
| `ParallelFromPublisher` | class | ParallelFlowable<T> | 353 | 68 |
| `ParallelJoin` | class | Flowable<T> | 552 | 124 |
| `ParallelMap` | class | ParallelFlowable<R> | 189 | 36 |
| `ParallelMapTry` | class | ParallelFlowable<R> | 243 | 48 |
| `ParallelPeek` | class | ParallelFlowable<T> | 172 | 19 |
| `ParallelReduce` | class | ParallelFlowable<R> | 121 | 22 |
| `ParallelReduceFull` | class | Flowable<T> | 261 | 40 |
| `ParallelRunOn` | class | ParallelFlowable<T> | 356 | 70 |
| `ParallelSortedJoin` | class | Flowable<T> | 251 | 50 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.operators.parallel</code></b> (click to expand)</summary>

- **`ParallelCollect`** — 14 function(s): `ParallelCollect()`, `subscribe()`, `if()`, `for()`, `reportError()`, `parallelism()`, `ParallelCollectSubscriber()`, `super()`, `onSubscribe()`, `onNext()`, `cancel()`, `onError()`, `onComplete()`, `complete()`
- **`ParallelConcatMap`** — 5 function(s): `ParallelConcatMap()`, `parallelism()`, `subscribe()`, `if()`, `for()`
- **`ParallelDoOnNextTry`** — 16 function(s): `ParallelDoOnNextTry()`, `subscribe()`, `if()`, `for()`, `parallelism()`, `ParallelDoOnNextSubscriber()`, `request()`, `cancel()`, `onSubscribe()`, `onNext()`, `tryOnNext()`, `while()`, `switch()`, `onComplete()`, `onError()`, `ParallelDoOnNextConditionalSubscriber()`
- **`ParallelFilter`** — 16 function(s): `ParallelFilter()`, `subscribe()`, `if()`, `for()`, `parallelism()`, `BaseFilterSubscriber()`, `request()`, `cancel()`, `onNext()`, `ParallelFilterSubscriber()`, `super()`, `onSubscribe()`, `tryOnNext()`, `onError()`, `onComplete()`, `ParallelFilterConditionalSubscriber()`
- **`ParallelFilterTry`** — 18 function(s): `ParallelFilterTry()`, `subscribe()`, `if()`, `for()`, `parallelism()`, `BaseFilterSubscriber()`, `request()`, `cancel()`, `onNext()`, `ParallelFilterSubscriber()`, `super()`, `onSubscribe()`, `tryOnNext()`, `while()`, `switch()`, `onComplete()`, `onError()`, `ParallelFilterConditionalSubscriber()`
- **`ParallelFlatMap`** — 5 function(s): `ParallelFlatMap()`, `parallelism()`, `subscribe()`, `if()`, `for()`
- **`ParallelFromArray`** — 5 function(s): `ParallelFromArray()`, `parallelism()`, `subscribe()`, `if()`, `for()`
- **`ParallelFromPublisher`** — 17 function(s): `ParallelFromPublisher()`, `parallelism()`, `subscribe()`, `if()`, `ParallelDispatcher()`, `onSubscribe()`, `setupSubscribers()`, `drain()`, `while()`, `RailSubscription()`, `request()`, `cancel()`, `onNext()`, `onError()`, `onComplete()`, `drainAsync()`, `drainSync()`
- **`ParallelJoin`** — 23 function(s): `ParallelJoin()`, `subscribeActual()`, `if()`, `drain()`, `onComplete()`, `onError()`, `onNext()`, `JoinSubscriptionBase()`, `for()`, `request()`, `cancel()`, `cancelAll()`, `cleanup()`, `JoinSubscription()`, `super()`, `drainLoop()`, `while()`, `JoinSubscriptionDelayError()`, `JoinInnerSubscriber()`, `onSubscribe()`, `requestOne()`, `get()`, `getQueue()`
- **`ParallelMap`** — 14 function(s): `ParallelMap()`, `subscribe()`, `if()`, `for()`, `parallelism()`, `ParallelMapSubscriber()`, `request()`, `cancel()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `ParallelMapConditionalSubscriber()`, `tryOnNext()`
- **`ParallelMapTry`** — 16 function(s): `ParallelMapTry()`, `subscribe()`, `if()`, `for()`, `parallelism()`, `ParallelMapTrySubscriber()`, `request()`, `cancel()`, `onSubscribe()`, `onNext()`, `tryOnNext()`, `while()`, `switch()`, `onComplete()`, `onError()`, `ParallelMapTryConditionalSubscriber()`
- **`ParallelPeek`** — 12 function(s): `ParallelPeek()`, `subscribe()`, `if()`, `for()`, `parallelism()`, `ParallelPeekSubscriber()`, `request()`, `cancel()`, `onSubscribe()`, `onError()`, `onNext()`, `onComplete()`
- **`ParallelReduce`** — 14 function(s): `ParallelReduce()`, `subscribe()`, `if()`, `for()`, `reportError()`, `parallelism()`, `ParallelReduceSubscriber()`, `super()`, `onSubscribe()`, `onNext()`, `cancel()`, `onError()`, `onComplete()`, `complete()`
- **`ParallelReduceFull`** — 21 function(s): `ParallelReduceFull()`, `subscribeActual()`, `ParallelReduceFullMainSubscriber()`, `super()`, `for()`, `addValue()`, `while()`, `if()`, `cancel()`, `innerError()`, `complete()`, `innerComplete()`, `ParallelReduceFullInnerSubscriber()`, `onSubscribe()`, `onNext()`, `get()`, `onError()`, `onComplete()`, `SlotPair()`, `tryAcquireSlot()`, `releaseSlot()`
- **`ParallelRunOn`** — 21 function(s): `ParallelRunOn()`, `subscribe()`, `if()`, `for()`, `createSubscriber()`, `MultiWorkerCallback()`, `onWorker()`, `parallelism()`, `BaseRunOnSubscriber()`, `onNext()`, `onError()`, `schedule()`, `onComplete()`, `request()`, `cancel()`, `RunOnSubscriber()`, `super()`, `onSubscribe()`, `run()`, `while()`, `RunOnConditionalSubscriber()`
- **`ParallelSortedJoin`** — 17 function(s): `ParallelSortedJoin()`, `subscribeActual()`, `SortedJoinSubscription()`, `for()`, `request()`, `if()`, `drain()`, `cancel()`, `cancelAll()`, `innerNext()`, `innerError()`, `while()`, `onComplete()`, `SortedJoinInnerSubscriber()`, `onSubscribe()`, `onNext()`, `onError()`

</details>

### Package `io.reactivex.internal.operators.single`  (52 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `SingleAmb` | class | Single<T> | 116 | 16 |
| `SingleCache` | class | Single<T> implements SingleObserver<T> | 147 | 28 |
| `SingleContains` | class | Single<Boolean> | 56 | 6 |
| `SingleCreate` | class | Single<T> | 119 | 20 |
| `SingleDefer` | class | Single<T> | 29 | 2 |
| `SingleDelay` | class | Single<T> | 88 | 10 |
| `SingleDelayWithCompletable` | class | Single<T> | 67 | 9 |
| `SingleDelayWithObservable` | class | Single<T> | 84 | 14 |
| `SingleDelayWithPublisher` | class | Single<T> | 90 | 13 |
| `SingleDelayWithSingle` | class | Single<T> | 65 | 9 |
| `SingleDematerialize` | class | Maybe<R> | 83 | 10 |
| `SingleDetach` | class | Single<T> | 72 | 11 |
| `SingleDoAfterSuccess` | class | Single<T> | 73 | 9 |
| `SingleDoAfterTerminate` | class | Single<T> | 78 | 12 |
| `SingleDoFinally` | class | Single<T> | 83 | 14 |
| `SingleDoOnDispose` | class | Single<T> | 77 | 11 |
| `SingleDoOnError` | class | Single<T> | 56 | 6 |
| `SingleDoOnEvent` | class | Single<T> | 62 | 6 |
| `SingleDoOnSubscribe` | class | Single<T> | 69 | 8 |
| `SingleDoOnSuccess` | class | Single<T> | 55 | 6 |
| `SingleDoOnTerminate` | class | Single<T> | 62 | 6 |
| `SingleEquals` | class | Single<Boolean> | 76 | 8 |
| `SingleError` | class | Single<T> | 29 | 2 |
| `SingleFlatMap` | class | Single<R> | 102 | 14 |
| `SingleFlatMapCompletable` | class | Completable | 83 | 11 |
| `SingleFlatMapIterableFlowable` | class | Flowable<R> | 214 | 38 |
| `SingleFlatMapIterableObservable` | class | Observable<R> | 149 | 21 |
| `SingleFlatMapMaybe` | class | Maybe<R> | 109 | 16 |
| `SingleFlatMapPublisher` | class | Flowable<R> | 94 | 11 |
| `SingleFromCallable` | class | Single<T> | 44 | 5 |
| `SingleFromPublisher` | class | Single<T> | 100 | 15 |
| `SingleFromUnsafeSource` | class | Single<T> | 20 | 2 |
| `SingleHide` | class | Single<T> | 60 | 9 |
| `SingleInternalHelper` | class | Callable<NoSuchElementException> | 105 | 19 |
| `SingleJust` | class | Single<T> | 21 | 2 |
| `SingleLift` | class | Single<R> | 31 | 2 |
| `SingleMap` | class | Single<R> | 58 | 7 |
| `SingleMaterialize` | class | Single<Notification<T>> | 23 | 2 |
| `SingleNever` | class | Single<Object> | 19 | 2 |
| `SingleObserveOn` | class | Single<T> | 79 | 11 |
| `SingleOnErrorReturn` | class | Single<T> | 70 | 8 |
| `SingleResumeNext` | class | Single<T> | 74 | 9 |
| `SingleSubscribeOn` | class | Single<T> | 73 | 9 |
| `SingleTakeUntil` | class | Single<T> | 130 | 22 |
| `SingleTimeout` | class | Single<T> | 145 | 20 |
| `SingleTimer` | class | Single<Long> | 59 | 7 |
| `SingleToFlowable` | class | Flowable<T> | 58 | 10 |
| `SingleToObservable` | class | Observable<T> | 63 | 13 |
| `SingleUnsubscribeOn` | class | Single<T> | 75 | 11 |
| `SingleUsing` | class | Single<T> | 159 | 23 |
| `SingleZipArray` | class | Single<R> | 163 | 30 |
| `SingleZipIterable` | class | Single<R> | 74 | 11 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.operators.single</code></b> (click to expand)</summary>

- **`SingleAmb`** — 8 function(s): `SingleAmb()`, `subscribeActual()`, `if()`, `for()`, `AmbSingleObserver()`, `onSubscribe()`, `onSuccess()`, `onError()`
- **`SingleCache`** — 14 function(s): `onSubscribe()`, `SingleCache()`, `subscribeActual()`, `if()`, `remove()`, `add()`, `while()`, `onSuccess()`, `for()`, `onError()`, `CacheDisposable()`, `isDisposed()`, `get()`, `dispose()`
- **`SingleContains`** — 6 function(s): `SingleContains()`, `subscribeActual()`, `ContainsSingleObserver()`, `onSubscribe()`, `onSuccess()`, `onError()`
- **`SingleCreate`** — 12 function(s): `SingleCreate()`, `subscribeActual()`, `Emitter()`, `onSuccess()`, `if()`, `onError()`, `tryOnError()`, `setDisposable()`, `setCancellable()`, `dispose()`, `isDisposed()`, `toString()`
- **`SingleDefer`** — 2 function(s): `SingleDefer()`, `subscribeActual()`
- **`SingleDelay`** — 9 function(s): `SingleDelay()`, `subscribeActual()`, `Delay()`, `onSubscribe()`, `onSuccess()`, `onError()`, `OnSuccess()`, `run()`, `OnError()`
- **`SingleDelayWithCompletable`** — 9 function(s): `SingleDelayWithCompletable()`, `subscribeActual()`, `OtherObserver()`, `onSubscribe()`, `if()`, `onError()`, `onComplete()`, `dispose()`, `isDisposed()`
- **`SingleDelayWithObservable`** — 11 function(s): `SingleDelayWithObservable()`, `subscribeActual()`, `OtherSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `get()`, `onComplete()`, `onError()`, `dispose()`, `isDisposed()`
- **`SingleDelayWithPublisher`** — 10 function(s): `SingleDelayWithPublisher()`, `subscribeActual()`, `OtherSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onComplete()`, `onError()`, `dispose()`, `isDisposed()`
- **`SingleDelayWithSingle`** — 9 function(s): `SingleDelayWithSingle()`, `subscribeActual()`, `OtherObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `dispose()`, `isDisposed()`
- **`SingleDematerialize`** — 9 function(s): `SingleDematerialize()`, `subscribeActual()`, `DematerializeObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`
- **`SingleDetach`** — 9 function(s): `SingleDetach()`, `subscribeActual()`, `DetachSingleObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`
- **`SingleDoAfterSuccess`** — 9 function(s): `SingleDoAfterSuccess()`, `subscribeActual()`, `DoAfterObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `dispose()`, `isDisposed()`
- **`SingleDoAfterTerminate`** — 10 function(s): `SingleDoAfterTerminate()`, `subscribeActual()`, `DoAfterTerminateObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `onAfterTerminate()`, `onError()`, `dispose()`, `isDisposed()`
- **`SingleDoFinally`** — 10 function(s): `SingleDoFinally()`, `subscribeActual()`, `DoFinallyObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `runFinally()`, `onError()`, `dispose()`, `isDisposed()`
- **`SingleDoOnDispose`** — 10 function(s): `SingleDoOnDispose()`, `subscribeActual()`, `DoOnDisposeObserver()`, `lazySet()`, `dispose()`, `if()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `onError()`
- **`SingleDoOnError`** — 6 function(s): `SingleDoOnError()`, `subscribeActual()`, `DoOnError()`, `onSubscribe()`, `onSuccess()`, `onError()`
- **`SingleDoOnEvent`** — 6 function(s): `SingleDoOnEvent()`, `subscribeActual()`, `DoOnEvent()`, `onSubscribe()`, `onSuccess()`, `onError()`
- **`SingleDoOnSubscribe`** — 7 function(s): `SingleDoOnSubscribe()`, `subscribeActual()`, `DoOnSubscribeSingleObserver()`, `onSubscribe()`, `onSuccess()`, `if()`, `onError()`
- **`SingleDoOnSuccess`** — 6 function(s): `SingleDoOnSuccess()`, `subscribeActual()`, `DoOnSuccess()`, `onSubscribe()`, `onSuccess()`, `onError()`
- **`SingleDoOnTerminate`** — 6 function(s): `SingleDoOnTerminate()`, `subscribeActual()`, `DoOnTerminate()`, `onSubscribe()`, `onSuccess()`, `onError()`
- **`SingleEquals`** — 7 function(s): `SingleEquals()`, `subscribeActual()`, `InnerObserver()`, `onSubscribe()`, `onSuccess()`, `if()`, `onError()`
- **`SingleError`** — 2 function(s): `SingleError()`, `subscribeActual()`
- **`SingleFlatMap`** — 10 function(s): `SingleFlatMap()`, `subscribeActual()`, `SingleFlatMapCallback()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `FlatMapSingleObserver()`
- **`SingleFlatMapCompletable`** — 10 function(s): `SingleFlatMapCompletable()`, `subscribeActual()`, `FlatMapCompletableObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `if()`, `onError()`, `onComplete()`
- **`SingleFlatMapIterableFlowable`** — 16 function(s): `SingleFlatMapIterableFlowable()`, `subscribeActual()`, `FlatMapIterableObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `drain()`, `onError()`, `request()`, `cancel()`, `while()`, `slowPath()`, `requestFusion()`, `clear()`, `isEmpty()`, `poll()`
- **`SingleFlatMapIterableObservable`** — 14 function(s): `SingleFlatMapIterableObservable()`, `subscribeActual()`, `FlatMapIterableObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `while()`, `onError()`, `dispose()`, `isDisposed()`, `requestFusion()`, `clear()`, `isEmpty()`, `poll()`
- **`SingleFlatMapMaybe`** — 11 function(s): `SingleFlatMapMaybe()`, `subscribeActual()`, `FlatMapSingleObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `FlatMapMaybeObserver()`, `onComplete()`
- **`SingleFlatMapPublisher`** — 10 function(s): `SingleFlatMapPublisher()`, `subscribeActual()`, `SingleFlatMapPublisherObserver()`, `onSubscribe()`, `onSuccess()`, `onNext()`, `onComplete()`, `onError()`, `request()`, `cancel()`
- **`SingleFromCallable`** — 3 function(s): `SingleFromCallable()`, `subscribeActual()`, `if()`
- **`SingleFromPublisher`** — 10 function(s): `SingleFromPublisher()`, `subscribeActual()`, `ToSingleObserver()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `isDisposed()`, `dispose()`
- **`SingleFromUnsafeSource`** — 2 function(s): `SingleFromUnsafeSource()`, `subscribeActual()`
- **`SingleHide`** — 9 function(s): `SingleHide()`, `subscribeActual()`, `HideSingleObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`
- **`SingleInternalHelper`** — 15 function(s): `SingleInternalHelper()`, `IllegalStateException()`, `call()`, `NoSuchElementException()`, `emptyThrower()`, `apply()`, `SingleToFlowable()`, `ToFlowableIterator()`, `hasNext()`, `next()`, `remove()`, `UnsupportedOperationException()`, `ToFlowableIterable()`, `iterator()`, `SingleToObservable()`
- **`SingleJust`** — 2 function(s): `SingleJust()`, `subscribeActual()`
- **`SingleLift`** — 2 function(s): `SingleLift()`, `subscribeActual()`
- **`SingleMap`** — 6 function(s): `SingleMap()`, `subscribeActual()`, `MapSingleObserver()`, `onSubscribe()`, `onSuccess()`, `onError()`
- **`SingleMaterialize`** — 2 function(s): `SingleMaterialize()`, `subscribeActual()`
- **`SingleNever`** — 2 function(s): `SingleNever()`, `subscribeActual()`
- **`SingleObserveOn`** — 10 function(s): `SingleObserveOn()`, `subscribeActual()`, `ObserveOnSingleObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `run()`, `dispose()`, `isDisposed()`
- **`SingleOnErrorReturn`** — 7 function(s): `SingleOnErrorReturn()`, `subscribeActual()`, `OnErrorReturn()`, `onError()`, `if()`, `onSubscribe()`, `onSuccess()`
- **`SingleResumeNext`** — 9 function(s): `SingleResumeNext()`, `subscribeActual()`, `ResumeMainSingleObserver()`, `onSubscribe()`, `if()`, `onSuccess()`, `onError()`, `dispose()`, `isDisposed()`
- **`SingleSubscribeOn`** — 9 function(s): `SingleSubscribeOn()`, `subscribeActual()`, `SubscribeOnObserver()`, `onSubscribe()`, `onSuccess()`, `onError()`, `dispose()`, `isDisposed()`, `run()`
- **`SingleTakeUntil`** — 14 function(s): `SingleTakeUntil()`, `subscribeActual()`, `TakeUntilMainObserver()`, `dispose()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `if()`, `onError()`, `otherError()`, `TakeUntilOtherSubscriber()`, `onNext()`, `onComplete()`, `lazySet()`
- **`SingleTimeout`** — 11 function(s): `SingleTimeout()`, `subscribeActual()`, `TimeoutFallbackObserver()`, `onSubscribe()`, `onSuccess()`, `onError()`, `TimeoutMainObserver()`, `if()`, `run()`, `dispose()`, `isDisposed()`
- **`SingleTimer`** — 7 function(s): `SingleTimer()`, `subscribeActual()`, `TimerDisposable()`, `run()`, `dispose()`, `isDisposed()`, `setFuture()`
- **`SingleToFlowable`** — 10 function(s): `SingleToFlowable()`, `subscribeActual()`, `SingleToFlowableObserver()`, `super()`, `onSubscribe()`, `if()`, `onSuccess()`, `complete()`, `onError()`, `cancel()`
- **`SingleToObservable`** — 12 function(s): `SingleToObservable()`, `subscribeActual()`, `create()`, `SingleToObservableObserver()`, `super()`, `onSubscribe()`, `if()`, `onSuccess()`, `complete()`, `onError()`, `error()`, `dispose()`
- **`SingleUnsubscribeOn`** — 10 function(s): `SingleUnsubscribeOn()`, `subscribeActual()`, `UnsubscribeOnSingleObserver()`, `dispose()`, `if()`, `run()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `onError()`
- **`SingleUsing`** — 11 function(s): `SingleUsing()`, `subscribeActual()`, `if()`, `UsingSingleObserver()`, `super()`, `dispose()`, `disposeAfter()`, `isDisposed()`, `onSubscribe()`, `onSuccess()`, `onError()`
- **`SingleZipArray`** — 20 function(s): `SingleZipArray()`, `subscribeActual()`, `if()`, `for()`, `ZipCoordinator()`, `super()`, `isDisposed()`, `get()`, `dispose()`, `innerSuccess()`, `disposeExcept()`, `while()`, `innerError()`, `ZipSingleObserver()`, `onSubscribe()`, `onSuccess()`, `onError()`, `SingletonArrayFunc()`, `apply()`, `return()`
- **`SingleZipIterable`** — 7 function(s): `SingleZipIterable()`, `subscribeActual()`, `for()`, `if()`, `SingletonArrayFunc()`, `apply()`, `return()`

</details>

### Package `io.reactivex.internal.queue`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `MpscLinkedQueue` | class | SimplePlainQueue<T> | 124 | 35 |
| `SpscArrayQueue` | class | AtomicReferenceArray<E> implements SimplePlainQueue<E> | 105 | 28 |
| `SpscLinkedArrayQueue` | class | SimplePlainQueue<T> | 224 | 69 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.queue</code></b> (click to expand)</summary>

- **`MpscLinkedQueue`** — 21 function(s): `MpscLinkedQueue()`, `spConsumerNode()`, `xchgProducerNode()`, `offer()`, `if()`, `NullPointerException()`, `poll()`, `clear()`, `while()`, `lvProducerNode()`, `lvConsumerNode()`, `lpConsumerNode()`, `isEmpty()`, `LinkedQueueNode()`, `spValue()`, `getAndNullValue()`, `lpValue()`, `soNext()`, `lazySet()`, `lvNext()`, `get()`
- **`SpscArrayQueue`** — 17 function(s): `calcElementOffset()`, `return()`, `SpscArrayQueue()`, `super()`, `offer()`, `if()`, `NullPointerException()`, `soElement()`, `soProducerIndex()`, `poll()`, `soConsumerIndex()`, `isEmpty()`, `clear()`, `while()`, `lazySet()`, `lvElement()`, `get()`
- **`SpscLinkedArrayQueue`** — 28 function(s): `calcDirectOffset()`, `SpscLinkedArrayQueue()`, `adjustLookAheadStep()`, `soProducerIndex()`, `offer()`, `if()`, `NullPointerException()`, `writeToQueue()`, `resize()`, `soElement()`, `soNext()`, `lvNextBufferAndUnlink()`, `poll()`, `newBufferPoll()`, `soConsumerIndex()`, `peek()`, `newBufferPeek()`, `return()`, `clear()`, `while()`, `size()`, `isEmpty()`, `lvProducerIndex()`, `lvConsumerIndex()`, `lpProducerIndex()`, `lpConsumerIndex()`, `calcWrappedOffset()`, `lvElement()`

</details>

### Package `io.reactivex.internal.schedulers`  (19 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AbstractDirectTask` | class | Disposable, SchedulerRunnableIntrospection | 57 | 8 |
| `ComputationScheduler` | class | Scheduler implements SchedulerMultiWorkerSupport | 202 | 36 |
| `DisposeOnCancel` | class | Future<Object> | 44 | 6 |
| `ExecutorScheduler` | class | Scheduler | 415 | 73 |
| `ImmediateThinScheduler` | class | Scheduler | 81 | 15 |
| `InstantPeriodicTask` | class | Callable<Void>, Disposable | 83 | 11 |
| `IoScheduler` | class | Scheduler | 223 | 39 |
| `NewThreadScheduler` | class | Scheduler | 28 | 5 |
| `NewThreadWorker` | class | Scheduler.Worker implements Disposable | 131 | 20 |
| `NonBlockingThread` | class | — | 6 | 0 |
| `RxThreadFactory` | class | AtomicLong implements ThreadFactory | 48 | 9 |
| `ScheduledDirectPeriodicTask` | class | AbstractDirectTask implements Runnable | 31 | 4 |
| `ScheduledDirectTask` | class | AbstractDirectTask implements Callable<Void> | 30 | 4 |
| `ScheduledRunnable` | class | AtomicReferenceArray<Object> implements Runnable, Callable<Object>, Disposable | 123 | 22 |
| `SchedulerMultiWorkerSupport` | class | — | 16 | 2 |
| `SchedulerPoolFactory` | class | Runnable | 126 | 24 |
| `SchedulerWhen` | class | Scheduler implements Disposable | 235 | 35 |
| `SingleScheduler` | class | Scheduler | 178 | 24 |
| `TrampolineScheduler` | class | Scheduler | 183 | 28 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.schedulers</code></b> (click to expand)</summary>

- **`AbstractDirectTask`** — 6 function(s): `AbstractDirectTask()`, `dispose()`, `if()`, `isDisposed()`, `setFuture()`, `getWrappedRunnable()`
- **`ComputationScheduler`** — 20 function(s): `cap()`, `return()`, `FixedSchedulerPool()`, `for()`, `getEventLoop()`, `if()`, `shutdown()`, `createWorkers()`, `ComputationScheduler()`, `this()`, `start()`, `createWorker()`, `EventLoopWorker()`, `scheduleDirect()`, `schedulePeriodicallyDirect()`, `dispose()`, `isDisposed()`, `schedule()`, `PoolWorker()`, `super()`
- **`DisposeOnCancel`** — 5 function(s): `get()`, `isCancelled()`, `isDone()`, `DisposeOnCancel()`, `cancel()`
- **`ExecutorScheduler`** — 22 function(s): `ExecutorScheduler()`, `createWorker()`, `ExecutorWorker()`, `scheduleDirect()`, `if()`, `schedulePeriodicallyDirect()`, `schedule()`, `dispose()`, `isDisposed()`, `run()`, `while()`, `BooleanRunnable()`, `lazySet()`, `get()`, `SequentialDispose()`, `InterruptibleRunnable()`, `cleanup()`, `set()`, `DelayedRunnable()`, `super()`, `getWrappedRunnable()`, `DelayedDispose()`
- **`ImmediateThinScheduler`** — 10 function(s): `ImmediateThinScheduler()`, `scheduleDirect()`, `UnsupportedOperationException()`, `schedulePeriodicallyDirect()`, `createWorker()`, `dispose()`, `isDisposed()`, `ImmediateThinWorker()`, `schedule()`, `schedulePeriodically()`
- **`InstantPeriodicTask`** — 7 function(s): `InstantPeriodicTask()`, `call()`, `setRest()`, `dispose()`, `if()`, `isDisposed()`, `setFirst()`
- **`IoScheduler`** — 22 function(s): `CachedWorkerPool()`, `if()`, `run()`, `evictExpiredWorkers()`, `get()`, `while()`, `release()`, `now()`, `shutdown()`, `IoScheduler()`, `this()`, `start()`, `createWorker()`, `EventLoopWorker()`, `size()`, `dispose()`, `isDisposed()`, `schedule()`, `ThreadWorker()`, `super()`, `getExpirationTime()`, `setExpirationTime()`
- **`NewThreadScheduler`** — 4 function(s): `NewThreadScheduler()`, `this()`, `createWorker()`, `NewThreadWorker()`
- **`NewThreadWorker`** — 9 function(s): `NewThreadWorker()`, `schedule()`, `if()`, `scheduleActual()`, `scheduleDirect()`, `schedulePeriodicallyDirect()`, `dispose()`, `shutdown()`, `isDisposed()`
- **`RxThreadFactory`** — 6 function(s): `RxThreadFactory()`, `this()`, `newThread()`, `toString()`, `RxCustomThread()`, `super()`
- **`ScheduledDirectPeriodicTask`** — 4 function(s): `ScheduledDirectPeriodicTask()`, `super()`, `run()`, `lazySet()`
- **`ScheduledDirectTask`** — 4 function(s): `ScheduledDirectTask()`, `super()`, `call()`, `lazySet()`
- **`ScheduledRunnable`** — 10 function(s): `ScheduledRunnable()`, `super()`, `lazySet()`, `call()`, `run()`, `if()`, `setFuture()`, `dispose()`, `while()`, `isDisposed()`
- **`SchedulerMultiWorkerSupport`** — 2 function(s): `onWorker()`, `createWorkers()`
- **`SchedulerPoolFactory`** — 13 function(s): `SchedulerPoolFactory()`, `IllegalStateException()`, `start()`, `tryStart()`, `if()`, `while()`, `shutdown()`, `PurgeProperties()`, `load()`, `create()`, `tryPutIntoPool()`, `ScheduledTask()`, `run()`
- **`SchedulerWhen`** — 21 function(s): `SchedulerWhen()`, `dispose()`, `isDisposed()`, `createWorker()`, `callActual()`, `ScheduledAction()`, `super()`, `call()`, `if()`, `get()`, `ImmediateAction()`, `DelayedAction()`, `OnCompletedAction()`, `run()`, `CreateWorkerFunction()`, `apply()`, `WorkerCompletable()`, `subscribeActual()`, `QueueWorker()`, `schedule()`, `SubscribedDisposable()`
- **`SingleScheduler`** — 13 function(s): `SingleScheduler()`, `this()`, `createExecutor()`, `start()`, `if()`, `shutdown()`, `createWorker()`, `ScheduledWorker()`, `scheduleDirect()`, `schedulePeriodicallyDirect()`, `schedule()`, `dispose()`, `isDisposed()`
- **`TrampolineScheduler`** — 15 function(s): `instance()`, `createWorker()`, `TrampolineWorker()`, `scheduleDirect()`, `schedule()`, `enqueue()`, `if()`, `while()`, `dispose()`, `isDisposed()`, `AppendToQueueTask()`, `run()`, `TimedRunnable()`, `compareTo()`, `SleepingRunnable()`

</details>

### Package `io.reactivex.internal.subscribers`  (22 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BasicFuseableConditionalSubscriber` | class | ConditionalSubscriber<T>, QueueSubscription<R> | 112 | 25 |
| `BasicFuseableSubscriber` | class | FlowableSubscriber<T>, QueueSubscription<R> | 112 | 25 |
| `BlockingBaseSubscriber` | class | CountDownLatch implements FlowableSubscriber<T> | 62 | 13 |
| `BlockingFirstSubscriber` | class | BlockingBaseSubscriber<T> | 26 | 6 |
| `BlockingLastSubscriber` | class | BlockingBaseSubscriber<T> | 17 | 3 |
| `BlockingSubscriber` | class | AtomicReference<Subscription> implements FlowableSubscriber<T>, Subscription | 58 | 12 |
| `BoundedSubscriber` | class | AtomicReference<Subscription> implements FlowableSubscriber<T>, Subscription, Disposabl... | 124 | 24 |
| `DeferredScalarSubscriber` | class | DeferredScalarSubscription<R> implements FlowableSubscriber<T> | 46 | 9 |
| `ForEachWhileSubscriber` | class | AtomicReference<Subscription> implements FlowableSubscriber<T>, Disposable | 91 | 16 |
| `FutureSubscriber` | class | CountDownLatch implements FlowableSubscriber<T>, Future<T>, Subscription | 142 | 38 |
| `InnerQueuedSubscriber` | class | AtomicReference<Subscription> implements FlowableSubscriber<T>, Subscription | 114 | 22 |
| `InnerQueuedSubscriberSupport` | class | — | 13 | 4 |
| `LambdaSubscriber` | class | AtomicReference<Subscription> implements FlowableSubscriber<T>, Subscription, Disposabl... | 112 | 22 |
| `QueueDrainSubscriber` | class | QueueDrainSubscriberPad4 implements FlowableSubscriber<T>, QueueDrain<U, V> | 134 | 27 |
| `QueueDrainSubscriberPad0` | class | — | 22 | 0 |
| `QueueDrainSubscriberPad2` | class | QueueDrainSubscriberWip | 22 | 0 |
| `QueueDrainSubscriberPad3` | class | QueueDrainSubscriberPad2 | 10 | 0 |
| `QueueDrainSubscriberPad4` | class | QueueDrainSubscriberPad3 | 22 | 0 |
| `QueueDrainSubscriberWip` | class | QueueDrainSubscriberPad0 | 10 | 0 |
| `SinglePostCompleteSubscriber` | class | AtomicLong implements FlowableSubscriber<T>, Subscription | 87 | 17 |
| `StrictSubscriber` | class | AtomicInteger implements FlowableSubscriber<T>, Subscription | 75 | 14 |
| `SubscriberResourceWrapper` | class | AtomicReference<Disposable> implements FlowableSubscriber<T>, Disposable, Subscription | 72 | 13 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.subscribers</code></b> (click to expand)</summary>

- **`BasicFuseableConditionalSubscriber`** — 15 function(s): `afterDownstream()`, `beforeDownstream()`, `BasicFuseableConditionalSubscriber()`, `onSubscribe()`, `if()`, `onError()`, `fail()`, `onComplete()`, `transitiveBoundaryFusion()`, `request()`, `cancel()`, `isEmpty()`, `clear()`, `offer()`, `UnsupportedOperationException()`
- **`BasicFuseableSubscriber`** — 15 function(s): `afterDownstream()`, `beforeDownstream()`, `BasicFuseableSubscriber()`, `onSubscribe()`, `if()`, `onError()`, `fail()`, `onComplete()`, `transitiveBoundaryFusion()`, `request()`, `cancel()`, `isEmpty()`, `clear()`, `offer()`, `UnsupportedOperationException()`
- **`BlockingBaseSubscriber`** — 8 function(s): `BlockingBaseSubscriber()`, `super()`, `onSubscribe()`, `if()`, `onComplete()`, `countDown()`, `blockingGet()`, `await()`
- **`BlockingFirstSubscriber`** — 4 function(s): `onNext()`, `if()`, `countDown()`, `onError()`
- **`BlockingLastSubscriber`** — 3 function(s): `onNext()`, `onError()`, `countDown()`
- **`BlockingSubscriber`** — 10 function(s): `BlockingSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `get()`, `cancel()`, `isCancelled()`
- **`BoundedSubscriber`** — 13 function(s): `BoundedSubscriber()`, `onSubscribe()`, `if()`, `onError()`, `onNext()`, `get()`, `lazySet()`, `onComplete()`, `dispose()`, `cancel()`, `isDisposed()`, `request()`, `hasCustomOnError()`
- **`DeferredScalarSubscriber`** — 8 function(s): `DeferredScalarSubscriber()`, `super()`, `onSubscribe()`, `if()`, `onError()`, `onComplete()`, `complete()`, `cancel()`
- **`ForEachWhileSubscriber`** — 9 function(s): `ForEachWhileSubscriber()`, `onSubscribe()`, `onNext()`, `if()`, `dispose()`, `onComplete()`, `onError()`, `isDisposed()`, `get()`
- **`FutureSubscriber`** — 18 function(s): `cancel()`, `request()`, `FutureSubscriber()`, `super()`, `if()`, `countDown()`, `isCancelled()`, `isDone()`, `getCount()`, `get()`, `await()`, `CancellationException()`, `ExecutionException()`, `TimeoutException()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`
- **`InnerQueuedSubscriber`** — 13 function(s): `InnerQueuedSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `get()`, `requestOne()`, `cancel()`, `isDone()`, `setDone()`, `queue()`
- **`InnerQueuedSubscriberSupport`** — 4 function(s): `drain()`, `innerComplete()`, `innerError()`, `innerNext()`
- **`LambdaSubscriber`** — 13 function(s): `LambdaSubscriber()`, `onSubscribe()`, `if()`, `onError()`, `onNext()`, `get()`, `lazySet()`, `onComplete()`, `dispose()`, `cancel()`, `isDisposed()`, `request()`, `hasCustomOnError()`
- **`QueueDrainSubscriber`** — 13 function(s): `accept()`, `QueueDrainSubscriber()`, `cancelled()`, `done()`, `enter()`, `fastEnter()`, `fastPathEmitMax()`, `if()`, `produced()`, `fastPathOrderedEmitMax()`, `error()`, `leave()`, `requested()`
- **`SinglePostCompleteSubscriber`** — 9 function(s): `onDrop()`, `SinglePostCompleteSubscriber()`, `onSubscribe()`, `if()`, `complete()`, `while()`, `lazySet()`, `request()`, `cancel()`
- **`StrictSubscriber`** — 8 function(s): `StrictSubscriber()`, `request()`, `if()`, `cancel()`, `onError()`, `onSubscribe()`, `onNext()`, `onComplete()`
- **`SubscriberResourceWrapper`** — 11 function(s): `SubscriberResourceWrapper()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `onComplete()`, `request()`, `dispose()`, `isDisposed()`, `cancel()`, `setResource()`

</details>

### Package `io.reactivex.internal.subscriptions`  (10 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ArrayCompositeSubscription` | class | AtomicReferenceArray<Subscription> implements Disposable | 67 | 15 |
| `AsyncSubscription` | class | AtomicLong implements Subscription, Disposable | 58 | 11 |
| `BasicIntQueueSubscription` | class | AtomicInteger implements QueueSubscription<T> | 20 | 4 |
| `BasicQueueSubscription` | class | AtomicLong implements QueueSubscription<T> | 20 | 4 |
| `BooleanSubscription` | class | AtomicBoolean implements Subscription | 29 | 6 |
| `DeferredScalarSubscription` | class | BasicIntQueueSubscription<T> | 131 | 33 |
| `EmptySubscription` | class | QueueSubscription<Object> | 65 | 13 |
| `ScalarSubscription` | class | AtomicInteger implements QueueSubscription<T> | 77 | 20 |
| `SubscriptionArbiter` | class | AtomicInteger implements Subscription | 193 | 49 |
| `SubscriptionHelper` | class | Subscription | 149 | 34 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.subscriptions</code></b> (click to expand)</summary>

- **`ArrayCompositeSubscription`** — 9 function(s): `ArrayCompositeSubscription()`, `super()`, `setResource()`, `if()`, `replaceResource()`, `dispose()`, `for()`, `isDisposed()`, `get()`
- **`AsyncSubscription`** — 9 function(s): `AsyncSubscription()`, `this()`, `request()`, `cancel()`, `dispose()`, `isDisposed()`, `setResource()`, `replaceResource()`, `setSubscription()`
- **`BasicIntQueueSubscription`** — 2 function(s): `offer()`, `UnsupportedOperationException()`
- **`BasicQueueSubscription`** — 2 function(s): `offer()`, `UnsupportedOperationException()`
- **`BooleanSubscription`** — 6 function(s): `request()`, `cancel()`, `lazySet()`, `isCancelled()`, `get()`, `toString()`
- **`DeferredScalarSubscription`** — 16 function(s): `DeferredScalarSubscription()`, `request()`, `if()`, `complete()`, `while()`, `lazySet()`, `requestFusion()`, `poll()`, `isEmpty()`, `get()`, `clear()`, `cancel()`, `set()`, `isCancelled()`, `tryCancel()`, `getAndSet()`
- **`EmptySubscription`** — 11 function(s): `cancel()`, `clear()`, `isEmpty()`, `poll()`, `requestFusion()`, `toString()`, `request()`, `error()`, `complete()`, `offer()`, `UnsupportedOperationException()`
- **`ScalarSubscription`** — 13 function(s): `requestFusion()`, `ScalarSubscription()`, `request()`, `if()`, `cancel()`, `lazySet()`, `isCancelled()`, `get()`, `offer()`, `UnsupportedOperationException()`, `poll()`, `isEmpty()`, `clear()`
- **`SubscriptionArbiter`** — 10 function(s): `SubscriptionArbiter()`, `setSubscription()`, `if()`, `drainLoop()`, `drain()`, `request()`, `produced()`, `cancel()`, `isUnbounded()`, `isCancelled()`
- **`SubscriptionHelper`** — 11 function(s): `cancel()`, `request()`, `validate()`, `if()`, `reportSubscriptionSet()`, `reportMoreProduced()`, `set()`, `setOnce()`, `replace()`, `deferredSetOnce()`, `deferredRequest()`

</details>

### Package `io.reactivex.internal.util`  (25 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AppendOnlyLinkedArrayList` | class | Predicate<T> | 135 | 26 |
| `ArrayListSupplier` | class | Callable<List<Object>>, Function<Object, List<Object>> | 30 | 6 |
| `AtomicThrowable` | class | AtomicReference<Throwable> | 21 | 4 |
| `BackpressureHelper` | class | — | 90 | 18 |
| `BlockingHelper` | class | — | 36 | 10 |
| `BlockingIgnoringReceiver` | class | CountDownLatch implements Consumer<Throwable>, Action | 26 | 6 |
| `ConnectConsumer` | class | Consumer<Disposable> | 15 | 1 |
| `EmptyComponent` | class | FlowableSubscriber<Object>, Observer<Object>, MaybeObserver<Object>, SingleObserver<Obj... | 69 | 12 |
| `EndConsumerHelper` | class | — | 78 | 20 |
| `ErrorMode` | class | — | 9 | 0 |
| `ExceptionHelper` | class | Throwable | 87 | 22 |
| `HalfSerializer` | class | — | 88 | 22 |
| `HashMapSupplier` | class | Callable<Map<Object, Object>> | 20 | 3 |
| `LinkedArrayList` | class | — | 67 | 9 |
| `ListAddBiConsumer` | class | BiFunction<List, Object, List> | 20 | 2 |
| `MergerBiFunction` | class | BiFunction<List<T>, List<T>, List<T>> | 64 | 11 |
| `NotificationLite` | class | Serializable | 185 | 43 |
| `ObservableQueueDrain` | class | — | 19 | 6 |
| `OpenHashSet` | class | — | 149 | 30 |
| `Pow2` | class | — | 17 | 5 |
| `QueueDrain` | class | — | 23 | 8 |
| `QueueDrainHelper` | class | — | 265 | 59 |
| `SorterFunction` | class | Function<List<T>, List<T>> | 22 | 2 |
| `SuppressAnimalSniffer` | class | — | 15 | 0 |
| `VolatileSizeArrayList` | class | AtomicInteger implements List<T>, RandomAccess | 173 | 41 |

<details>
<summary><b>Function list for <code>io.reactivex.internal.util</code></b> (click to expand)</summary>

- **`AppendOnlyLinkedArrayList`** — 9 function(s): `test()`, `AppendOnlyLinkedArrayList()`, `add()`, `if()`, `setFirst()`, `forEachWhile()`, `for()`, `accept()`, `while()`
- **`ArrayListSupplier`** — 5 function(s): `asCallable()`, `asFunction()`, `call()`, `ArrayList()`, `apply()`
- **`AtomicThrowable`** — 4 function(s): `addThrowable()`, `terminate()`, `isTerminated()`, `get()`
- **`BackpressureHelper`** — 9 function(s): `addCap()`, `if()`, `BackpressureHelper()`, `IllegalStateException()`, `multiplyCap()`, `add()`, `addCancel()`, `produced()`, `producedCancel()`
- **`BlockingHelper`** — 5 function(s): `BlockingHelper()`, `IllegalStateException()`, `awaitForComplete()`, `if()`, `verifyNonBlocking()`
- **`BlockingIgnoringReceiver`** — 5 function(s): `BlockingIgnoringReceiver()`, `super()`, `accept()`, `countDown()`, `run()`
- **`ConnectConsumer`** — 1 function(s): `accept()`
- **`EmptyComponent`** — 11 function(s): `cancel()`, `dispose()`, `isDisposed()`, `onComplete()`, `onNext()`, `onSuccess()`, `request()`, `asSubscriber()`, `asObserver()`, `onSubscribe()`, `onError()`
- **`EndConsumerHelper`** — 7 function(s): `EndConsumerHelper()`, `IllegalStateException()`, `validate()`, `if()`, `reportDoubleSubscription()`, `setOnce()`, `composeMessage()`
- **`ExceptionHelper`** — 17 function(s): `ExceptionHelper()`, `IllegalStateException()`, `wrapOrThrow()`, `if()`, `throw()`, `return()`, `RuntimeException()`, `addThrowable()`, `terminate()`, `flatten()`, `while()`, `for()`, `throwIfThrowable()`, `timeoutMessage()`, `fillInStackTrace()`, `Termination()`, `super()`
- **`HalfSerializer`** — 6 function(s): `HalfSerializer()`, `IllegalStateException()`, `onNext()`, `if()`, `onError()`, `onComplete()`
- **`HashMapSupplier`** — 3 function(s): `asCallable()`, `call()`, `HashMap()`
- **`LinkedArrayList`** — 7 function(s): `LinkedArrayList()`, `add()`, `if()`, `head()`, `size()`, `toString()`, `while()`
- **`ListAddBiConsumer`** — 2 function(s): `instance()`, `apply()`
- **`MergerBiFunction`** — 5 function(s): `MergerBiFunction()`, `apply()`, `if()`, `ArrayList()`, `while()`
- **`NotificationLite`** — 23 function(s): `getValue()`, `next()`, `toString()`, `ErrorNotification()`, `hashCode()`, `equals()`, `if()`, `SubscriptionNotification()`, `DisposableNotification()`, `complete()`, `error()`, `subscription()`, `disposable()`, `isComplete()`, `isError()`, `isSubscription()`, `isDisposable()`, `getError()`, `return()`, `getSubscription()`, `getDisposable()`, `accept()`, `acceptFull()`
- **`ObservableQueueDrain`** — 6 function(s): `accept()`, `cancelled()`, `done()`, `enter()`, `error()`, `leave()`
- **`OpenHashSet`** — 11 function(s): `mix()`, `OpenHashSet()`, `this()`, `add()`, `if()`, `rehash()`, `remove()`, `removeEntry()`, `while()`, `keys()`, `size()`
- **`Pow2`** — 5 function(s): `isPowerOfTwo()`, `return()`, `Pow2()`, `IllegalStateException()`, `roundToPowerOfTwo()`
- **`QueueDrain`** — 8 function(s): `accept()`, `cancelled()`, `done()`, `enter()`, `error()`, `leave()`, `produced()`, `requested()`
- **`QueueDrainHelper`** — 15 function(s): `QueueDrainHelper()`, `IllegalStateException()`, `drainMaxLoop()`, `while()`, `if()`, `checkTerminated()`, `drainLoop()`, `createQueue()`, `SpscLinkedArrayQueue()`, `SpscArrayQueue()`, `request()`, `postCompleteRequest()`, `postCompleteDrain()`, `isCancelled()`, `postComplete()`
- **`SorterFunction`** — 2 function(s): `SorterFunction()`, `apply()`
- **`VolatileSizeArrayList`** — 25 function(s): `VolatileSizeArrayList()`, `size()`, `get()`, `isEmpty()`, `contains()`, `iterator()`, `toArray()`, `return()`, `add()`, `lazySet()`, `remove()`, `containsAll()`, `addAll()`, `removeAll()`, `retainAll()`, `clear()`, `set()`, `indexOf()`, `lastIndexOf()`, `listIterator()`, `subList()`, `equals()`, `if()`, `hashCode()`, `toString()`

</details>

### Package `io.reactivex.observables`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ConnectableObservable` | class | Observable<T> | 88 | 20 |
| `GroupedObservable` | class | Observable<T> | 20 | 2 |

<details>
<summary><b>Function list for <code>io.reactivex.observables</code></b> (click to expand)</summary>

- **`ConnectableObservable`** — 4 function(s): `connect()`, `refCount()`, `autoConnect()`, `if()`
- **`GroupedObservable`** — 2 function(s): `GroupedObservable()`, `getKey()`

</details>

### Package `io.reactivex.observers`  (14 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BaseTestConsumer` | class | BaseTestConsumer<T, U>> implements Disposable | 551 | 179 |
| `DefaultObserver` | class | Observer<T> | 30 | 5 |
| `DisposableCompletableObserver` | class | CompletableObserver, Disposable | 34 | 6 |
| `DisposableMaybeObserver` | class | MaybeObserver<T>, Disposable | 34 | 6 |
| `DisposableObserver` | class | Observer<T>, Disposable | 34 | 6 |
| `DisposableSingleObserver` | class | SingleObserver<T>, Disposable | 34 | 6 |
| `LambdaConsumerIntrospection` | class | — | 7 | 1 |
| `ResourceCompletableObserver` | class | CompletableObserver, Disposable | 44 | 8 |
| `ResourceMaybeObserver` | class | MaybeObserver<T>, Disposable | 44 | 8 |
| `ResourceObserver` | class | Observer<T>, Disposable | 44 | 8 |
| `ResourceSingleObserver` | class | SingleObserver<T>, Disposable | 44 | 8 |
| `SafeObserver` | class | Observer<T>, Disposable | 174 | 24 |
| `SerializedObserver` | class | Observer<T>, Disposable | 151 | 33 |
| `TestObserver` | class | BaseTestConsumer<T, TestObserver<T>> implements Observer<T>, Disposable, MaybeObserver<... | 270 | 64 |

<details>
<summary><b>Function list for <code>io.reactivex.observers</code></b> (click to expand)</summary>

- **`BaseTestConsumer`** — 51 function(s): `assertNotSubscribed()`, `assertSubscribed()`, `lastThread()`, `values()`, `errors()`, `completions()`, `isTerminated()`, `valueCount()`, `errorCount()`, `fail()`, `if()`, `await()`, `assertComplete()`, `assertNotComplete()`, `assertNoErrors()`, `assertError()`, `while()`, `assertValue()`, `assertNever()`, `for()`, `assertValueAt()`, `valueAndClass()`, `assertValueCount()`, `assertNoValues()`, `assertValues()`, `assertValuesOnly()`, `return()`, `assertValueSet()`, `assertValueSetOnly()`, `assertValueSequence()`, `assertValueSequenceOnly()`, `assertTerminated()`, `assertNotTerminated()`, `awaitTerminalEvent()`, `assertErrorMessage()`, `getEvents()`, `assertResult()`, `assertFailure()`, `assertFailureAndMessage()`, `awaitDone()`, `dispose()`, `assertEmpty()`, `withTag()`, `run()`, `sleep()`, `RuntimeException()`, `awaitCount()`, `isTimeout()`, `clearTimeout()`, `assertTimeout()`, `assertNoTimeout()`
- **`DefaultObserver`** — 4 function(s): `onStart()`, `onSubscribe()`, `if()`, `cancel()`
- **`DisposableCompletableObserver`** — 5 function(s): `onStart()`, `onSubscribe()`, `if()`, `isDisposed()`, `dispose()`
- **`DisposableMaybeObserver`** — 5 function(s): `onStart()`, `onSubscribe()`, `if()`, `isDisposed()`, `dispose()`
- **`DisposableObserver`** — 5 function(s): `onStart()`, `onSubscribe()`, `if()`, `isDisposed()`, `dispose()`
- **`DisposableSingleObserver`** — 5 function(s): `onStart()`, `onSubscribe()`, `if()`, `isDisposed()`, `dispose()`
- **`LambdaConsumerIntrospection`** — 1 function(s): `hasCustomOnError()`
- **`ResourceCompletableObserver`** — 6 function(s): `onStart()`, `add()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`
- **`ResourceMaybeObserver`** — 6 function(s): `onStart()`, `add()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`
- **`ResourceObserver`** — 6 function(s): `onStart()`, `add()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`
- **`ResourceSingleObserver`** — 6 function(s): `onStart()`, `add()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`
- **`SafeObserver`** — 10 function(s): `SafeObserver()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onNextNoSubscription()`, `onError()`, `onComplete()`, `onCompleteNoSubscription()`
- **`SerializedObserver`** — 11 function(s): `SerializedObserver()`, `this()`, `onSubscribe()`, `if()`, `dispose()`, `isDisposed()`, `onNext()`, `onError()`, `synchronized()`, `emitLoop()`, `onComplete()`
- **`TestObserver`** — 26 function(s): `onComplete()`, `onError()`, `onNext()`, `onSubscribe()`, `create()`, `TestObserver()`, `this()`, `if()`, `while()`, `isCancelled()`, `isDisposed()`, `cancel()`, `dispose()`, `hasSubscription()`, `assertSubscribed()`, `fail()`, `assertNotSubscribed()`, `assertOf()`, `setInitialFusionMode()`, `assertFusionMode()`, `AssertionError()`, `fusionModeToString()`, `switch()`, `assertFuseable()`, `assertNotFuseable()`, `onSuccess()`

</details>

### Package `io.reactivex.parallel`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ParallelFailureHandling` | class | BiFunction<Long, Throwable, ParallelFailureHandling> | 17 | 1 |
| `ParallelFlowable` | class | — | 390 | 65 |
| `ParallelFlowableConverter` | class | — | 10 | 1 |
| `ParallelTransformer` | class | — | 10 | 1 |

<details>
<summary><b>Function list for <code>io.reactivex.parallel</code></b> (click to expand)</summary>

- **`ParallelFailureHandling`** — 1 function(s): `apply()`
- **`ParallelFlowable`** — 32 function(s): `parallelism()`, `subscribe()`, `validate()`, `if()`, `for()`, `from()`, `as()`, `return()`, `map()`, `filter()`, `runOn()`, `reduce()`, `sequential()`, `sequentialDelayError()`, `sorted()`, `toSortedList()`, `doOnNext()`, `doAfterNext()`, `doOnError()`, `doOnComplete()`, `doAfterTerminated()`, `doOnSubscribe()`, `doOnRequest()`, `doOnCancel()`, `collect()`, `fromArray()`, `IllegalArgumentException()`, `to()`, `compose()`, `flatMap()`, `concatMap()`, `concatMapDelayError()`
- **`ParallelFlowableConverter`** — 1 function(s): `apply()`
- **`ParallelTransformer`** — 1 function(s): `apply()`

</details>

### Package `io.reactivex.plugins`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `RxJavaPlugins` | class | — | 698 | 162 |

<details>
<summary><b>Function list for <code>io.reactivex.plugins</code></b> (click to expand)</summary>

- **`RxJavaPlugins`** — 61 function(s): `lockdown()`, `isLockdown()`, `setFailOnNonBlockingScheduler()`, `if()`, `IllegalStateException()`, `isFailOnNonBlockingScheduler()`, `initComputationScheduler()`, `callRequireNonNull()`, `applyRequireNonNull()`, `initIoScheduler()`, `initNewThreadScheduler()`, `initSingleScheduler()`, `onComputationScheduler()`, `onError()`, `uncaught()`, `isBug()`, `return()`, `onIoScheduler()`, `onNewThreadScheduler()`, `onSchedule()`, `onSingleScheduler()`, `reset()`, `setErrorHandler()`, `setScheduleHandler()`, `setComputationSchedulerHandler()`, `setInitComputationSchedulerHandler()`, `setIoSchedulerHandler()`, `setInitIoSchedulerHandler()`, `setSingleSchedulerHandler()`, `setInitSingleSchedulerHandler()`, `setNewThreadSchedulerHandler()`, `setInitNewThreadSchedulerHandler()`, `setOnFlowableAssembly()`, `setOnFlowableSubscribe()`, `setOnObservableAssembly()`, `setOnObservableSubscribe()`, `setOnSingleAssembly()`, `setOnSingleSubscribe()`, `setOnCompletableAssembly()`, `setOnCompletableSubscribe()`, `setOnConnectableFlowableAssembly()`, `setOnConnectableObservableAssembly()`, `setOnMaybeAssembly()`, `setOnMaybeSubscribe()`, `setOnParallelAssembly()`, `setOnBeforeBlocking()`, `unlock()`, `onSubscribe()`, `onAssembly()`, `onBeforeBlocking()`, `getOnBeforeBlocking()`, `createComputationScheduler()`, `ComputationScheduler()`, `createIoScheduler()`, `IoScheduler()`, `createNewThreadScheduler()`, `NewThreadScheduler()`, `createSingleScheduler()`, `SingleScheduler()`, `apply()`, `RxJavaPlugins()`

</details>

### Package `io.reactivex.processors`  (8 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AsyncProcessor` | class | FlowableProcessor<T> | 256 | 50 |
| `BehaviorProcessor` | class | FlowableProcessor<T> | 424 | 92 |
| `FlowableProcessor` | class | Flowable<T> implements Processor<T, T>, FlowableSubscriber<T> | 27 | 5 |
| `MulticastProcessor` | class | FlowableProcessor<T> | 447 | 93 |
| `PublishProcessor` | class | FlowableProcessor<T> | 245 | 53 |
| `ReplayProcessor` | class | FlowableProcessor<T> | 898 | 173 |
| `SerializedProcessor` | class | FlowableProcessor<T> | 172 | 38 |
| `UnicastProcessor` | class | FlowableProcessor<T> | 352 | 70 |

<details>
<summary><b>Function list for <code>io.reactivex.processors</code></b> (click to expand)</summary>

- **`AsyncProcessor`** — 21 function(s): `create()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `for()`, `onComplete()`, `while()`, `hasSubscribers()`, `hasThrowable()`, `hasComplete()`, `getThrowable()`, `subscribeActual()`, `remove()`, `add()`, `hasValue()`, `getValue()`, `getValues()`, `AsyncSubscription()`, `super()`, `cancel()`
- **`BehaviorProcessor`** — 36 function(s): `create()`, `createDefault()`, `this()`, `subscribeActual()`, `if()`, `remove()`, `onSubscribe()`, `onNext()`, `setCurrent()`, `for()`, `onError()`, `onComplete()`, `offer()`, `hasSubscribers()`, `subscriberCount()`, `getThrowable()`, `getValue()`, `return()`, `getValues()`, `hasComplete()`, `hasThrowable()`, `hasValue()`, `add()`, `while()`, `terminate()`, `BehaviorSubscription()`, `request()`, `cancel()`, `emitFirst()`, `synchronized()`, `emitLoop()`, `emitNext()`, `test()`, `decrementAndGet()`, `isFull()`, `get()`
- **`FlowableProcessor`** — 5 function(s): `getThrowable()`, `hasComplete()`, `hasSubscribers()`, `hasThrowable()`, `toSerialized()`
- **`MulticastProcessor`** — 22 function(s): `create()`, `start()`, `if()`, `startUnbounded()`, `onSubscribe()`, `drain()`, `onNext()`, `onError()`, `offer()`, `onComplete()`, `hasSubscribers()`, `hasThrowable()`, `hasComplete()`, `getThrowable()`, `subscribeActual()`, `remove()`, `add()`, `while()`, `for()`, `MulticastSubscription()`, `request()`, `cancel()`
- **`PublishProcessor`** — 22 function(s): `create()`, `subscribeActual()`, `if()`, `remove()`, `add()`, `while()`, `onSubscribe()`, `onNext()`, `for()`, `onError()`, `onComplete()`, `offer()`, `hasSubscribers()`, `getThrowable()`, `hasThrowable()`, `hasComplete()`, `PublishSubscription()`, `cancel()`, `request()`, `isCancelled()`, `get()`, `isFull()`
- **`ReplayProcessor`** — 43 function(s): `complete()`, `error()`, `getError()`, `getValue()`, `getValues()`, `isDone()`, `next()`, `replay()`, `size()`, `trimHead()`, `create()`, `createWithSize()`, `createUnbounded()`, `createWithTime()`, `createWithTimeAndSize()`, `subscribeActual()`, `if()`, `remove()`, `onSubscribe()`, `onNext()`, `for()`, `onError()`, `onComplete()`, `hasSubscribers()`, `subscriberCount()`, `getThrowable()`, `cleanupBuffer()`, `hasComplete()`, `hasThrowable()`, `hasValue()`, `add()`, `while()`, `ReplaySubscription()`, `request()`, `cancel()`, `UnboundedReplayBuffer()`, `Node()`, `TimedNode()`, `SizeBoundReplayBuffer()`, `trim()`, `SizeAndTimeBoundReplayBuffer()`, `trimFinal()`, `getHead()`
- **`SerializedProcessor`** — 14 function(s): `SerializedProcessor()`, `subscribeActual()`, `onSubscribe()`, `if()`, `synchronized()`, `emitLoop()`, `onNext()`, `onError()`, `onComplete()`, `while()`, `hasSubscribers()`, `hasThrowable()`, `getThrowable()`, `hasComplete()`
- **`UnicastProcessor`** — 25 function(s): `create()`, `this()`, `doTerminate()`, `if()`, `drainRegular()`, `while()`, `drainFused()`, `drain()`, `checkTerminated()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `subscribeActual()`, `UnicastQueueSubscription()`, `poll()`, `isEmpty()`, `clear()`, `requestFusion()`, `request()`, `cancel()`, `hasSubscribers()`, `getThrowable()`, `hasComplete()`, `hasThrowable()`

</details>

### Package `io.reactivex.schedulers`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `SchedulerRunnableIntrospection` | class | — | 10 | 1 |
| `Schedulers` | class | Callable<Scheduler> | 177 | 35 |
| `TestScheduler` | class | Scheduler | 159 | 29 |
| `Timed` | class | — | 53 | 10 |

<details>
<summary><b>Function list for <code>io.reactivex.schedulers</code></b> (click to expand)</summary>

- **`SchedulerRunnableIntrospection`** — 1 function(s): `getWrappedRunnable()`
- **`Schedulers`** — 20 function(s): `SingleHolder()`, `ComputationHolder()`, `IoHolder()`, `NewThreadHolder()`, `Schedulers()`, `IllegalStateException()`, `computation()`, `io()`, `trampoline()`, `newThread()`, `single()`, `from()`, `ExecutorScheduler()`, `shutdown()`, `start()`, `IOTask()`, `call()`, `NewThreadTask()`, `SingleTask()`, `ComputationTask()`
- **`TestScheduler`** — 17 function(s): `TestScheduler()`, `TimedRunnable()`, `toString()`, `compareTo()`, `if()`, `now()`, `advanceTimeBy()`, `advanceTimeTo()`, `triggerActions()`, `while()`, `createWorker()`, `TestWorker()`, `dispose()`, `isDisposed()`, `schedule()`, `QueueRemove()`, `run()`
- **`Timed`** — 9 function(s): `Timed()`, `value()`, `unit()`, `time()`, `equals()`, `if()`, `hashCode()`, `return()`, `toString()`

</details>

### Package `io.reactivex.subjects`  (10 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AsyncSubject` | class | Subject<T> | 253 | 50 |
| `BehaviorSubject` | class | Subject<T> | 368 | 75 |
| `CompletableSubject` | class | Completable implements CompletableObserver | 178 | 36 |
| `MaybeSubject` | class | Maybe<T> implements MaybeObserver<T> | 208 | 42 |
| `PublishSubject` | class | Subject<T> | 207 | 41 |
| `ReplaySubject` | class | Subject<T> | 836 | 169 |
| `SerializedSubject` | class | Subject<T> implements AppendOnlyLinkedArrayList.NonThrowingPredicate<Object> | 177 | 39 |
| `SingleSubject` | class | Single<T> implements SingleObserver<T> | 189 | 37 |
| `Subject` | class | Observable<T> implements Observer<T> | 24 | 5 |
| `UnicastSubject` | class | Subject<T> | 323 | 66 |

<details>
<summary><b>Function list for <code>io.reactivex.subjects</code></b> (click to expand)</summary>

- **`AsyncSubject`** — 21 function(s): `create()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `for()`, `onComplete()`, `while()`, `hasObservers()`, `hasThrowable()`, `hasComplete()`, `getThrowable()`, `subscribeActual()`, `remove()`, `add()`, `hasValue()`, `getValue()`, `getValues()`, `AsyncDisposable()`, `super()`, `dispose()`
- **`BehaviorSubject`** — 32 function(s): `create()`, `createDefault()`, `this()`, `subscribeActual()`, `if()`, `remove()`, `onSubscribe()`, `onNext()`, `setCurrent()`, `for()`, `onError()`, `onComplete()`, `hasObservers()`, `subscriberCount()`, `getThrowable()`, `getValue()`, `return()`, `getValues()`, `hasComplete()`, `hasThrowable()`, `hasValue()`, `add()`, `while()`, `terminate()`, `BehaviorDisposable()`, `dispose()`, `isDisposed()`, `emitFirst()`, `synchronized()`, `emitLoop()`, `emitNext()`, `test()`
- **`CompletableSubject`** — 21 function(s): `create()`, `CompletableSubject()`, `onSubscribe()`, `if()`, `onError()`, `for()`, `onComplete()`, `subscribeActual()`, `remove()`, `add()`, `while()`, `getThrowable()`, `hasThrowable()`, `hasComplete()`, `hasObservers()`, `observerCount()`, `CompletableDisposable()`, `lazySet()`, `dispose()`, `isDisposed()`, `get()`
- **`MaybeSubject`** — 23 function(s): `create()`, `onSubscribe()`, `if()`, `onSuccess()`, `for()`, `onError()`, `onComplete()`, `subscribeActual()`, `remove()`, `add()`, `while()`, `getValue()`, `hasValue()`, `getThrowable()`, `hasThrowable()`, `hasComplete()`, `hasObservers()`, `observerCount()`, `MaybeDisposable()`, `lazySet()`, `dispose()`, `isDisposed()`, `get()`
- **`PublishSubject`** — 19 function(s): `create()`, `subscribeActual()`, `if()`, `remove()`, `add()`, `while()`, `onSubscribe()`, `onNext()`, `for()`, `onError()`, `onComplete()`, `hasObservers()`, `getThrowable()`, `hasThrowable()`, `hasComplete()`, `PublishDisposable()`, `dispose()`, `isDisposed()`, `get()`
- **`ReplaySubject`** — 43 function(s): `add()`, `addFinal()`, `compareAndSet()`, `get()`, `getValue()`, `getValues()`, `replay()`, `size()`, `trimHead()`, `create()`, `createWithSize()`, `createUnbounded()`, `createWithTime()`, `createWithTimeAndSize()`, `subscribeActual()`, `if()`, `remove()`, `onSubscribe()`, `onNext()`, `for()`, `onError()`, `onComplete()`, `hasObservers()`, `observerCount()`, `getThrowable()`, `cleanupBuffer()`, `hasComplete()`, `hasThrowable()`, `hasValue()`, `while()`, `terminate()`, `ReplayDisposable()`, `dispose()`, `isDisposed()`, `UnboundedReplayBuffer()`, `return()`, `Node()`, `TimedNode()`, `SizeBoundReplayBuffer()`, `trim()`, `SizeAndTimeBoundReplayBuffer()`, `trimFinal()`, `getHead()`
- **`SerializedSubject`** — 15 function(s): `SerializedSubject()`, `subscribeActual()`, `onSubscribe()`, `if()`, `synchronized()`, `emitLoop()`, `onNext()`, `onError()`, `onComplete()`, `while()`, `test()`, `hasObservers()`, `hasThrowable()`, `getThrowable()`, `hasComplete()`
- **`SingleSubject`** — 21 function(s): `create()`, `onSubscribe()`, `if()`, `onSuccess()`, `for()`, `onError()`, `subscribeActual()`, `remove()`, `add()`, `while()`, `getValue()`, `hasValue()`, `getThrowable()`, `hasThrowable()`, `hasObservers()`, `observerCount()`, `SingleDisposable()`, `lazySet()`, `dispose()`, `isDisposed()`, `get()`
- **`Subject`** — 5 function(s): `getThrowable()`, `hasComplete()`, `hasObservers()`, `hasThrowable()`, `toSerialized()`
- **`UnicastSubject`** — 26 function(s): `create()`, `this()`, `subscribeActual()`, `if()`, `drain()`, `doTerminate()`, `onSubscribe()`, `onNext()`, `onError()`, `onComplete()`, `drainNormal()`, `while()`, `errorOrComplete()`, `drainFused()`, `failedFast()`, `hasObservers()`, `getThrowable()`, `hasThrowable()`, `hasComplete()`, `UnicastQueueDisposable()`, `requestFusion()`, `poll()`, `isEmpty()`, `clear()`, `dispose()`, `isDisposed()`

</details>

### Package `io.reactivex.subscribers`  (6 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `DefaultSubscriber` | class | FlowableSubscriber<T> | 37 | 8 |
| `DisposableSubscriber` | class | FlowableSubscriber<T>, Disposable | 44 | 9 |
| `ResourceSubscriber` | class | FlowableSubscriber<T>, Disposable | 55 | 11 |
| `SafeSubscriber` | class | FlowableSubscriber<T>, Subscription | 190 | 24 |
| `SerializedSubscriber` | class | FlowableSubscriber<T>, Subscription | 151 | 33 |
| `TestSubscriber` | class | BaseTestConsumer<T, TestSubscriber<T>> implements FlowableSubscriber<T>, Subscription, ... | 304 | 74 |

<details>
<summary><b>Function list for <code>io.reactivex.subscribers</code></b> (click to expand)</summary>

- **`DefaultSubscriber`** — 5 function(s): `onSubscribe()`, `if()`, `onStart()`, `request()`, `cancel()`
- **`DisposableSubscriber`** — 7 function(s): `onSubscribe()`, `if()`, `onStart()`, `request()`, `cancel()`, `dispose()`, `isDisposed()`
- **`ResourceSubscriber`** — 7 function(s): `add()`, `onSubscribe()`, `if()`, `onStart()`, `request()`, `dispose()`, `isDisposed()`
- **`SafeSubscriber`** — 10 function(s): `SafeSubscriber()`, `onSubscribe()`, `if()`, `onNext()`, `onNextNoSubscription()`, `onError()`, `onComplete()`, `onCompleteNoSubscription()`, `request()`, `cancel()`
- **`SerializedSubscriber`** — 11 function(s): `SerializedSubscriber()`, `this()`, `onSubscribe()`, `if()`, `onNext()`, `onError()`, `synchronized()`, `emitLoop()`, `onComplete()`, `request()`, `cancel()`
- **`TestSubscriber`** — 29 function(s): `onComplete()`, `onError()`, `onNext()`, `onSubscribe()`, `onStart()`, `create()`, `TestSubscriber()`, `this()`, `if()`, `IllegalArgumentException()`, `while()`, `request()`, `cancel()`, `isCancelled()`, `dispose()`, `isDisposed()`, `hasSubscription()`, `assertSubscribed()`, `fail()`, `assertNotSubscribed()`, `setInitialFusionMode()`, `assertFusionMode()`, `AssertionError()`, `fusionModeToString()`, `switch()`, `assertFuseable()`, `assertNotFuseable()`, `assertOf()`, `requestMore()`

</details>

### Package `org.greenrobot.eventbus`  (18 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AsyncPoster` | class | Runnable, Poster | 29 | 5 |
| `BackgroundPoster` | class | Runnable, Poster | 52 | 9 |
| `EventBus` | class | — | 473 | 125 |
| `EventBusBuilder` | class | — | 139 | 27 |
| `EventBusException` | class | RuntimeException | 19 | 6 |
| `HandlerPoster` | class | Handler implements Poster | 63 | 13 |
| `Logger` | class | Logger | 95 | 17 |
| `MainThreadSupport` | class | MainThreadSupport | 30 | 6 |
| `NoSubscriberEvent` | class | — | 13 | 1 |
| `PendingPost` | class | — | 45 | 8 |
| `PendingPostQueue` | class | — | 46 | 13 |
| `Poster` | class | — | 7 | 1 |
| `Subscribe` | class | — | 20 | 3 |
| `SubscriberExceptionEvent` | class | — | 17 | 1 |
| `SubscriberMethod` | class | — | 51 | 8 |
| `SubscriberMethodFinder` | class | — | 251 | 56 |
| `Subscription` | class | — | 27 | 4 |
| `ThreadMode` | class | — | 11 | 0 |

<details>
<summary><b>Function list for <code>org.greenrobot.eventbus</code></b> (click to expand)</summary>

- **`AsyncPoster`** — 5 function(s): `AsyncPoster()`, `enqueue()`, `run()`, `if()`, `IllegalStateException()`
- **`BackgroundPoster`** — 6 function(s): `BackgroundPoster()`, `enqueue()`, `synchronized()`, `if()`, `run()`, `while()`
- **`EventBus`** — 39 function(s): `onPostCompleted()`, `getDefault()`, `if()`, `synchronized()`, `builder()`, `EventBusBuilder()`, `clearCaches()`, `EventBus()`, `this()`, `initialValue()`, `PostingThreadState()`, `register()`, `while()`, `subscribe()`, `EventBusException()`, `for()`, `checkPostStickyEventToSubscription()`, `postToSubscription()`, `isMainThread()`, `isRegistered()`, `unsubscribeByEventType()`, `unregister()`, `post()`, `postSingleEvent()`, `cancelEventDelivery()`, `postSticky()`, `getStickyEvent()`, `removeStickyEvent()`, `removeAllStickyEvents()`, `hasSubscriberForEvent()`, `postSingleEventForEventType()`, `switch()`, `invokeSubscriber()`, `IllegalStateException()`, `addInterfaces()`, `handleSubscriberException()`, `getExecutorService()`, `getLogger()`, `toString()`
- **`EventBusBuilder`** — 22 function(s): `logSubscriberExceptions()`, `logNoSubscriberMessages()`, `sendSubscriberExceptionEvent()`, `sendNoSubscriberEvent()`, `throwSubscriberException()`, `eventInheritance()`, `executorService()`, `skipMethodVerificationFor()`, `if()`, `ignoreGeneratedIndex()`, `strictMethodVerification()`, `addIndex()`, `logger()`, `getLogger()`, `return()`, `getMainThreadSupport()`, `getAndroidMainLooperOrNull()`, `installDefaultEventBus()`, `synchronized()`, `EventBusException()`, `build()`, `EventBus()`
- **`EventBusException`** — 2 function(s): `EventBusException()`, `super()`
- **`HandlerPoster`** — 7 function(s): `HandlerPoster()`, `super()`, `enqueue()`, `synchronized()`, `if()`, `EventBusException()`, `handleMessage()`
- **`Logger`** — 6 function(s): `log()`, `if()`, `isAndroidLogAvailable()`, `AndroidLogger()`, `mapLevel()`, `JavaLogger()`
- **`MainThreadSupport`** — 4 function(s): `createPoster()`, `isMainThread()`, `AndroidHandlerMainThreadSupport()`, `HandlerPoster()`
- **`NoSubscriberEvent`** — 1 function(s): `NoSubscriberEvent()`
- **`PendingPost`** — 5 function(s): `PendingPost()`, `obtainPendingPost()`, `synchronized()`, `if()`, `releasePendingPost()`
- **`PendingPostQueue`** — 7 function(s): `enqueue()`, `if()`, `NullPointerException()`, `IllegalStateException()`, `notifyAll()`, `poll()`, `wait()`
- **`Poster`** — 1 function(s): `enqueue()`
- **`Subscribe`** — 3 function(s): `priority()`, `sticky()`, `threadMode()`
- **`SubscriberExceptionEvent`** — 1 function(s): `SubscriberExceptionEvent()`
- **`SubscriberMethod`** — 5 function(s): `SubscriberMethod()`, `equals()`, `if()`, `checkMethodString()`, `hashCode()`
- **`SubscriberMethodFinder`** — 21 function(s): `SubscriberMethodFinder()`, `findSubscriberMethods()`, `if()`, `EventBusException()`, `findUsingInfo()`, `while()`, `for()`, `findUsingReflectionInSingleClass()`, `getMethodsAndRelease()`, `synchronized()`, `prepareFindState()`, `FindState()`, `getSubscriberInfo()`, `findUsingReflection()`, `clearCaches()`, `initForSubscriber()`, `recycle()`, `checkAdd()`, `IllegalStateException()`, `checkAddWithMethodSignature()`, `moveToSuperclass()`
- **`Subscription`** — 4 function(s): `Subscription()`, `equals()`, `if()`, `hashCode()`

</details>

### Package `org.greenrobot.eventbus.meta`  (5 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AbstractSubscriberInfo` | class | SubscriberInfo | 61 | 14 |
| `SimpleSubscriberInfo` | class | AbstractSubscriberInfo | 26 | 4 |
| `SubscriberInfo` | class | — | 15 | 3 |
| `SubscriberInfoIndex` | class | — | 7 | 1 |
| `SubscriberMethodInfo` | class | — | 29 | 5 |

<details>
<summary><b>Function list for <code>org.greenrobot.eventbus.meta</code></b> (click to expand)</summary>

- **`AbstractSubscriberInfo`** — 9 function(s): `AbstractSubscriberInfo()`, `getSubscriberClass()`, `getSuperSubscriberInfo()`, `if()`, `RuntimeException()`, `shouldCheckSuperclass()`, `createSubscriberMethod()`, `SubscriberMethod()`, `EventBusException()`
- **`SimpleSubscriberInfo`** — 4 function(s): `SimpleSubscriberInfo()`, `super()`, `getSubscriberMethods()`, `for()`
- **`SubscriberInfo`** — 3 function(s): `getSubscriberMethods()`, `getSuperSubscriberInfo()`, `shouldCheckSuperclass()`
- **`SubscriberInfoIndex`** — 1 function(s): `getSubscriberInfo()`
- **`SubscriberMethodInfo`** — 2 function(s): `SubscriberMethodInfo()`, `this()`

</details>

### Package `org.greenrobot.eventbus.util`  (8 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AsyncExecutor` | class | — | 104 | 22 |
| `ErrorDialogConfig` | class | — | 64 | 10 |
| `ErrorDialogFragmentFactory` | class | ErrorDialogFragmentFactory<Fragment> | 88 | 19 |
| `ErrorDialogFragments` | class | DialogFragment implements DialogInterface.OnClickListener | 70 | 10 |
| `ErrorDialogManager` | class | Fragment | 200 | 40 |
| `ExceptionToResourceMapping` | class | — | 51 | 8 |
| `HasExecutionScope` | class | — | 9 | 2 |
| `ThrowableFailureEvent` | class | HasExecutionScope | 37 | 6 |

<details>
<summary><b>Function list for <code>org.greenrobot.eventbus.util</code></b> (click to expand)</summary>

- **`AsyncExecutor`** — 13 function(s): `run()`, `Builder()`, `threadPool()`, `failureEventType()`, `eventBus()`, `build()`, `buildForScope()`, `if()`, `AsyncExecutor()`, `builder()`, `create()`, `RuntimeException()`, `execute()`
- **`ErrorDialogConfig`** — 10 function(s): `ErrorDialogConfig()`, `addMapping()`, `getMessageIdForThrowable()`, `if()`, `setDefaultDialogIconId()`, `setDefaultEventTypeOnDialogClosed()`, `disableExceptionLogging()`, `setTagForLoggingExceptions()`, `setEventBus()`, `getEventBus()`
- **`ErrorDialogFragmentFactory`** — 9 function(s): `createErrorFragment()`, `ErrorDialogFragmentFactory()`, `prepareErrorFragment()`, `if()`, `getTitleFor()`, `getMessageFor()`, `Support()`, `super()`, `Honeycomb()`
- **`ErrorDialogFragments`** — 6 function(s): `createDialog()`, `if()`, `handleOnClick()`, `RuntimeException()`, `onCreateDialog()`, `onClick()`
- **`ErrorDialogManager`** — 10 function(s): `onCreate()`, `onResume()`, `if()`, `onPause()`, `onEventMainThread()`, `attachTo()`, `RuntimeException()`, `isSupportActivity()`, `checkLogException()`, `isInExecutionScope()`
- **`ExceptionToResourceMapping`** — 5 function(s): `mapThrowable()`, `if()`, `mapThrowableFlat()`, `for()`, `addMapping()`
- **`HasExecutionScope`** — 2 function(s): `getExecutionScope()`, `setExecutionScope()`
- **`ThrowableFailureEvent`** — 5 function(s): `ThrowableFailureEvent()`, `getThrowable()`, `isSuppressErrorUi()`, `getExecutionScope()`, `setExecutionScope()`

</details>

### Package `org.reactivestreams`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `Processor` | class | Subscriber<T>, Publisher<R> | 6 | 0 |
| `Publisher` | class | — | 7 | 1 |
| `Subscriber` | class | — | 13 | 4 |
| `Subscription` | class | — | 9 | 2 |

<details>
<summary><b>Function list for <code>org.reactivestreams</code></b> (click to expand)</summary>

- **`Publisher`** — 1 function(s): `subscribe()`
- **`Subscriber`** — 4 function(s): `onComplete()`, `onError()`, `onNext()`, `onSubscribe()`
- **`Subscription`** — 2 function(s): `cancel()`, `request()`

</details>

## 8. Notable constants, endpoints and data

### Network endpoints and schemes

- `http://schemas.android.com/apk/res/android` — referenced in TypedArrayUtils.java
- `https://github.com/ReactiveX/RxJava/wiki/Error-Handling` — referenced in OnErrorNotImplementedException.java
- `https://github.com/ReactiveX/RxJava/wiki/Plugins` — referenced in Completable.java, Flowable.java, Maybe.java, Observable.java, Single.java
- `https://github.com/ReactiveX/RxJava/wiki/What` — referenced in UndeliverableException.java

### Native libraries (`System.loadLibrary`)

_none found_

### Reflection targets (`Class.forName`)

`android.app.Notification$Action`, `android.content.res.ThemedResourceCache`, `android.graphics.Insets`, `android.util.Log`, `androidx.transition.FragmentTransitionSupport`, `com.android.internal.view.menu.MenuBuilder`, `libcore.icu.ICU`

### Cryptography used

_none found_

### SQL statements

_none found_

### Other notable literals

- `"YFMyCar_202506191631"  (build tag used by LogUtil)`
- `Fragment indices 6,7,8,9  (cockpit config visibility check)`
- `WindowControl configs: LEFT_FRONT_WINDOW, LEFT_AND_RIGHT_FRONT_WINDOW, FOUR_DOOR_WINDOWS`
- `Events: CarDoorStatusEvent, CarWindowEvent, WindowErrorEvent, SkyLightEvent, CarTailgateEvent, CarLightEvent, DriveModeEvent, GearPositionEvent, PowerEvent, SpeedEvent, AirSeatEvent`
- `"TipGearNotP"  (gear-not-in-P warning binding)`

## 9. Resource inventory

| Extension | Count |
|---|---:|
| `.png` | 476 |
| `.xml` | 358 |
| `.version` | 28 |
| `.dex` | 1 |
| `.mf` | 1 |
| `.rsa` | 1 |
| `.sf` | 1 |
| `.pro` | 1 |

## 10. How this was produced

```bash
# 1. fetch the single APK file (no repo clone)
curl -L -o com.yftech.yfmycar.apk \
  https://github.com/ammisaidkaidi/yftech-apks/raw/main/com.yftech.yfmycar.apk

# 2. Java-readable decompilation
jadx -d sources -j 2 --show-bad-code com.yftech.yfmycar.apk

# 3. smali + resource decoding
apktool d -f -o smali com.yftech.yfmycar.apk
```

## License / disclaimer

This repository is an automatically generated, human-readable decompilation of a system application for research and interoperability purposes. All code remains the property of its original author(s). No original source code was published by the vendor.
