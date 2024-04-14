.class public Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Firebase Authentication"
    iconName = "images/firebaseDB.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "firebase-annotations.jar",
        "firebase-auth.jar",
        "firebase-auth.aar",
        "firebase-auth-interop.jar",
        "firebase-auth-interop.aar",
        "firebase-common.jar",
        "firebase-common.aar",
        "firebase-components.jar",
        "firebase-components.aar",
        "play-services-auth.jar",
        "play-services-auth.aar",
        "play-services-auth-api-phone.jar",
        "play-services-auth-api-phone.aar",
        "play-services-auth-base.jar",
        "play-services-auth-base.aar",
        "play-services-base.jar",
        "play-services-base.aar",
        "play-services-basement.jar",
        "play-services-basement.aar",
        "play-services-tasks.jar",
        "play-services-tasks.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.WAKE_LOCK",
        "com.google.android.c2dm.permission.RECEIVE"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KodularFirebaseAuth"

.field private static final PROVIDER_EMAIL_PASSWORD:Ljava/lang/String; = "EmailPassword"

.field private static final PROVIDER_GOOGLE:Ljava/lang/String; = "Google"

.field private static final PROVIDER_PHONE_NUMBER:Ljava/lang/String; = "PhoneNumber"

.field private static final PROVIDER_PLAY_GAMES:Ljava/lang/String; = "Play Games"

.field private static final STORAGE_TAG:Ljava/lang/String; = "KodularFirebaseAuth"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private googleRequestCode:I

.field private isCompanion:Z

.field private mAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private mPhoneAuthCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

.field private mPlayGamesSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private mVerificationId:Ljava/lang/String;

.field private phoneNewUser:Z

.field private playGamesRequestCode:I

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 99
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->isCompanion:Z

    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 87
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mPlayGamesSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 90
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mVerificationId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->phoneNewUser:Z

    .line 93
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->googleRequestCode:I

    .line 94
    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->playGamesRequestCode:I

    .line 100
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    .line 101
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->context:Landroid/content/Context;

    .line 103
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz p1, :cond_0

    .line 104
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->isCompanion:Z

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->context:Landroid/content/Context;

    const-string v1, "KodularFirebaseAuth"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->preferences:Landroid/content/SharedPreferences;

    .line 109
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 111
    new-instance p1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$1;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mPhoneAuthCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    return-void
.end method

