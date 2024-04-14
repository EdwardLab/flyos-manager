.class public Lcom/google/appinventor/components/runtime/KodularInAppReview;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x15
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "...in ode messages file"
    helpUrl = "https://docs.kodular.io/components/monetization/in-app-review/"
    iconName = "images/inappReview.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "play-core.aar",
        "play-core.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.FOREGROUND_SERVICE"
    }
.end annotation


# instance fields
.field private ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/play/core/review/ReviewInfo;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/play/core/review/ReviewManager;

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularInAppReview;->testMode:Z

    .line 55
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularInAppReview;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:Z

    .line 60
    invoke-static {p1}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppReview;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/play/core/review/ReviewManager;

    .line 61
    invoke-interface {p1}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    .line 62
    new-instance v0, Lcom/google/appinventor/components/runtime/KodularInAppReview$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/KodularInAppReview$1;-><init>(Lcom/google/appinventor/components/runtime/KodularInAppReview;)V

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    const-string p1, "InApp Review"

    const-string v0, "Kodular InApp Review created"

    .line 75
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppReview;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/review/ReviewInfo;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppReview;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/play/core/review/ReviewInfo;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppReview;)Z
    .locals 1

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularInAppReview;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:Z

    return v0
.end method


# virtual methods
.method public Initialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Use this event to check if the app is ready to request the user to review"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Initialized"

    .line 85
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IsReady()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Check if the InApp Review component is ready to request a review"
    .end annotation

    .line 80
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularInAppReview;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:Z

    return v0
.end method

.method public RequestReview()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Launch the flow for a user to review the app"
    .end annotation

    .line 95
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularInAppReview;->testMode:Z

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/google/android/play/core/review/testing/FakeReviewManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularInAppReview;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Lcom/google/android/play/core/review/testing/FakeReviewManager;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/play/core/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularInAppReview$2;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/KodularInAppReview$2;-><init>(Lcom/google/appinventor/components/runtime/KodularInAppReview;Lcom/google/android/play/core/review/ReviewManager;)V

    .line 99
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularInAppReview;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/play/core/review/ReviewManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularInAppReview;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularInAppReview;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/play/core/review/ReviewInfo;

    .line 118
    invoke-interface {v0, v1, v2}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularInAppReview$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularInAppReview$3;-><init>(Lcom/google/appinventor/components/runtime/KodularInAppReview;)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method public ReviewClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Use this event to know when the review popup was closed (this triggers always, even if the user did not review)"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ReviewClosed"

    .line 90
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 131
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppReview;->testMode:Z

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether it is testing mode enabled or not."
    .end annotation

    .line 136
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularInAppReview;->testMode:Z

    return v0
.end method
