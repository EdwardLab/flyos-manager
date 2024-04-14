.class public Lcom/google/appinventor/components/runtime/Form;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;
.implements Lcom/google/appinventor/components/runtime/HandlesEventDispatching;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Top-level component containing all other components in the program"
    showOnPalette = false
    version = 0x2c
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesAssets;
    fileNames = "Roboto-Thin.ttf, Roboto-Regular.ttf, fontawesome-webfont.ttf, fa-regular-400.ttf, fa-solid-900.ttf, fa-brands-400.ttf, MaterialIcons-Regular.ttf"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "jose4j.jar",
        "slf4j-api.jar",
        "appcenter-analytics.jar",
        "appcenter-analytics.aar",
        "appcenter-crashes.jar",
        "appcenter-crashes.aar",
        "appcenter.jar",
        "appcenter.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_WIFI_STATE",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Form$a;,
        Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final APPINVENTOR_URL_SCHEME:Ljava/lang/String; = "appinventor"

.field private static final ARGUMENT_NAME:Ljava/lang/String; = "APP_INVENTOR_START"

.field public static final ASSETS_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final DEFAULT_ACCENT_COLOR:I

.field private static final DEFAULT_PRIMARY_COLOR:I

.field private static final DEFAULT_PRIMARY_COLOR_DARK:I

.field private static final LOG_TAG:Ljava/lang/String; = "Form"

.field public static final MAX_PERMISSION_NONCE:I = 0xffff

.field private static final RESULT_NAME:Ljava/lang/String; = "APP_INVENTOR_RESULT"

.field private static final SWITCH_FORM_REQUEST_CODE:I = 0x1

.field private static _initialized:Z

.field protected static activeForm:Lcom/google/appinventor/components/runtime/Form;

.field private static applicationIsBeingClosed:Z

.field private static minimumToastWait:J

.field private static nextRequestCode:I

.field private static sCompatibilityMode:Z

.field private static screenInitialized:Z

.field private static showListsAsJson:Z


# instance fields
.field private aboutScreen:Ljava/lang/String;

.field private aboutScreenTitle:Ljava/lang/String;

.field private aboutThisAppBackgroundColor:I

.field private aboutThisAppLightTheme:Z

.field private accentColor:I

.field private actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private final activityResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final activityResultMultiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private analyticsUtil:Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;

.field protected final androidUIHandler:Landroid/os/Handler;

.field private appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private appId:Ljava/lang/String;

.field private backgroundColor:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundImagePath:Ljava/lang/String;

.field private closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

.field private compatScalingFactor:F

.field public coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private customActionBarIcon:Landroid/view/Menu;

.field private customMenu:Landroid/view/Menu;

.field private defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

.field private deviceDensity:F

.field private dimChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;",
            ">;"
        }
    .end annotation
.end field

.field private drawerArrowIconColor:I

.field private drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private fontTypeface:I

.field private formHeight:I

.field protected formName:Ljava/lang/String;

.field private formWidth:I

.field private frameLayout:Landroid/widget/FrameLayout;

.field private fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

.field public highQuality:Z

.field private horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field private isCompanion:Z

.field private isDrawerOpenBackup:Z

.field private keepScreenOn:Z

.field private keyboardReallyShown:Z

.field private keyboardShown:Z

.field private lastToastTime:J

.field private layoutBackup:Ljava/lang/Object;

.field private lockedMenu:Z

.field private lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

.field private navigationBarLight:Z

.field private navigationIconColor:I

.field private nextFormName:Ljava/lang/String;

.field private final onClearListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnClearListener;",
            ">;"
        }
    .end annotation
.end field

.field private onCreateBundle:Landroid/os/Bundle;

.field private final onCreateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnCreateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCreateOptionsMenuListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDestroyListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onInitializeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/util/OnInitializeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onNewIntentListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnNewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onOptionsItemSelectedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onOrientationChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onPauseListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onResumeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnResumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onStopListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

.field private optionsMenuIconColor:I

.field private final permissionHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/PermissionResultHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionRandom:Ljava/util/Random;

.field private final permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private primaryColor:I

.field private primaryColorDark:I

.field private progress:Landroid/app/ProgressDialog;

.field protected receiveSharedValue:Ljava/lang/String;

.field private receiveSharedValueType:I

.field private scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

.field private scrollable:Z

.field private showNavBar:Z

.field private showOptionsMenu:Z

.field public showStatusBar:Z

.field public showTitle:Z

.field private splashEnabled:Z

.field protected startupValue:Ljava/lang/String;

.field private stateBackButton:Z

.field private statusbarColor:I

.field private statusbarLight:Z

.field private titleBarColor:I

.field private titleBarTextColor:I

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarIconColor:I

.field private toolbarSubTitle:Ljava/lang/String;

.field private toolbarTitle:Ljava/lang/String;

.field private verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

.field private viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

.field private yandexTranslateTagline:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "&HFF3F51B5"

    .line 181
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    const-string v0, "&HFF303F9F"

    .line 182
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    const-string v0, "&HFFFF4081"

    .line 183
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    const/4 v0, 0x2

    .line 204
    sput v0, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    const/4 v0, 0x0

    .line 234
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    const-wide v1, 0x2540be400L

    .line 269
    sput-wide v1, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    .line 282
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 165
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    const/4 v1, 0x0

    .line 214
    iput v1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerArrowIconColor:I

    const-string v2, ""

    .line 216
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    .line 227
    sget-object v3, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 228
    sget-object v3, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 235
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->appId:Ljava/lang/String;

    .line 238
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    .line 239
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    .line 240
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    .line 241
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    .line 242
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    .line 243
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    .line 244
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    .line 245
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    .line 246
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    .line 249
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    .line 252
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    .line 253
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    .line 256
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    .line 259
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    .line 260
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->permissionRandom:Ljava/util/Random;

    .line 264
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    .line 266
    iput v1, p0, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    .line 270
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-wide v5, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    const/4 v3, 0x0

    .line 278
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    .line 280
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardReallyShown:Z

    .line 285
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    .line 287
    sget-object v4, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    .line 292
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->highQuality:Z

    .line 293
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->splashEnabled:Z

    .line 294
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->keepScreenOn:Z

    .line 304
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    const v0, -0xbbbbbc

    .line 305
    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    .line 307
    sget v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    .line 308
    sget v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    .line 309
    sget v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    .line 311
    iput v1, p0, Lcom/google/appinventor/components/runtime/Form;->fontTypeface:I

    .line 312
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->toolbarSubTitle:Ljava/lang/String;

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    .line 2565
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    return-void
.end method

.method private OnCompanionRefresh()V
    .locals 3

    .line 3526
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->IsSideMenuAdded()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->drawerLayoutFix(Landroidx/drawerlayout/widget/DrawerLayout;ZZ)V

    .line 3527
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->toolbarColor(Landroidx/appcompat/widget/Toolbar;ZI)V

    .line 3528
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->statusBarColor(Landroid/app/Activity;ZI)V

    .line 3530
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3531
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;

    if-eqz v1, :cond_0

    .line 3532
    check-cast v0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->SideMenuLayout(Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;)V

    :cond_0
    return-void
.end method

.method private UpdateTitlebarItemColor(I)V
    .locals 2

    .line 3470
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    if-nez p1, :cond_0

    const-string p1, "colorToolbar"

    .line 3472
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 3473
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_3

    .line 3474
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3475
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3477
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3478
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3480
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_3

    .line 3481
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->getDrawerArrowDrawable()Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 3485
    :cond_3
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->optionsMenuIconColor:I

    .line 3486
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->navigationIconColor:I

    .line 3487
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerArrowIconColor:I

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 165
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0

    .line 165
    sput-boolean p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/google/appinventor/components/runtime/Form;)I
    .locals 0

    .line 165
    iget p0, p0, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    return p0
