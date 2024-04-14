.class public final Lcom/google/appinventor/components/runtime/KodularPollfish;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/pollfish/interfaces/PollfishClosedListener;
.implements Lcom/pollfish/interfaces/PollfishCompletedSurveyListener;
.implements Lcom/pollfish/interfaces/PollfishOpenedListener;
.implements Lcom/pollfish/interfaces/PollfishReceivedSurveyListener;
.implements Lcom/pollfish/interfaces/PollfishSurveyNotAvailableListener;
.implements Lcom/pollfish/interfaces/PollfishUserNotEligibleListener;
.implements Lcom/pollfish/interfaces/PollfishUserRejectedSurveyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    iconName = "images/pollfish.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "pollfish.jar",
        "pollfish.aar",
        "play-services-base.jar",
        "play-services-base.aar",
        "play-services-ads-identifier.jar",
        "play-services-ads-identifier.aar",
        "play-services-basement.jar",
        "play-services-basement.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:Ljava/lang/String;

.field private qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

.field private testMode:Z

.field private xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 84
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    const/4 v1, 0x1

    .line 79
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->testMode:Z

    const-string v2, "Single Survey"

    .line 80
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 86
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 88
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularPollfish;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/KodularPollfish;->TestMode(Z)V

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularPollfish;->SurveyMode(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularPollfish;->RequestUUID(Ljava/lang/String;)V

    return-void
.end method

.method private F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho()V
    .locals 3

    .line 255
    new-instance v0, Lcom/pollfish/main/PollFish$ParamsBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/pollfish/main/PollFish$ParamsBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->testMode:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 256
    invoke-virtual {v0, v1}, Lcom/pollfish/main/PollFish$ParamsBuilder;->releaseMode(Z)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v2}, Lcom/pollfish/main/PollFish$ParamsBuilder;->rewardMode(Z)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularPollfish;->SurveyMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "offerwall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pollfish/main/PollFish$ParamsBuilder;->offerWallMode(Z)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v0

    .line 259
    invoke-virtual {v0, p0}, Lcom/pollfish/main/PollFish$ParamsBuilder;->pollfishCompletedSurveyListener(Lcom/pollfish/interfaces/PollfishCompletedSurveyListener;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p0}, Lcom/pollfish/main/PollFish$ParamsBuilder;->pollfishReceivedSurveyListener(Lcom/pollfish/interfaces/PollfishReceivedSurveyListener;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v0

    .line 261
    invoke-virtual {v0, p0}, Lcom/pollfish/main/PollFish$ParamsBuilder;->pollfishOpenedListener(Lcom/pollfish/interfaces/PollfishOpenedListener;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v0

    .line 262
    invoke-virtual {v0, p0}, Lcom/pollfish/main/PollFish$ParamsBuilder;->pollfishClosedListener(Lcom/pollfish/interfaces/PollfishClosedListener;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v0

    .line 263
    invoke-virtual {v0, p0}, Lcom/pollfish/main/PollFish$ParamsBuilder;->pollfishSurveyNotAvailableListener(Lcom/pollfish/interfaces/PollfishSurveyNotAvailableListener;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v0

    .line 264
    invoke-virtual {v0, p0}, Lcom/pollfish/main/PollFish$ParamsBuilder;->pollfishUserNotEligibleListener(Lcom/pollfish/interfaces/PollfishUserNotEligibleListener;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v0

    .line 265
    invoke-virtual {v0, p0}, Lcom/pollfish/main/PollFish$ParamsBuilder;->pollfishUserRejectedSurveyListener(Lcom/pollfish/interfaces/PollfishUserRejectedSurveyListener;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_0

    .line 268
    invoke-virtual {v0, v1}, Lcom/pollfish/main/PollFish$ParamsBuilder;->requestUUID(Ljava/lang/String;)Lcom/pollfish/main/PollFish$ParamsBuilder;

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pollfish/main/PollFish$ParamsBuilder;->build()Lcom/pollfish/main/PollFish$ParamsBuilder;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pollfish/main/PollFish;->initWith(Landroid/app/Activity;Lcom/pollfish/main/PollFish$ParamsBuilder;)V

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/content/SharedPreferences;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "KODULAR_PREF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularPollfish;)Landroid/content/SharedPreferences;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularPollfish;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 369
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularPollfish;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    return-object p0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/pollfish/classes/SurveyInfo;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPA="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pollfish/classes/SurveyInfo;->getSurveyCPA()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",LOI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p0}, Lcom/pollfish/classes/SurveyInfo;->getSurveyLOI()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",IR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p0}, Lcom/pollfish/classes/SurveyInfo;->getSurveyIR()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Reward Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p0}, Lcom/pollfish/classes/SurveyInfo;->getRewardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Reward Value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p0}, Lcom/pollfish/classes/SurveyInfo;->getRewardValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final APIKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns value of Pollfish API Key"
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    return-object v0
.end method

.method public final APIKey(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-nez v0, :cond_1

    .line 1132
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularPollfish;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1147
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularPollfish$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/KodularPollfish$1;-><init>(Lcom/google/appinventor/components/runtime/KodularPollfish;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1199
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularPollfish;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho()V

    return-void
.end method

.method public final PollfishUserNotEligible()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when Pollfish user was not eligible."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PollfishUserNotEligible"

    .line 309
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final PollfishUserRejected()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when Pollfish user was rejected."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PollfishUserRejected"

    .line 314
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final RequestUUID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Ljava/lang/String;

    return-object v0
.end method

.method public final RequestUUID(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets a unique id to identify a user and be passed through server-to-server callbacks"
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 226
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:Ljava/lang/String;

    .line 227
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularPollfish;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho()V

    return-void
.end method

.method public final ShowSurvey()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show Survey"
    .end annotation

    .line 97
    invoke-static {}, Lcom/pollfish/main/PollFish;->show()V

    return-void
.end method

.method public final SurveyClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when Pollfish Survey was closed."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurveyClosed"

    .line 282
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final SurveyCompleted(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when Pollfish survey was completed. surveyInfo is CSV list containing CPA, LOI, IR. Empty for Survey Offerwall."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SurveyCompleted"

    .line 288
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final SurveyMode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Survey mode. It can either be Single Survey or Survey Offerwall"
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:Ljava/lang/String;

    return-object v0
.end method

.method public final SurveyMode(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Single Survey"
        editorType = "pollfish_options"
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->o4oEL8NAO5pXZcOSBAknA2NvsNjJJvehWW0lJ74yBWMu5XdCwoMznIBTr1ZGCAX:Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularPollfish;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho()V

    return-void
.end method

.method public final SurveyNotAvailable()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when Pollfish Survey was not available."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurveyNotAvailable"

    .line 304
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final SurveyOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when Survey was opened."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SurveyOpened"

    .line 293
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final SurveyReceived(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when device receives survey and user can be prompted to start the survey.surveyInfo is CSV list containing CPA, LOI, IR. Empty for Survey Offerwall."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SurveyReceived"

    .line 299
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final TestMode(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If you want to test the component then set this property to true and before publishing to Play Store, set back to false."
    .end annotation

    .line 239
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->testMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 243
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->testMode:Z

    .line 244
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularPollfish;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho()V

    return-void
.end method

.method public final TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 249
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->testMode:Z

    return v0
.end method

.method public final onPollfishClosed()V
    .locals 0

    .line 319
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularPollfish;->SurveyClosed()V

    return-void
.end method

.method public final onPollfishOpened()V
    .locals 0

    .line 329
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularPollfish;->SurveyOpened()V

    return-void
.end method

.method public final onPollfishSurveyCompleted(Lcom/pollfish/classes/SurveyInfo;)V
    .locals 0

    .line 324
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularPollfish;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/pollfish/classes/SurveyInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularPollfish;->SurveyCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public final onPollfishSurveyNotAvailable()V
    .locals 0

    .line 352
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularPollfish;->SurveyNotAvailable()V

    return-void
.end method

.method public final onPollfishSurveyReceived(Lcom/pollfish/classes/SurveyInfo;)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularPollfish;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Pollfish"

    const-string v2, "Rewarded Survey"

    invoke-static {v1, v2, v0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 335
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularPollfish;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/pollfish/classes/SurveyInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularPollfish;->SurveyReceived(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 276
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularPollfish;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho()V

    return-void
.end method

.method public final onUserNotEligible()V
    .locals 0

    .line 357
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularPollfish;->PollfishUserNotEligible()V

    return-void
.end method

.method public final onUserRejectedSurvey()V
    .locals 0

    .line 362
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularPollfish;->PollfishUserRejected()V

    return-void
.end method
