.class public Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "WhiteMobi component"
    helpUrl = "https://docs.kodular.io/components/monetization/whitemobi/"
    iconName = "images/whitemobi.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "gson.jar",
        "whitemobisdk.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Ljava/lang/String;

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->context:Landroid/content/Context;

    .line 53
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 54
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 56
    new-instance p1, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;)V

    invoke-static {p1}, Lcom/white/mobi/sdk/WMManager;->setRewardListener(Lcom/white/mobi/sdk/IRewardsListener;)V

    return-void
.end method


# virtual methods
.method public ApplicationKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the application key."
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Ljava/lang/String;

    return-object v0
.end method

.method public ApplicationKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Ljava/lang/String;

    return-void
.end method

.method public OfferCompleted(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when an offer has been completed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OfferCompleted"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ShowOfferWall()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show WhiteMobi offerwall"
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Ljava/lang/String;

    invoke-static {v0}, Lcom/white/mobi/sdk/WMManager;->showOfferWall(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 87
    invoke-static {}, Lcom/white/mobi/sdk/WMManager;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/white/mobi/sdk/WMManager;->onResume(Landroid/content/Context;)V

    return-void
.end method