.end method

.method static synthetic access$1300(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/appinventor/components/runtime/Form;)Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/appinventor/components/runtime/Form;)Landroidx/appcompat/app/ActionBarDrawerToggle;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->showAboutApplicationNotification()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Random;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->permissionRandom:Ljava/util/Random;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/HashMap;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Form;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Form;->isDrawerOpenBackup:Z

    return p0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/Form;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->isDrawerOpenBackup:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Form;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Form;->lockedMenu:Z

    return p0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/String;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbarTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/String;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbarSubTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Form;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Form;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    return p0
.end method

.method static synthetic access$802(Lcom/google/appinventor/components/runtime/Form;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/Form;)I
    .locals 0

    .line 165
    iget p0, p0, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    return p0
.end method

.method private closeApplication()V
    .locals 2

    const/4 v0, 0x1

    .line 2419
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->applicationIsBeingClosed:Z

    .line 2421
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 2423
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string v1, "Screen1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2429
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method private static decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 747
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "decodeJSONStringForForm -- decoding JSON representation:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 750
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "decodeJSONStringForForm -- got decoded JSON:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const-string v2, ""

    .line 753
    :catch_1
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x387

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v0, v4

    invoke-virtual {v1, v1, p1, v3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-object v2
.end method

.method private defaultPropertyValues()V
    .locals 4

    const/4 v0, 0x0

    .line 516
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->Scrollable(Z)V

    const-string v1, "Responsive"

    .line 517
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    const-string v1, ""

    .line 518
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->AboutScreen(Ljava/lang/String;)V

    const-string v2, "About this application"

    .line 519
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->AboutScreenTitle(Ljava/lang/String;)V

    .line 520
    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->AboutScreenBackgroundColor(I)V

    .line 521
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppLightTheme:Z

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->AboutScreenLightTheme(Z)V

    .line 522
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->BackgroundImage(Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 523
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->BackgroundColor(I)V

    const/4 v2, 0x1

    .line 524
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->AlignHorizontal(I)V

    .line 525
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->AlignVertical(I)V

    .line 526
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->Title(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->TitleBarSubTitle(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowStatusBar(Z)V

    .line 529
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowNavBar(Z)V

    .line 530
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->TitleVisible(Z)V

    .line 531
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ShowListsAsJson(Z)V

    const/high16 v3, -0x1000000

    .line 532
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Form;->NavigationBarColor(I)V

    .line 533
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowOptionsMenu(Z)V

    const-string v3, "unspecified"

    .line 534
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientation(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->SplashEnabled(Z)V

    .line 536
    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->AccentColor(I)V

    .line 537
    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->PrimaryColor(I)V

    .line 538
    sget v2, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->PrimaryColorDark(I)V

    const-string v2, "AppTheme"

    .line 539
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->Theme(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->TitleBarTypefaceImport(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->HighQuality(Z)V

    .line 542
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->KeepScreenOn(Z)V

    .line 543
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->RTLSupport(Z)V

    .line 544
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 545
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 546
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope(Lcom/google/appinventor/components/common/FileScope;)V

    return-void
.end method

.method public static finishActivity()V
    .locals 2

    .line 2357
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2358
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    return-void

    .line 2360
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivityWithResult(Ljava/lang/Object;)V
    .locals 2

    .line 2366
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_1

    .line 2367
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_0

    .line 2368
    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/ReplForm;->setResult(Ljava/lang/Object;)V

    .line 2369
    sget-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v0, "close screen with value"

    .line 2371
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "APP_INVENTOR_RESULT"

    .line 2373
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2374
    sget-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    return-void

    .line 2377
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "activeForm is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static finishActivityWithTextResult(Ljava/lang/String;)V
    .locals 2

    .line 2383
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2384
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "APP_INVENTOR_RESULT"

    .line 2385
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2386
    sget-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    return-void

    .line 2388
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "activeForm is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static finishApplication()V
    .locals 2

    .line 2402
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2403
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromBlocks()V

    return-void

    .line 2405
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static generateNewRequestCode()I
    .locals 2

    .line 832
    sget v0, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    return v0
.end method

.method public static getActiveForm()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 2317
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2172
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2173
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v1, :cond_0

    .line 2174
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCompatibilityMode()Z
    .locals 1

    .line 2752
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    return v0
.end method

.method public static getStartText()Ljava/lang/String;
    .locals 2

    .line 2327
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2328
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    return-object v0

    .line 2330
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStartValue()Ljava/lang/Object;
    .locals 2

    .line 2344
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2345
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    const-string v1, "get start value"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2347
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jsonEncodeForForm -- creating JSON representation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "jsonEncodeForForm -- got JSON representation:"

    .line 2211
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const-string v0, ""

    .line 2213
    :catch_1
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x388

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 2216
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v4

    .line 2213
    invoke-virtual {v1, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private menuIconWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x4b

    .line 2524
    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2525
    new-instance v1, Landroid/text/SpannableString;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "       "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2526
    new-instance p2, Landroid/text/style/ImageSpan;

    const/4 v2, 0x1

    invoke-direct {p2, p1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 p1, 0x21

    .line 2527
    invoke-virtual {v1, p2, v0, v2, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private populatePermissions()V
    .locals 3

    .line 498
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Form"

    const-string v2, "Exception while attempting to learn permissions."

    .line 501
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private recomputeLayout()V
    .locals 8

    const-string v0, "Form"

    const-string v1, "recomputeLayout called"

    .line 1216
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1219
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1233
    :cond_0
    new-instance v1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {v1, p0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v2, 0x1

    .line 1234
    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 1235
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 1236
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$17;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/Form$17;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 1262
    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {v1, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1263
    new-instance v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1267
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1270
    new-instance v3, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {v3, p0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 1271
    new-instance v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Lcom/google/android/material/appbar/AppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1273
    new-instance v3, Landroidx/appcompat/widget/Toolbar;

    invoke-direct {v3, p0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 1274
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    new-array v5, v2, [I

    const v6, 0x10102eb

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v5, 0x0

    .line 1275
    invoke-virtual {v3, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    .line 1276
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1277
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1278
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "colorPrimary"

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1280
    iget v3, p0, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/Form;->UpdateTitlebarItemColor(I)V

    .line 1282
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v5}, Lcom/google/android/material/appbar/AppBarLayout;->addView(Landroid/view/View;)V

    .line 1284
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1286
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Form;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 1288
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v5, Lcom/google/appinventor/components/runtime/Form$18;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/Form$18;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1304
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    if-eqz v3, :cond_1

    .line 1305
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 1306
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v3, v5, :cond_2

    .line 1309
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    check-cast v3, Landroid/widget/ScrollView;

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    goto :goto_0

    .line 1312
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 1315
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1318
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1320
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1322
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    .line 1324
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1326
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1330
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1331
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    if-eqz v2, :cond_3

    .line 1332
    check-cast v1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->SideMenu(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    goto :goto_1

    .line 1333
    :cond_3
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;

    if-eqz v2, :cond_4

    .line 1334
    check-cast v1, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->SideMenuLayout(Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;)V

    :cond_4
    :goto_1
    const-string v1, "About to create a new ScaledFrameLayout"

    .line 1338
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    new-instance v0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    .line 1340
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setContentView(Landroid/view/View;)V

    .line 1344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1345
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->requestLayout()V

    .line 1346
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$19;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Form$19;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setBackground(Landroid/view/View;)V
    .locals 3

    .line 2738
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2739
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 2740
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2741
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2743
    :cond_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    if-eqz v1, :cond_1

    move v2, v1

    :cond_1
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 2745
    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    if-eqz v1, :cond_3

    move v2, v1

    :cond_3
    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2747
    :goto_0
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2748
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private showAboutApplicationNotification()V
    .locals 9

    .line 2577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<p><small><em>Created with Kodular<br><a href=\"https://www.kodular.io\">kodular.io</a></em></small></p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n"

    const-string v2, "<br>"

    .line 2578
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2580
    :try_start_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreenTitle:Ljava/lang/String;

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    iget-boolean v8, p0, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppLightTheme:Z

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/Notifier;->aboutThisApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2582
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static switchForm(Ljava/lang/String;)V
    .locals 2

    .line 2080
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2081
    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2083
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "activeForm is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static switchFormWithStartValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 2096
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Open another screen with start value:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2098
    invoke-virtual {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2100
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "activeForm is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private titleBarFontHelper(Ljava/lang/String;IZ)V
    .locals 5

    .line 3441
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3442
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3443
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3444
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 3445
    check-cast v2, Landroid/widget/TextView;

    .line 3446
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    .line 3448
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v3, v2, p1, v0, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 3450
    :cond_1
    invoke-static {v2, p2, v0, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private titleBarTextColorHelper(I)V
    .locals 4

    const/4 v0, 0x0

    .line 3458
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3459
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3460
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 3461
    check-cast v1, Landroid/widget/TextView;

    .line 3462
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3463
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    .line 2251
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method protected $define()V
    .locals 1

    .line 976
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    return-object p0
.end method

.method public AboutScreen()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Information about the screen.  It appears when \"About this Application\" is selected from the system menu. Use it to inform people about your app.  In multiple screen apps, each screen has its own AboutScreen info."
    .end annotation

    .line 1500
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    return-object v0
.end method

.method public AboutScreen(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    :goto_0
    const-string v0, "<!--"

    .line 1513
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 1514
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    :goto_1
    const-string v0, "<!-"

    .line 1516
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1517
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1519
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    return-void
.end method

.method public AboutScreenBackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 3364
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    return v0
.end method

.method public AboutScreenBackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 3371
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppBackgroundColor:I

    return-void
.end method

.method public AboutScreenLightTheme(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 3382
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppLightTheme:Z

    return-void
.end method

.method public AboutScreenLightTheme()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 3376
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->aboutThisAppLightTheme:Z

    return v0
.end method

.method public AboutScreenTitle(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "About this application"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Define the title of the about application option."
    .end annotation

    if-eqz p1, :cond_0

    .line 2464
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2465
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreenTitle:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, "About this application"

    .line 2467
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreenTitle:Ljava/lang/String;

    return-void
.end method

.method public AccentColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 3274
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    return v0
.end method

.method public AccentColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF4081"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the accent color used for highlights and other user interface accents."
        userVisible = false
    .end annotation

    .line 3269
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    return-void
.end method

.method public AddDrawerSync()V
    .locals 3

    .line 3119
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$9;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {v0, p0, p0, v1}, Lcom/google/appinventor/components/runtime/Form$9;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 3129
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 3130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 3131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 3132
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 3134
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3135
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3136
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 3138
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->UpdateTitlebarItemColor(I)V

    return-void
.end method

.method public AddMenuItem(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new item to the menu. Use the \'make a list\' block."
    .end annotation

    .line 2484
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 2485
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 2486
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 2487
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    invoke-interface {v4, v1, v1, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 2488
    new-instance v4, Lcom/google/appinventor/components/runtime/Form$3;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/Form$3;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public AddMenuItemWithIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new item with a icon on the left side to the menu. This function does not use the make a list block. If you want more items with icon then use this block again."
    .end annotation

    .line 2503
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    .line 2505
    :try_start_0
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2507
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "AddMenuItemWithIcon: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Form"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_0

    return-void

    .line 2513
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    invoke-direct {p0, p2, p1}, Lcom/google/appinventor/components/runtime/Form;->menuIconWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, p2, p2, p2, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 2514
    new-instance p2, Lcom/google/appinventor/components/runtime/Form$4;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/Form$4;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public AddTitleBarIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new action icon to the TitleBar. You will see a toast message on a long click with your choosen name. Add this block to the \"MenuInitialize\" event."
    .end annotation

    .line 2863
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2865
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddTitleBarIcon: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    return-void

    .line 2872
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    if-eqz v1, :cond_1

    .line 2874
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 2876
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    const v2, 0x16f4f51

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2, v3, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    .line 2877
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2878
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2879
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Form$5;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public AlignHorizontal()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/HorizontalAlignment;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the screen are aligned  horizontally. The choices are: 1 = left aligned, 3 = horizontally centered,  2 = right aligned."
    .end annotation

    .line 1678
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AlignHorizontal(I)V
    .locals 3
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/HorizontalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1695
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x579

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1698
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "HorizontalAlignment"

    .line 1697
    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 1701
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    return-void
.end method

.method public AlignHorizontalAbstract()Lcom/google/appinventor/components/common/HorizontalAlignment;
    .locals 1

    .line 1710
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-object v0
.end method

.method public AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 1720
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-void
.end method

.method public AlignVertical()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/VerticalAlignment;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the arrangement are aligned vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom. Vertical alignment has no effect if the screen is scrollable."
    .end annotation

    .line 1734
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AlignVertical(I)V
    .locals 3
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/VerticalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1753
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x57a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1756
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "VerticalAlignment"

    .line 1755
    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 1759
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    return-void
.end method

.method public AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;
    .locals 1

    .line 1768
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    return-object v0
.end method

.method public AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V
    .locals 1

    .line 1777
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 1778
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    return-void
.end method

.method public AppId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 1487
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->appId:Ljava/lang/String;

    return-void
.end method

.method public AppName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This is the display name of the installed application in the phone.If the AppName is blank, it will be set to the name of the project when the project is built."
        userVisible = false
    .end annotation

    return-void
.end method

.method public ArePermissionsGranted()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if ALL needed app permissions were granted, else false."
    .end annotation

    .line 3312
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->arePermissionsGranted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public AskForPermission(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const-string v0, "."

    .line 3599
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3600
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission."

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3602
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$10;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Form$10;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method

.method public AskForPermissionAbstract(Lcom/google/appinventor/components/common/Permission;)V
    .locals 0

    .line 3621
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->AskForPermission(Ljava/lang/String;)V

    return-void
.end method

.method public BackPressed()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Device back button pressed."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BackPressed"

    .line 701
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1372
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1384
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    .line 1386
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    return-void
.end method

.method public BackgroundImage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .line 1398
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1413
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    .line 1416
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1418
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to load "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Form"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1419
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1421
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    return-void
.end method

.method public CanWriteSystemSettings()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the app can write system settings, else it returns false. It will return true automatic for devices with android version below 6 (API 23)."
    .end annotation

    .line 3331
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->writeSystemSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public CloseScreenAnimation()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ScreenAnimation;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for closing current screen and returning  to the previous screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .line 1847
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    if-eqz v0, :cond_0

    .line 1848
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public CloseScreenAnimation(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenAnimation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1864
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x389

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Screen"

    .line 1866
    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 1870
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    return-void
.end method

.method public CloseScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 1880
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method

.method public CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .locals 0

    .line 1891
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    return-void
.end method

.method public DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;
    .locals 1

    .line 1438
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public DefaultFileScope(Lcom/google/appinventor/components/common/FileScope;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "App"
        editorType = "file_scope"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1434
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    return-void
.end method

.method public DrawerArrowIconColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the drawer arrow icon color."
    .end annotation

    .line 3905
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->drawerArrowIconColor:I

    return v0
.end method

.method public DrawerArrowIconColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the drawer arrow icon color."
    .end annotation

    .line 3893
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 3895
    :try_start_0
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->getDrawerArrowDrawable()Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3897
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    :cond_0
    :goto_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerArrowIconColor:I

    return-void
.end method

.method public ErrorOccurred(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an error occurs. Only some errors will raise this condition.  For those errors, the system will show a notification by default.  You can use this event handler to prescribe an error behavior different than the default."
    .end annotation

    .line 1083
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 1084
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Form "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ErrorOccurred, errorNumber = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", componentType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", functionName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", messages = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Form"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-static {v0, p2, p3, p4, p0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->logError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    .line 1090
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "ErrorOccurred"

    .line 1089
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz p1, :cond_0

    .line 1098
    :try_start_0
    new-instance p1, Lcom/google/appinventor/components/runtime/Notifier;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->ShowAlert(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1100
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public ErrorOccurredDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 1109
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Form "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ErrorOccurred, errorNumber = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", componentType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", functionName = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", messages = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    aput-object p2, v0, v2

    .line 1114
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "ErrorOccurred"

    .line 1113
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz p1, :cond_0

    .line 1122
    :try_start_0
    new-instance p1, Lcom/google/appinventor/components/runtime/Notifier;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p5, p6}, Lcom/google/appinventor/components/runtime/Notifier;->ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1124
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public GotReceivedShared(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user shared content to your app throw the sharing dialog of any other app. Type stand for integer. 0 = nothing shared, 1 = audio, 2 = image, 3 = text or 4 = video"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3850
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GotReceivedShared"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Height()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen height (y-size)."
    .end annotation

    .line 2059
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Form.Height = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    return v0
.end method

.method public HideKeyboard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the keyboard."
    .end annotation

    .line 2843
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2845
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    :cond_0
    const-string v1, "input_method"

    .line 2847
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2849
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public HighQuality(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 3493
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->highQuality:Z

    return-void
.end method

.method public HighQuality()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to true, pictures will be loaded in high quality."
    .end annotation

    .line 3499
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->highQuality:Z

    return v0
.end method

.method public Icon(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public Initialize()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Screen starting"
    .end annotation

    .line 1020
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$12;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Form$12;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public IsCompanion()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This block will return true, if you are running your project current in the companion application. Else it will return false."
    .end annotation

    .line 3506
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    return v0
.end method

.method public IsSideMenuAdded()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if a side menu is added to the screen."
    .end annotation

    .line 3169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public IsSideMenuOpen()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if a side menu is current open. Else it will return false."
    .end annotation

    .line 3160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    const v1, 0x800003

    .line 3161
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public KeepScreenOn(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Keep the device\'s screen turned on and bright."
    .end annotation

    .line 3512
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->keepScreenOn:Z

    const/16 v0, 0x80

    if-eqz p1, :cond_0

    .line 3514
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void

    .line 3516
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public KeepScreenOn()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if keep screen on is set to enabled, else it returns false."
    .end annotation

    .line 3522
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->keepScreenOn:Z

    return v0
.end method

.method public KeyboardVisiblityChanged(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked if the keyboard was visible or invisible."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 684
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "KeyboardVisiblityChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LockSideMenu()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to lock the side menu. This means the user can not open the side menu until the side menu  unlock block is used."
    .end annotation

    .line 3029
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3030
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->lockedMenu:Z

    .line 3031
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 3032
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 3033
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public MenuInitialize()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect when the menu has loaded. Set here your blocks like TitleBarIcon or AddMenuItem."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MenuInitialize"

    .line 2457
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MenuItemSelected(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect when a menu item has been selected."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "MenuItemSelected"

    .line 2534
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MinSdk(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "21"
        editorType = "min_sdk"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public MoveTaskToBack()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move task to back. That means it will minimize your current app."
    .end annotation

    const/4 v0, 0x1

    .line 2757
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->moveTaskToBack(Z)Z

    return-void
.end method

.method public NavigationBarColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2794
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    return v0
.end method

.method public NavigationBarColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set navigation bar color. This will work starting from API Level 21 (Android Lollipop)"
    .end annotation

    .line 2789
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setNavigationBarColor(Landroid/app/Activity;I)V

    return-void
.end method

.method public NavigationBarLightIcons(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This option tells the system to use dark navigation bar icons, useful for lighter colored navigation bars. Works only for devices with API >= 26."
    .end annotation

    .line 3209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const-string p1, "Form"

    const-string v0, "Sorry, navigation bar light icons is not available for API Level < 26"

    .line 3210
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3212
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->navigationBarLight:Z

    if-eqz p1, :cond_1

    .line 3213
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->StatusbarLightIcons()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3214
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, -0x7fffdff0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3216
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, -0x7ffffff0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 3217
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->StatusbarLightIcons()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 3218
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->StatusbarLightIcons(Z)V

    return-void

    .line 3220
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public NavigationBarLightIcons()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 3227
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->navigationBarLight:Z

    return v0
.end method

.method public NavigationIconColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the navigation icon color."
    .end annotation

    .line 3888
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->navigationIconColor:I

    return v0
.end method

.method public NavigationIconColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the navigation icon color."
    .end annotation

    .line 3874
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 3875
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3877
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3879
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    :cond_0
    :goto_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->navigationIconColor:I

    return-void
.end method

.method public OnAppPause()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The system calls this method as the first indication that the user is leaving your activity (though it does not always mean the activity is being destroyed)."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnAppPause"

    .line 2942
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnAppResume()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the activity enters the Resumed state, it comes to the foreground, and then the system invokes this event."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnAppResume"

    .line 2936
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnAppStop()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When your activity is no longer visible to the user, it has entered the Stopped state, and the system invokes this event."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnAppStop"

    .line 2948
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OpenAppSettings()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens the settings screen of the app. Useful if \'Are Permissions Granted\' has returned false."
    .end annotation

    .line 3318
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->appSettings(Landroid/content/Context;)V

    return-void
.end method

.method public OpenScreenAnimation()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ScreenAnimation;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for switching to another screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .line 1791
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    if-eqz v0, :cond_0

    .line 1792
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public OpenScreenAnimation(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenAnimation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1807
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x389

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Screen"

    .line 1809
    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 1813
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    return-void
.end method

.method public OpenScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 1823
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method

.method public OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .locals 0

    .line 1833
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    return-void
.end method

.method public OpenSystemWriteSettings()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens the app\'s system settings page. This works only for devices with android 6+."
    .end annotation

    .line 3324
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/PermissionUtil;->appSystemSettings(Landroid/content/Context;)V

    return-void
.end method

.method public OptionsMenuIconColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the options menu icon color."
    .end annotation

    .line 3869
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->optionsMenuIconColor:I

    return v0
.end method

.method public OptionsMenuIconColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the options menu icon color."
    .end annotation

    .line 3855
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 3856
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3858
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3860
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    :cond_0
    :goto_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->optionsMenuIconColor:I

    return-void
.end method

.method public OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when another screen has closed and control has returned to this screen."
    .end annotation

    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Form "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OtherScreenClosed, otherScreenName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2225
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    .line 2224
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "OtherScreenClosed"

    .line 2226
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PackageName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "app_package_name"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom PackageName for the app. Min 8 chars, max 35 chars, min 3 words, max 5 words, no special chars, only ASCII a-z and dots for separators"
        userVisible = false
    .end annotation

    return-void
.end method

.method public PermissionDenied(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "android.permission."

    .line 3569
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 3571
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const-string v3, "PermissionDenied"

    .line 3573
    invoke-static {p0, v3, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x38c

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 3574
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public PermissionGranted(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "android.permission."

    .line 3586
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 3588
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PermissionGranted"

    .line 3590
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PrimaryColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 3248
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    return v0
.end method

.method public PrimaryColor(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the primary color used for Material UI elements, such as the ActionBar."
        userVisible = false
    .end annotation

    .line 3235
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez p1, :cond_0

    .line 3236
    sget v1, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    goto :goto_0

    :cond_0
    move v1, p1

    .line 3237
    :goto_0
    iput v1, p0, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    if-eqz v0, :cond_1

    .line 3238
    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    if-eq v1, v2, :cond_1

    .line 3240
    iput v1, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    .line 3241
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    .line 3242
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public PrimaryColorDark()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 3261
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    return v0
.end method

.method public PrimaryColorDark(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF303F9F"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the primary color used for darker elements in Material UI."
        userVisible = false
    .end annotation

    .line 3256
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    return-void
.end method

.method public RTLSupport(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public ReceiveSharedText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "receive_types"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public RemoveSideMenu()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a first created side menu. This block will be usefull if you need to update a side menu dynamically. You can use this block too to test a side menu in the companion. Add then this block above of the \'Side Menu\' block."
    .end annotation

    .line 3010
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3012
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->removeViewAt(I)V

    .line 3013
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 3014
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v0, 0x0

    .line 3015
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    .line 3016
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 3018
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->UpdateTitlebarItemColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3020
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public RemoveTitleBarIcons()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove all added action icons from the TitleBar."
    .end annotation

    .line 2896
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 2898
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const v3, 0x16f4f51

    .line 2900
    invoke-interface {v0, v3}, Landroid/view/Menu;->removeItem(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method ReplayFormOrientation()V
    .locals 5

    const-string v0, "Form"

    const-string v1, "ReplayFormOrientation()"

    .line 813
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 815
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 816
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 818
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    .line 819
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    sget-object v4, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    if-ne v3, v4, :cond_0

    .line 820
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v2, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:I

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    goto :goto_1

    .line 822
    :cond_0
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v2, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:I

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ResetMenu()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset the menu back to its default"
    .end annotation

    .line 2539
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 2540
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 2541
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V

    .line 2542
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    :cond_0
    return-void
.end method

.method public ScreenOrientation()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/ScreenOrientation;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The requested screen orientation, specified as a text value.  Commonly used values are landscape, portrait, sensor, user and unspecified.  See the Android developer documentation for ActivityInfo.Screen_Orientation for the complete list of possible settings."
    .end annotation

    .line 1601
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientationAbstract()Lcom/google/appinventor/components/common/ScreenOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScreenOrientation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ScreenOrientation(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenOrientation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "unspecified"
        editorType = "screen_orientation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1659
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenOrientation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenOrientation;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x385

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ScreenOrientation"

    .line 1661
    invoke-virtual {p0, p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 1665
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientationAbstract(Lcom/google/appinventor/components/common/ScreenOrientation;)V

    return-void
.end method

.method public ScreenOrientationAbstract()Lcom/google/appinventor/components/common/ScreenOrientation;
    .locals 1

    .line 1609
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getRequestedOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1635
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1625
    :pswitch_0
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->FullSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1629
    :pswitch_1
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->ReversePortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1627
    :pswitch_2
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->ReverseLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1633
    :pswitch_3
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorPortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1631
    :pswitch_4
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1615
    :pswitch_5
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->NoSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1619
    :pswitch_6
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Sensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1611
    :pswitch_7
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Behind:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1623
    :pswitch_8
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->User:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1617
    :pswitch_9
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Portrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1613
    :pswitch_a
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Landscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1621
    :pswitch_b
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ScreenOrientationAbstract(Lcom/google/appinventor/components/common/ScreenOrientation;)V
    .locals 0

    .line 1644
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ScreenOrientation;->getOrientationConstant()I

    move-result p1

    .line 1645
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    return-void
.end method

.method public ScreenOrientationChanged()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Screen orientation changed"
    .end annotation

    .line 1067
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    .line 1068
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;->onOrientationChange()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ScreenOrientationChanged"

    .line 1070
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Scrollable(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1197
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    .line 1201
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    .line 1202
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    .line 1205
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->TitleVisible(Z)V

    .line 1209
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    .line 1210
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;->onOrientationChange()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Scrollable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "When checked, there will be a vertical scrollbar on the screen, and the height of the application can exceed the physical height of the device. When unchecked, the application height is constrained to the height of the device."
    .end annotation

    .line 1185
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    return v0
.end method

.method public ShowAboutApplication()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the dialog which shows when pressing the \"About This Application\" button in the menu."
    .end annotation

    .line 2588
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->showAboutApplicationNotification()V

    return-void
.end method

.method public ShowKeyboard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the keyboard"
    .end annotation

    const-string v0, "input_method"

    .line 2836
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 2838
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method public ShowListsAsJson(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If false, lists will be converted to strings using Lisp notation, i.e., as symbols separated by spaces, e.g., (a 1 b2 (c d). If true, lists will appear as in Json or Python, e.g.  [\"a\", 1, \"b\", 2, [\"c\", \"d\"]].  This property appears only in Screen 1, and the value for Screen 1 determines the behavior for all screens. The property defaults to \"false\" meaning that the App Inventor programmer must explicitly set it to \"true\" if JSON/Python syntax is desired. At some point in the future we will alter the system so that new projects are created with this property set to \"true\" by default. Existing projects will not be impacted. The App Inventor programmer can also set it back to \"false\" in newer projects if desired. "
        userVisible = false
    .end annotation

    .line 2016
    sput-boolean p1, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    return-void
.end method

.method public ShowListsAsJson()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 2022
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    return v0
.end method

.method public ShowNavBar(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "experimental"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2969
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->showNavBar:Z

    .line 2970
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2972
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->VisibilityHelper(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2973
    new-instance v1, Lcom/google/appinventor/components/runtime/Form$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form$6;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public ShowNavBar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show/Hide Navigation Bar"
    .end annotation

    .line 2992
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showNavBar:Z

    return v0
.end method

.method public ShowOptionsMenu(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 2954
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->showOptionsMenu:Z

    return-void
.end method

.method public ShowStatusBar(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1572
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    if-eq p1, v0, :cond_1

    const/16 v0, 0x800

    const/16 v1, 0x400

    if-eqz p1, :cond_0

    .line 1574
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 1575
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 1577
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1578
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1580
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    :cond_1
    return-void
.end method

.method public ShowStatusBar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The status bar is the topmost bar on the screen. This property reports whether the status bar is visible."
    .end annotation

    .line 1561
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    return v0
.end method

.method public ShowTitlebarBackButton(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true it will show in the TitleBar a back button only if no side menu was added. If a side menu was added it will remove the \u2018hamburger\u2019-menu icon but the side menu can still be opened."
    .end annotation

    .line 2920
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->stateBackButton:Z

    .line 2921
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2922
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2924
    :cond_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/Form;->toolbarIconColor:I

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->UpdateTitlebarItemColor(I)V

    return-void
.end method

.method public ShowTitlebarBackButton()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the state of titlebar back button."
    .end annotation

    .line 2930
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->stateBackButton:Z

    return v0
.end method

.method public SideMenu(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a Side Menu. Set to \"layout\" your layout that will be then your side menu. Use as example a vertical arrangement. Your choosen layout will be then removed from the screen and only visible in the side menu.\"Information\": This block works on companion only if you add a side menu on button click.Don\u2019t add it in companion on \"screen initialize event\". Else the companion will crash.Do NOT use this block with the Side Menu Layout component"
    .end annotation

    .line 3055
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3057
    :try_start_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    .line 3058
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3065
    new-instance p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/16 v1, 0x128

    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p1, v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const v1, 0x800003

    .line 3068
    iput v1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 3069
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3071
    new-instance p1, Lcom/google/appinventor/components/runtime/Form$7;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/Form$7;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3079
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_0

    .line 3080
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;)V

    .line 3081
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 3082
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 3083
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->AddDrawerSync()V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 3060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Form"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3061
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    return-void
.end method

.method public SideMenuClose()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If you had set your side menu then you can use this block to close it as example with a button click."
    .end annotation

    .line 3152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    const v1, 0x800003

    .line 3153
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    :cond_0
    return-void
.end method

.method public SideMenuClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked if the side menu was closed."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SideMenuClosed"

    .line 3179
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SideMenuLayout(Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;)V
    .locals 3

    .line 3088
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3090
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->layoutBackup:Ljava/lang/Object;

    .line 3092
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3093
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3096
    :cond_0
    new-instance p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/16 v1, 0x128

    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p1, v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const v1, 0x800003

    .line 3099
    iput v1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 3100
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->lp:Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3102
    new-instance p1, Lcom/google/appinventor/components/runtime/Form$8;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/Form$8;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3110
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_1

    .line 3111
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;)V

    .line 3112
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 3113
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    .line 3114
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->AddDrawerSync()V

    :cond_1
    return-void
.end method

.method public SideMenuOpen()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If you had set your side menu then you can use this block to open it as example with a button click."
    .end annotation

    .line 3144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    const v1, 0x800003

    .line 3145
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    :cond_0
    return-void
.end method

.method public SideMenuOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event will be invoked if the side menu was opened."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SideMenuOpened"

    .line 3174
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Sizing(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Responsive"
        editorType = "sizing"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to fixed,  screen layouts will be created for a single fixed-size screen and autoscaled. If set to responsive, screen layouts will use the actual resolution of the device.  See the documentation on responsive design in App Inventor for more information. This property appears on Screen1 only and controls the sizing for all screens in the app."
        userVisible = false
    .end annotation

    .line 1966
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sizing("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    .line 1968
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    const-string v0, "Fixed"

    .line 1969
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1970
    sput-boolean p1, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    .line 1971
    iget p1, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    .line 1972
    iget p1, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1974
    sput-boolean p1, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    .line 1976
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 1977
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    .line 1978
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1980
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "formWidth = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " formHeight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SplashEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the user will see a splash screen while the app is loading the content."
        userVisible = false
    .end annotation

    .line 3288
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->splashEnabled:Z

    return-void
.end method

.method public SplashEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 3293
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->splashEnabled:Z

    return v0
.end method

.method public SplashIcon(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "image_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public StatusBarColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2781
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->statusbarColor:I

    return v0
.end method

.method public StatusBarColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set status bar color. This will work starting from API Level 21 (Android Lollipop"
    .end annotation

    .line 2775
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->statusbarColor:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2776
    :cond_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setStatusBarColor(Landroid/app/Activity;I)V

    return-void
.end method

.method public StatusbarLightIcons(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This option tells the system to use dark statusbar icons, useful for lighter colored status bars. Works only for devices with API >= 23."
    .end annotation

    .line 3185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const-string p1, "Form"

    const-string v0, "Sorry, statusbar light icons is not available for API Level < 23"

    .line 3186
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3188
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->statusbarLight:Z

    if-eqz p1, :cond_1

    .line 3189
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->NavigationBarLightIcons()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3190
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, -0x7fffdff0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3192
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 3193
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->NavigationBarLightIcons()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 3194
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->NavigationBarLightIcons(Z)V

    return-void

    .line 3196
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public StatusbarLightIcons()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 3203
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->statusbarLight:Z

    return v0
.end method

.method public TaskDescription(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets information describing the task with this activity for presentation inside the Recents System UI. You will see the settings if the device API is >= 21 and you minimize the app."
    .end annotation

    .line 2961
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setAppBackgroundTaskInfo(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public Theme(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "AppTheme"
        editorType = "theme"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the theme used by the application."
        userVisible = false
    .end annotation

    return-void
.end method

.method public Title()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The caption for the form, which apears in the title bar"
    .end annotation

    .line 1449
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1450
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1451
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1453
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1456
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1470
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setTitle(Ljava/lang/CharSequence;)V

    .line 1471
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->toolbarTitle:Ljava/lang/String;

    .line 1472
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1473
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public TitleBarColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2770
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    return v0
.end method

.method public TitleBarColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set title bar color"
    .end annotation

    .line 2762
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    .line 2763
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2764
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->titleBarColor:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public TitleBarFontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 3425
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->fontTypeface:I

    return v0
.end method

.method public TitleBarFontTypeface(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 3415
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->fontTypeface:I

    .line 3416
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3417
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    const-string v1, ""

    .line 3418
    invoke-direct {p0, v1, p1, v0}, Lcom/google/appinventor/components/runtime/Form;->titleBarFontHelper(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public TitleBarIconSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The event returns the \'icon\' or \'name\' of the selected icon."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "TitleBarIconSelected"

    .line 2891
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TitleBarSubTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the TitleBar\'s subtitle."
    .end annotation

    .line 2828
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2829
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2831
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "Screen1"

    return-object v0
.end method

.method public TitleBarSubTitle(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the TitleBar\'s subtitle."
    .end annotation

    .line 2820
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->toolbarSubTitle:Ljava/lang/String;

    .line 2821
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2822
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public TitleBarTypefaceImport(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    .line 3433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3434
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3435
    invoke-direct {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->titleBarFontHelper(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public TitleVisible(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1542
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    goto :goto_0

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    .line 1548
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    :cond_1
    return-void
.end method

.method public TitleVisible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The title bar is the top gray bar on the screen. This property reports whether the title bar is visible."
    .end annotation

    .line 1531
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    return v0
.end method

.method public TitlebarBackButtonClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect when a menu item has been selected."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TitlebarBackButtonClicked"

    .line 2562
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TitlebarTextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the text color from the TitleBar."
    .end annotation

    .line 2914
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->titleBarTextColor:I

    return v0
.end method

.method public TitlebarTextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom color for the TitleBar text."
    .end annotation

    .line 2907
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->titleBarTextColor:I

    .line 2908
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->titleBarTextColorHelper(I)V

    return-void
.end method

.method public TutorialURL(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A URL to use to populate the Tutorial Sidebar while editing a project. Used as a teaching aid."
        userVisible = false
    .end annotation

    return-void
.end method

.method public UnlockSideMenu()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to unlock the side menu. This means the user can now open again the side menu."
    .end annotation

    .line 3040
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3041
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->lockedMenu:Z

    .line 3042
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 3043
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 3044
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public VersionCode()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This block will returns the version code"
    .end annotation

    const/4 v0, 0x0

    .line 2810
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 2812
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Form"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public VersionCode(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "An integer value which must be incremented each time a new Android Application Package File (APK) is created for the Google Play Store."
        userVisible = false
    .end annotation

    return-void
.end method

.method public VersionName()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This block will returns the version name"
    .end annotation

    .line 2800
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2802
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    return-object v0
.end method

.method public VersionName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A string which can be changed to allow Google Play Store users to distinguish between different versions of the App."
        userVisible = false
    .end annotation

    return-void
.end method

.method public VisibilityHelper(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1002

    :goto_0
    return p1
.end method

.method public Width()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen width (x-size)."
    .end annotation

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Form.Width = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    return v0
.end method

.method public addAboutInfoToMenu(Landroid/view/Menu;)V
    .locals 3

    .line 2472
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreenTitle:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v1, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 2473
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Form$2;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public addElevation()V
    .locals 2

    .line 3400
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3401
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    .line 3403
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_1

    .line 3404
    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 3407
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V
    .locals 3

    .line 3695
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 3696
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3697
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3698
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3699
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3702
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 3704
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->onGranted()V

    return-void

    .line 3707
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$13;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form$13;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V
    .locals 2

    .line 3671
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3673
    invoke-interface {p2, p1, v0}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    return-void

    .line 3676
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$11;

    invoke-direct {v1, p0, p1, p2, p0}, Lcom/google/appinventor/components/runtime/Form$11;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public assertPermission(Ljava/lang/String;)V
    .locals 1

    .line 3644
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3645
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callInitialize(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Form"

    .line 2684
    :try_start_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->OnCompanionRefresh()V

    .line 2685
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Initialize"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2694
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "calling Initialize method for Object "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2697
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoke exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :catch_1
    return-void

    :catch_2
    move-exception p1

    .line 2687
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Security exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z
    .locals 1

    .line 982
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-nez v0, :cond_1

    if-ne p1, p0, :cond_0

    const-string p1, "Initialize"

    .line 983
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 988
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    :cond_2
    return p1
.end method

.method public clear()V
    .locals 2

    .line 2593
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2594
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2595
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 2596
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 2599
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->defaultPropertyValues()V

    .line 2600
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2601
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2602
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2603
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2604
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2605
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2606
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2607
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2608
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2609
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 2610
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    .line 2612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnClearListener;

    .line 2613
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnClearListener;->onClear()V

    goto :goto_0

    .line 2616
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2617
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Form.clear() About to do moby GC!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2618
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2619
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected closeApplicationFromBlocks()V
    .locals 0

    .line 2410
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    return-void
.end method

.method protected closeForm(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 2394
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->setResult(ILandroid/content/Intent;)V

    .line 2396
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 2397
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    return-void
.end method

.method public compatScalingFactor()F
    .locals 1

    .line 2259
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    return v0
.end method

.method public deleteComponent(Ljava/lang/Object;)V
    .locals 1

    .line 2623
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnStopListener;

    if-eqz v0, :cond_0

    .line 2624
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2626
    :cond_0
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    if-eqz v0, :cond_1

    .line 2627
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2629
    :cond_1
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnResumeListener;

    if-eqz v0, :cond_2

    .line 2630
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2632
    :cond_2
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnPauseListener;

    if-eqz v0, :cond_3

    .line 2633
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2635
    :cond_3
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    if-eqz v0, :cond_4

    .line 2636
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2638
    :cond_4
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    if-eqz v0, :cond_5

    .line 2639
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2641
    :cond_5
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    if-eqz v0, :cond_6

    .line 2642
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2644
    :cond_6
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    if-eqz v0, :cond_7

    .line 2645
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2647
    :cond_7
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/Deleteable;

    if-eqz v0, :cond_8

    .line 2648
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/Deleteable;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/Deleteable;->onDelete()V

    .line 2650
    :cond_8
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    if-eqz v0, :cond_9

    .line 2651
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2653
    :cond_9
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnCreateListener;

    if-eqz v0, :cond_a

    .line 2654
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_a
    return-void
.end method

.method public deviceDensity()F
    .locals 1

    .line 2255
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    return v0
.end method

.method public varargs dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 7

    .line 1132
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$15;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Form$15;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 7

    .line 1147
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$16;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Form$16;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 0

    .line 1005
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V
    .locals 0

    .line 1011
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V
    .locals 0

    .line 3746
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->printStackTrace()V

    .line 3747
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3760
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form$14;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public doesAppDeclarePermission(Ljava/lang/String;)Z
    .locals 1

    .line 3777
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dontGrabTouchEventsForComponent()V
    .locals 2

    .line 2665
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public declared-synchronized fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1

    monitor-enter p0

    .line 2734
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->performAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 2200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3787
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "file:///android_asset/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 3344
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    .line 3345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file:///android_asset/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3791
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3795
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 0

    return-object p0
.end method

.method public getInstalledFrom()Ljava/lang/String;
    .locals 3

    .line 2178
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Developer"

    return-object v0

    .line 2183
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.google.android.feedback"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "com.sec.android.app.samsungapps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "com.amazon.venezia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v0, "Unknown"

    return-object v0

    :pswitch_0
    const-string v0, "Google Play"

    return-object v0

    :pswitch_1
    const-string v0, "Samsung App Store"

    return-object v0

    :pswitch_2
    const-string v0, "Amazon Appstore"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ed94931 -> :sswitch_3
        -0x490565ea -> :sswitch_2
        -0x3e676dcf -> :sswitch_1
        0x21b10dcc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getKodularPackageName()Ljava/lang/String;
    .locals 4

    .line 2153
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2156
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2157
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2158
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, ".Screen1"

    const-string v3, ""

    .line 2161
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getOnCreateBundle()Landroid/os/Bundle;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPrivatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3806
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isCustomPackage()Z
    .locals 2

    .line 2168
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getKodularPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDeniedPermission(Ljava/lang/String;)Z
    .locals 2

    .line 3633
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3634
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isInstalledThruStore()Z
    .locals 2

    .line 2196
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getInstalledFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyboardVisible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the status of the keyboard. If the keyboard is visible then the result is true."
    .end annotation

    .line 2855
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardReallyShown:Z

    return v0
.end method

.method public isRepl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 711
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Form "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got onActivityResult, requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "APP_INVENTOR_RESULT"

    .line 720
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 721
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string p2, "other screen closed"

    .line 725
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Form;->decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 727
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Form;->nextFormName:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/Form;->OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/ActivityResultListener;

    if-eqz v0, :cond_2

    .line 732
    invoke-interface {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/appinventor/components/runtime/ActivityResultListener;

    .line 737
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/ActivityResultListener;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 738
    invoke-interface {v3, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    return-void

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->BackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 694
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 559
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 560
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    const-string v0, "Form"

    const-string v1, "onConfigurationChanged() called"

    .line 564
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Form$1;-><init>(Lcom/google/appinventor/components/runtime/Form;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 356
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    .line 361
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    .line 362
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnCreateListener;

    .line 363
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnCreateListener;->onCreate()V

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    .line 370
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateBundle:Landroid/os/Bundle;

    .line 374
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of p1, p0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz p1, :cond_2

    .line 376
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Form;->isCompanion:Z

    .line 379
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    .line 380
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;->computeCompatibleScaling(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    .line 381
    new-instance p1, Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 382
    new-instance v0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    const/4 p1, 0x0

    .line 384
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    .line 385
    sget-boolean p1, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    const-string v0, " formName = "

    const-string v1, "Form"

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string v3, "Screen1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "MULTI: _initialized = "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sput-boolean v2, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    .line 392
    sget-boolean p1, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    if-eqz p1, :cond_3

    const-string p1, "MultiDex already installed."

    .line 393
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    return-void

    :cond_3
    const-string p1, "Please Wait..."

    const-string v0, "Installation Finishing"

    .line 396
    invoke-static {p0, p1, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    .line 397
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 398
    new-instance p1, Lcom/google/appinventor/components/runtime/Form$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/appinventor/components/runtime/Form$a;-><init>(B)V

    new-array v1, v2, [Lcom/google/appinventor/components/runtime/Form;

    aput-object p0, v1, v0

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Form$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 401
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "NO MULTI: _initialized = "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    sput-boolean v2, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    .line 403
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/16 v0, 0xbd

    if-eq p1, v0, :cond_0

    .line 951
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 949
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->createFullScreenVideoDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method onCreateFinish()V
    .locals 4

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreateFinish called "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 430
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->populatePermissions()V

    .line 432
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->defaultPropertyValues()V

    const/4 v0, 0x0

    .line 437
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getIntent()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 439
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "APP_INVENTOR_START"

    .line 441
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_5

    .line 445
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 446
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.intent.extra.STREAM"

    if-eqz v1, :cond_2

    .line 447
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    const/4 v0, 0x1

    .line 450
    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    goto :goto_1

    .line 452
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "image/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 453
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    const/4 v0, 0x2

    .line 456
    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    goto :goto_1

    .line 458
    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "android.intent.extra.TEXT"

    .line 459
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 461
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    const/4 v0, 0x3

    .line 462
    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    goto :goto_1

    .line 464
    :cond_4
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "video/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 465
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    const/4 v0, 0x4

    .line 468
    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValueType:I

    .line 473
    :cond_5
    :goto_1
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    .line 477
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 478
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 479
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 483
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$define()V

    .line 490
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Initialize()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 2450
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->showOptionsMenu:Z

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Form "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->removeDispatchDelegate(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V

    .line 920
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    .line 921
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnDestroyListener;->onDestroy()V

    goto :goto_0

    .line 923
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 9

    .line 643
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 644
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getHeight()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 650
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onGlobalLayout(): diffPercent = "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Form"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    cmpg-double v7, v0, v5

    if-gez v7, :cond_0

    const-string v0, "keyboard hidden!"

    .line 653
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    if-eqz v0, :cond_1

    .line 655
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 656
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 658
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    goto :goto_0

    :cond_0
    const-string v0, "keyboard shown!"

    .line 662
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 664
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 665
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 666
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    .line 670
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 671
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 672
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 676
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    int-to-double v5, v0

    int-to-double v0, v1

    const-wide v7, 0x3fc3333333333333L    # 0.15

    mul-double v0, v0, v7

    cmpl-double v2, v5, v0

    if-lez v2, :cond_2

    const/4 v3, 0x1

    .line 678
    :cond_2
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardReallyShown:Z

    .line 679
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Form;->KeyboardVisiblityChanged(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 870
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Form "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got onNewIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    .line 873
    invoke-interface {v1, p1}, Lcom/google/appinventor/components/runtime/OnNewIntentListener;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 2548
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2552
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    .line 2553
    invoke-interface {v2, p1}, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 883
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Form "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->OnAppPause()V

    .line 886
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnPauseListener;

    .line 887
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnPauseListener;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 551
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 552
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    if-eqz p1, :cond_0

    .line 553
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    :cond_0
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    const/16 v0, 0xbd

    if-eq p1, v0, :cond_0

    .line 961
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    return-void

    .line 958
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->prepareFullScreenVideoDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 2437
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2438
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2439
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->customMenu:Landroid/view/Menu;

    .line 2440
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->customActionBarIcon:Landroid/view/Menu;

    .line 2443
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V

    .line 2444
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->MenuInitialize()V

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 3539
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    const-string v1, "Form"

    if-nez v0, :cond_0

    const-string p1, "Received permission response which we cannot match."

    .line 3542
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3545
    :cond_0
    array-length v2, p3

    if-lez v2, :cond_2

    const/4 v1, 0x0

    .line 3546
    aget p3, p3, v1

    if-nez p3, :cond_1

    .line 3547
    aget-object p2, p2, v1

    const/4 p3, 0x1

    invoke-interface {v0, p2, p3}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3549
    :cond_1
    aget-object p2, p2, v1

    invoke-interface {v0, p2, v1}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3552
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onRequestPermissionsResult: grantResults.length = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " requestCode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    :goto_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 837
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Form "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 842
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->applicationIsBeingClosed:Z

    if-eqz v0, :cond_0

    .line 843
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    return-void

    .line 847
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->OnAppResume()V

    .line 849
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnResumeListener;

    .line 850
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnResumeListener;->onResume()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 897
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Form "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " got onStop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->OnAppStop()V

    .line 900
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnStopListener;

    .line 901
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnStopListener;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public openAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3818
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public openAssetForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3359
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "file:///android_asset/"

    .line 3824
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3825
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/16 v1, 0x16

    .line 3826
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "file:"

    .line 3827
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3828
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/net/URI;)Ljava/io/FileInputStream;

    move-result-object p1

    return-object p1

    .line 3830
    :cond_1
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    return-object p1
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I
    .locals 3

    .line 762
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->generateNewRequestCode()I

    move-result v0

    .line 763
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 781
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnCreateListener(Lcom/google/appinventor/components/runtime/OnCreateListener;)V
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnCreateOptionsMenu(Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;)V
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnNewIntent(Lcom/google/appinventor/components/runtime/OnNewIntentListener;)V
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnOptionsItemSelected(Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;)V
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnOrientationChangeListener(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;-><init>(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeElevation()V
    .locals 2

    .line 3387
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3388
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    .line 3390
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3391
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 3394
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public runtimeFormErrorOccurredEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1168
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "functionName is "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FORM_RUNTIME_ERROR"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "errorNumber is "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "message is "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 4

    .line 2289
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    if-nez v0, :cond_0

    .line 2292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Form$21;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 v0, -0x3e8

    if-gt p2, v0, :cond_1

    .line 2301
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    div-int/lit8 p2, v0, 0x64

    .line 2304
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 2307
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 5

    .line 2264
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    if-nez v0, :cond_0

    .line 2267
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$20;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Form$20;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2275
    :cond_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Form.setChildWidth(): width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " parent Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " child = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_1

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 2277
    div-int/lit8 p2, v0, 0x64

    .line 2281
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 2284
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method

.method setYandexTranslateTagline()V
    .locals 1

    const-string v0, "<p><small>Language translation powered by Yandex.Translate</small></p>"

    .line 2568
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->yandexTranslateTagline:Ljava/lang/String;

    return-void
.end method

.method protected startNewForm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 2106
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "startNewForm:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "Trying to get package name..."

    .line 2112
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2115
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Package Name is "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2118
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v4, 0x10000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2119
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v3, "Screen1"

    .line 2122
    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2124
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Setting Intent Class to "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_0

    const-string v3, "open another screen"

    goto :goto_0

    :cond_0
    const-string v3, "open another screen with start value"

    :goto_0
    if-eqz p2, :cond_1

    .line 2131
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "StartNewForm about to JSON encode:"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    invoke-static {p2, v3}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2133
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "StartNewForm got JSON encoding:"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p2, ""

    :goto_1
    const-string v4, "APP_INVENTOR_START"

    .line 2137
    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2140
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->nextFormName:Ljava/lang/String;

    .line 2141
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "about to start new form"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :try_start_0
    const-string p2, "startNewForm starting activity:"

    .line 2143
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2145
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p2, 0x386

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, p1, v0

    .line 2147
    invoke-virtual {p0, p0, v3, p2, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method protected toastAllowed()Z
    .locals 6

    .line 2672
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2673
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    sget-wide v4, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2674
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V
    .locals 4

    .line 788
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 790
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 794
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 795
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 799
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    .line 800
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 801
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 802
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 803
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 804
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 805
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    return-void
.end method