.method private CompanionToast()V
    .locals 3

    .line 513
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->isCompanion:Z

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "Firebase Auth doesn\'t work in the Companion"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->firebaseAuthWithPhoneNumber(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)Landroid/content/SharedPreferences;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->preferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mVerificationId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method private firebaseAuthWithCredential(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$9;

    invoke-direct {v1, p0, p2}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$9;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private firebaseAuthWithGoogle(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "firebaseAuthWithGoogle:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KodularFirebaseAuth"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/firebase/auth/GoogleAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    const-string v0, "Google"

    .line 416
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->firebaseAuthWithCredential(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V

    return-void
.end method

.method private firebaseAuthWithPhoneNumber(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 2

    .line 453
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->phoneNewUser:Z

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$10;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$10;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    .line 455
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseUser;->updatePhoneNumber(Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$2;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    return-void
.end method

.method private firebaseAuthWithPlayGames(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "firebaseAuthWithPlayGames:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KodularFirebaseAuth"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Play Games"

    if-eqz p1, :cond_0

    .line 425
    invoke-static {p1}, Lcom/google/firebase/auth/PlayGamesAuthProvider;->getCredential(Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    .line 427
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->firebaseAuthWithCredential(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V

    return-void

    .line 429
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->LoginFailed(Ljava/lang/String;)V

    return-void
.end method

.method private getGoogleSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->context:Landroid/content/Context;

    const-string v2, "default_web_client_id"

    .line 494
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    return-object v0
.end method

.method private getPlayGamesSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mPlayGamesSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mPlayGamesSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mPlayGamesSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    return-object v0
.end method


# virtual methods
.method public CurrentUserFailed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the current Firebase User failed to load"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CurrentUserFailed"

    .line 408
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CurrentUserSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the current Firebase User was successful loaded"
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    aput-object p2, v0, p1

    const/4 p1, 0x2

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, v1

    :goto_2
    aput-object p3, v0, p1

    const/4 p1, 0x3

    if-eqz p4, :cond_3

    goto :goto_3

    :cond_3
    move-object p4, v1

    :goto_3
    aput-object p4, v0, p1

    const/4 p1, 0x4

    if-eqz p5, :cond_4

    goto :goto_4

    :cond_4
    move-object p5, v1

    :goto_4
    aput-object p5, v0, p1

    const-string p1, "CurrentUserSuccess"

    .line 403
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public EmailPasswordLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to let the user sign in with Email and Password"
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->CompanionToast()V

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$3;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public EmailPasswordSignUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new user by Email and Password"
    .end annotation

    .line 168
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->CompanionToast()V

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->createUserWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$4;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$4;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public GetCurrentUser()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to get the user that is signed in"
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->CurrentUserSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->CurrentUserFailed()V

    return-void
.end method

.method public GetIdToken()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the id token from the current user."
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 328
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseUser;->getIdToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$7;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$7;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_0
    const-string v0, ""

    .line 340
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->GotIdToken(Ljava/lang/String;)V

    return-void
.end method

.method public GoogleSignIn()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to let the user sign in with Google"
    .end annotation

    .line 187
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->CompanionToast()V

    .line 189
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->googleRequestCode:I

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->googleRequestCode:I

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity Started: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->googleRequestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KodularFirebaseAuth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->getGoogleSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->googleRequestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public GotIdToken(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the \'Get Id Token\' got a result. If there was a error it returns a empty text."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotIdToken"

    .line 361
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IsSignedIn()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if the user is signed in"
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public LoginFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the Firebase Login failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "LoginFailed"

    .line 376
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the Firebase Login was successful"
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, ""

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 p2, 0x2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, p1

    :goto_1
    aput-object p3, v0, p2

    const/4 p2, 0x3

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move-object p4, p1

    :goto_2
    aput-object p4, v0, p2

    const/4 p2, 0x4

    if-eqz p5, :cond_3

    goto :goto_3

    :cond_3
    move-object p5, p1

    :goto_3
    aput-object p5, v0, p2

    const/4 p2, 0x5

    if-eqz p6, :cond_4

    goto :goto_4

    :cond_4
    move-object p6, p1

    :goto_4
    aput-object p6, v0, p2

    const-string p1, "LoginSuccess"

    .line 371
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Logout()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Log the current user out"
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    .line 262
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->getGoogleSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    .line 263
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->getPlayGamesSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public PhoneNumberSignIn(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to let the user sign in with a Phone Number"
    .end annotation

    .line 219
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->CompanionToast()V

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->phoneNewUser:Z

    .line 222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/PhoneAuthProvider;->getInstance(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/PhoneAuthProvider;

    move-result-object v1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mPhoneAuthCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    const-wide/16 v3, 0x3c

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/firebase/auth/PhoneAuthProvider;->verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)V

    return-void
.end method

.method public PlayGamesSignIn()V
    .locals 3

    .line 203
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->CompanionToast()V

    .line 205
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->playGamesRequestCode:I

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->playGamesRequestCode:I

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity Started: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->playGamesRequestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KodularFirebaseAuth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->getPlayGamesSignInClient()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->playGamesRequestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public ResetPasswordEmailDone(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the \'Send Reset Password Email\' got a result. Returns true if the reset email was send."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 366
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ResetPasswordEmailDone"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SendResetPasswordEmail(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the id token from the current user."
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->sendPasswordResetEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$8;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$8;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    .line 347
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public SignUpFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the Firebase Sign Up failed"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "SignUpFailed"

    .line 381
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SignUpSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the Firebase Sign Up failed"
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, ""

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 p2, 0x2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, p1

    :goto_1
    aput-object p3, v0, p2

    const/4 p2, 0x3

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move-object p4, p1

    :goto_2
    aput-object p4, v0, p2

    const/4 p2, 0x4

    if-eqz p5, :cond_3

    goto :goto_3

    :cond_3
    move-object p5, p1

    :goto_3
    aput-object p5, v0, p2

    const/4 p2, 0x5

    if-eqz p6, :cond_4

    goto :goto_4

    :cond_4
    move-object p6, p1

    :goto_4
    aput-object p6, v0, p2

    const-string p1, "SignUpSuccess"

    .line 386
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UpdateEmail(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to update the email of the current user (The user must have been recently signed in)"
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseUser;->updateEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$6;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$6;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_0
    const-string p1, "Email"

    .line 308
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->UserUpdateFailed(Ljava/lang/String;)V

    return-void
.end method

.method public UpdatePhoneNumber(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to update the phone number of the current user (The user must have been recently signed in)"
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->phoneNewUser:Z

    .line 318
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/PhoneAuthProvider;->getInstance(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/PhoneAuthProvider;

    move-result-object v1

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mPhoneAuthCallbacks:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/firebase/auth/PhoneAuthProvider;->verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)V

    return-void

    :cond_0
    const-string p1, "PhoneNumber"

    .line 320
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->UserUpdateFailed(Ljava/lang/String;)V

    return-void
.end method

.method public UpdateProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to update the profile of the current user (The user must have been recently signed in)"
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v1, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;

    invoke-direct {v1}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;-><init>()V

    .line 273
    invoke-virtual {v1, p1}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;

    move-result-object p1

    .line 274
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->setPhotoUri(Landroid/net/Uri;)Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;->build()Lcom/google/firebase/auth/UserProfileChangeRequest;

    move-result-object p1

    .line 277
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseUser;->updateProfile(Lcom/google/firebase/auth/UserProfileChangeRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$5;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$5;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_0
    const-string p1, "Profile"

    .line 288
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->UserUpdateFailed(Ljava/lang/String;)V

    return-void
.end method

.method public UserUpdateFailed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when updating of the user failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "UserUpdateFailed"

    .line 397
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UserUpdateSuccess(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when updating of the user was successful"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "UserUpdateSuccess"

    .line 392
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public VerifyEmail()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Verify the Email"
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->newBuilder()Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 252
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "16"

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->setAndroidPackageName(Ljava/lang/String;ZLjava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$Builder;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->build()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseUser;->sendEmailVerification(Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public VerifyPhoneCode(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Verify the SMS code"
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mVerificationId:Ljava/lang/String;

    const-string v1, "VerificationId"

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->preferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mVerificationId:Ljava/lang/String;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->mVerificationId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 235
    invoke-static {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object p1

    .line 237
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->firebaseAuthWithPhoneNumber(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 1

    .line 520
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Result Returned: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "KodularFirebaseAuth"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget p2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->googleRequestCode:I

    if-ne p1, p2, :cond_0

    const-string p1, "Google Sign in Result Returned"

    .line 524
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 530
    :try_start_0
    const-class p2, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 531
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->firebaseAuthWithGoogle(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 533
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Google sign in failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "Google"

    .line 534
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->LoginFailed(Ljava/lang/String;)V

    return-void

    .line 537
    :cond_0
    iget p2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->playGamesRequestCode:I

    if-ne p1, p2, :cond_1

    const-string p1, "Play Games Sign in Result Returned"

    .line 539
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 545
    :try_start_1
    const-class p2, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 546
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->firebaseAuthWithPlayGames(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_1
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 548
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Play Games sign in failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "Play Games"

    .line 549
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->LoginFailed(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
