.class public Lcom/google/appinventor/components/runtime/KodularUnityAds;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "...in ode messages file"
    helpUrl = "https://docs.kodular.io/components/monetization/unity-ads_ads/"
    iconName = "images/unityads.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation


# instance fields
.field private YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[Ljava/lang/String;

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 30

    move-object/from16 v0, p0

    .line 48
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v1, ""

    .line 38
    iput-object v1, v0, Lcom/google/appinventor/components/runtime/KodularUnityAds;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:Ljava/lang/String;

    .line 39
    iput-object v1, v0, Lcom/google/appinventor/components/runtime/KodularUnityAds;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Ljava/lang/String;

    const/4 v1, 0x0

    .line 40
    iput-boolean v1, v0, Lcom/google/appinventor/components/runtime/KodularUnityAds;->testMode:Z

    const-string v2, "at"

    const-string v3, "be"

    const-string v4, "bg"

    const-string v5, "cy"

    const-string v6, "cz"

    const-string v7, "de"

    const-string v8, "dk"

    const-string v9, "ee"

    const-string v10, "es"

    const-string v11, "fi"

    const-string v12, "fr"

    const-string v13, "gb"

    const-string v14, "gr"

    const-string v15, "hr"

    const-string v16, "hu"

    const-string v17, "ie"

    const-string v18, "it"

    const-string v19, "lt"

    const-string v20, "lu"

    const-string v21, "lv"

    const-string v22, "mt"

    const-string v23, "nl"

    const-string v24, "pl"

    const-string v25, "pt"

    const-string v26, "ro"

    const-string v27, "se"

    const-string v28, "si"

    const-string v29, "sk"

    .line 165
    filled-new-array/range {v2 .. v29}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/KodularUnityAds;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:[Ljava/lang/String;

    move-object/from16 v1, p1

    .line 49
    iput-object v1, v0, Lcom/google/appinventor/components/runtime/KodularUnityAds;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 50
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, v0, Lcom/google/appinventor/components/runtime/KodularUnityAds;->context:Landroid/content/Context;

    .line 51
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, v0, Lcom/google/appinventor/components/runtime/KodularUnityAds;->activity:Landroid/app/Activity;

    .line 52
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/KodularUnityAds;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 53
    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    const-string v1, "Unity Ads"

    const-string v2, "Kodular Unity Ads created"

    .line 55
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public AdClosed(Ljava/lang/String;ZZ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was closed."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 127
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "AdClosed"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdOpened(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was opened."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdOpened"

    .line 122
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdStarted(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was started."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdStarted"

    .line 132
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Error(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed. The message will display the reason for why the ad failed."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Error"

    .line 111
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GameID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularUnityAds;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:Ljava/lang/String;

    return-object v0
.end method

.method public GameID(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularUnityAds;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:Ljava/lang/String;

    return-void
.end method

.method public IsReady()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the ad is finished loading and can now be shown."
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public PlacementID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularUnityAds;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Ljava/lang/String;

    return-object v0
.end method

.method public PlacementID(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularUnityAds;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Ljava/lang/String;

    return-void
.end method

.method public ShowAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows an ad to the user."
    .end annotation

    const-string v0, "The ad was not ready to be shown."

    .line 71
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->Error(Ljava/lang/String;)V

    return-void
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If you want to test the component then that this property to true. Then you will receive test ads."
        userVisible = false
    .end annotation

    .line 138
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularUnityAds;->testMode:Z

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 143
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularUnityAds;->testMode:Z

    return v0
.end method

.method public onInitialize()V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->GameID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->GameID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "The game id can not be empty."

    .line 61
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularUnityAds;->Error(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
