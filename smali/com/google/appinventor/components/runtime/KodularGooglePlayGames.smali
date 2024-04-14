.class public Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Google Play Games component to connect to the Google Play Games services"
    iconName = "images/gameClient.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "core-runtime.jar",
        "core-runtime.aar",
        "play-services-games.jar",
        "play-services-games.aar",
        "play-services-base.jar",
        "play-services-base.aar",
        "play-services-basement.jar",
        "play-services-basement.aar",
        "play-services-tasks.jar",
        "play-services-tasks.aar",
        "play-services-auth-base.jar",
        "play-services-auth-base.aar",
        "play-services-auth.jar",
        "play-services-auth.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KodularGooglePlayGames"


# instance fields
.field private achievementCode:I

.field private achievementsClient:Lcom/google/android/gms/games/AchievementsClient;

.field private componentContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private gamesClient:Lcom/google/android/gms/games/GamesClient;

.field private googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private isCompanion:Z

.field private leaderboardCode:I

.field private leaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

.field private playersClient:Lcom/google/android/gms/games/PlayersClient;

.field private requestCode:I

.field private signInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 80
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->requestCode:I

    .line 73
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementCode:I

    .line 74
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardCode:I

    .line 76
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanion:Z

    .line 82
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    .line 84
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->componentContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 86
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 89
    sget-object p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->signInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 92
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanion:Z

    :cond_0
    const-string p1, "KodularGooglePlayGames"

    const-string v0, "Google Play Games component initialized"

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementCode:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardCode:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->onConnected(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->startSignInIntent()V

    return-void
.end method

.method private isCompanionMode()Z
    .locals 4

    .line 248
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanion:Z

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Notifier;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->componentContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v1, "Please export your project as an apk and test google play games on a real device."

    const-string v2, "Companion error"

    const-string v3, "OK"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Notifier;->ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 252
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KodularGooglePlayGames"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanion:Z

    return v0
.end method

.method private isSignedIn()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onConnected(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    const-string v0, "KodularGooglePlayGames"

    const-string v1, "Connected to Google APIs"

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    .line 316
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    .line 317
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getGamesClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/GamesClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->gamesClient:Lcom/google/android/gms/games/GamesClient;

    .line 318
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getPlayersClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->playersClient:Lcom/google/android/gms/games/PlayersClient;

    .line 320
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->gamesClient:Lcom/google/android/gms/games/GamesClient;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/GamesClient;->setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/tasks/Task;

    .line 321
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->gamesClient:Lcom/google/android/gms/games/GamesClient;

    const/16 v0, 0x31

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/GamesClient;->setGravityForPopups(I)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private onDisconnected()V
    .locals 2

    const-string v0, "KodularGooglePlayGames"

    const-string v1, "onDisconnected()"

    .line 325
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    .line 328
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    .line 329
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->gamesClient:Lcom/google/android/gms/games/GamesClient;

    return-void
.end method

.method private signInSilently(Z)V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->signInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getScopeArray()[Lcom/google/android/gms/common/api/Scope;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->hasPermissions(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;[Lcom/google/android/gms/common/api/Scope;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->onConnected(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->silentSignIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$4;-><init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private signOut()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$5;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$5;-><init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 309
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->onDisconnected()V

    return-void
.end method

.method private startSignInIntent()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->requestCode:I

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity Started: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->requestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KodularGooglePlayGames"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->requestCode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public GetPlayer()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current player"
    .end annotation

    .line 193
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->playersClient:Lcom/google/android/gms/games/PlayersClient;

    if-eqz v0, :cond_1

    .line 196
    invoke-interface {v0}, Lcom/google/android/gms/games/PlayersClient;->getCurrentPlayer()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$3;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$3;-><init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    return-void
.end method

.method public GooglePlayGamesAppId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public GotPlayer(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Got player info"
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 238
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "GotPlayer"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IncrementAchievement(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Increment an achievement."
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/AchievementsClient;->increment(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public IsSignedIn()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Is user signed in?"
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method public ShowAchievements()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows Achievement."
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    if-eqz v0, :cond_2

    .line 126
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementCode:I

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementCode:I

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->achievementsClient:Lcom/google/android/gms/games/AchievementsClient;

    invoke-interface {v0}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$1;-><init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :cond_2
    return-void
.end method

.method public ShowLeaderboard(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows Leaderboard."
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    if-eqz v0, :cond_2

    .line 155
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardCode:I

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardCode:I

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/LeaderboardsClient;->getLeaderboardIntent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames$2;-><init>(Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;)V

    .line 160
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :cond_2
    return-void
.end method

.method public SignIn(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign in the user. useLastAccount, true: use the last signed in account if possible, false: open a screen to choose for an account"
    .end annotation

    .line 171
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 174
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->signInSilently(Z)V

    return-void

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->startSignInIntent()V

    return-void
.end method

.method public SignOut()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sign out the user."
    .end annotation

    .line 181
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->signOut()V

    return-void
.end method

.method public SignedIn(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User signed in."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 228
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SignedIn"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SignedOut()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User signed out."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SignedOut"

    .line 233
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SubmitScore(Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Submits user score to leaderboard."
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->leaderboardsClient:Lcom/google/android/gms/games/LeaderboardsClient;

    if-eqz v0, :cond_1

    int-to-long v1, p2

    .line 146
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/games/LeaderboardsClient;->submitScore(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public UnlockAchievement(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Unlock an achievement."
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->isCompanionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->signInSilently(Z)V

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 0

    .line 339
    iget p2, p0, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->requestCode:I

    if-ne p1, p2, :cond_1

    .line 340
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    .line 342
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 344
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    .line 346
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->onConnected(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void

    .line 348
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "signInResult:failed code="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KodularGooglePlayGames"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularGooglePlayGames;->onDisconnected()V

    :cond_1
    return-void
.end method
