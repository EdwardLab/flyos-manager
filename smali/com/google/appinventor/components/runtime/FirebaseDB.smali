.class public Lcom/google/appinventor/components/runtime/FirebaseDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that communicates with Firebase to store and retrieve information."
    designerHelpDescription = "Non-visible component that communicates with a Firebase to store and retrieve information."
    helpUrl = "https://docs.kodular.io/components/google/firebase-database/"
    iconName = "images/firebaseDB.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "firebase.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;,
        Lcom/google/appinventor/components/runtime/FirebaseDB$a;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Firebase"

.field private static isInitialized:Z = false

.field private static persist:Z = false


# instance fields
.field private final activity:Landroid/app/Activity;

.field private androidUIHandler:Landroid/os/Handler;

.field private authListener:Lcom/firebase/client/Firebase$AuthStateListener;

.field private childListener:Lcom/firebase/client/ChildEventListener;

.field private defaultURL:Ljava/lang/String;

.field private developerBucket:Ljava/lang/String;

.field private firebaseToken:Ljava/lang/String;

.field private firebaseURL:Ljava/lang/String;

.field private myFirebase:Lcom/firebase/client/Firebase;

.field private projectBucket:Ljava/lang/String;

.field private useDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 116
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->androidUIHandler:Landroid/os/Handler;

    .line 122
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->activity:Landroid/app/Activity;

    .line 123
    invoke-static {p1}, Lcom/firebase/client/Firebase;->setAndroidContext(Landroid/content/Context;)V

    const-string p1, ""

    .line 125
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->developerBucket:Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseToken:Ljava/lang/String;

    .line 129
    new-instance p1, Lcom/google/appinventor/components/runtime/FirebaseDB$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->childListener:Lcom/firebase/client/ChildEventListener;

    .line 185
    new-instance p1, Lcom/google/appinventor/components/runtime/FirebaseDB$2;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$2;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->authListener:Lcom/firebase/client/Firebase$AuthStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/FirebaseDB;)Lcom/firebase/client/Firebase;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/FirebaseDB;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseToken:Ljava/lang/String;

    return-object p0
.end method

.method private connectFirebase()V
    .locals 3

    .line 591
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    if-eqz v0, :cond_0

    .line 593
    :try_start_0
    new-instance v0, Lcom/firebase/client/Firebase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "developers/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->developerBucket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/Firebase;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->FirebaseError(Ljava/lang/String;)V

    return-void

    .line 600
    :cond_0
    :try_start_1
    new-instance v0, Lcom/firebase/client/Firebase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/Firebase;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 608
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    if-eqz v0, :cond_1

    .line 609
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->childListener:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addChildEventListener(Lcom/firebase/client/ChildEventListener;)Lcom/firebase/client/ChildEventListener;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 616
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    if-eqz v0, :cond_2

    .line 617
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->authListener:Lcom/firebase/client/Firebase$AuthStateListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)Lcom/firebase/client/Firebase$AuthStateListener;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    return-void

    :catch_1
    move-exception v0

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->FirebaseError(Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v0

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->FirebaseError(Ljava/lang/String;)V

    return-void

    :catch_3
    move-exception v0

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->FirebaseError(Ljava/lang/String;)V

    return-void
.end method

.method private firebaseTransaction(Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;Lcom/firebase/client/Firebase;Ljava/lang/Runnable;)V
    .locals 2

    .line 829
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->getResult()Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    move-result-object v0

    .line 830
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$8;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/google/appinventor/components/runtime/FirebaseDB$8;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1}, Lcom/firebase/client/Firebase;->runTransaction(Lcom/firebase/client/Transaction$Handler;)V

    return-void
.end method

.method private resetListener()V
    .locals 2

    .line 377
    sget-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->isInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    if-eqz v0, :cond_1

    .line 382
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->childListener:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->removeEventListener(Lcom/firebase/client/ChildEventListener;)V

    .line 383
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->authListener:Lcom/firebase/client/Firebase$AuthStateListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->removeAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    .line 387
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->connectFirebase()V

    return-void
.end method


# virtual methods
.method public AppendValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Append a value to the end of a list atomically. If two devices use this function simultaneously, both will be appended and no data lost."
    .end annotation

    .line 788
    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseDB$a;-><init>(B)V

    .line 789
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v1, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object p1

    .line 790
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$7;

    invoke-direct {v1, p0, v0, v0, p2}, Lcom/google/appinventor/components/runtime/FirebaseDB$7;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 825
    invoke-direct {p0, v1, p1, p2}, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseTransaction(Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;Lcom/firebase/client/Firebase;Ljava/lang/Runnable;)V

    return-void
.end method

.method public ClearTag(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove the tag from Firebase"
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/firebase/client/Firebase;->removeValue()V

    :cond_0
    return-void
.end method

.method public DataChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 554
    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 555
    check-cast p2, Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 560
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Firebase"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Value failed to convert from JSON. JSON Retrieval Error."

    :cond_0
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v0

    const-string p1, "DataChanged"

    .line 565
    invoke-static {p0, p1, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DefaultURL(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 667
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    .line 668
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    if-eqz v0, :cond_0

    .line 669
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    .line 670
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    :cond_0
    return-void
.end method

.method public DeveloperBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->developerBucket:Ljava/lang/String;

    return-object v0
.end method

.method public DeveloperBucket(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->developerBucket:Ljava/lang/String;

    .line 293
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    return-void
.end method

.method public FirebaseError(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "Firebase"

    .line 576
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "FirebaseError"

    .line 579
    invoke-static {p0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "Continue"

    invoke-static {v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 585
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public FirebaseToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the FirebaseToken from this FirebaseDB."
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public FirebaseToken(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the FirebaseToken for this FirebaseDB."
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseToken:Ljava/lang/String;

    .line 342
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    return-void
.end method

.method public FirebaseURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the URL for this FirebaseDB."
    .end annotation

    .line 232
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    if-eqz v0, :cond_0

    const-string v0, "DEFAULT"

    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public FirebaseURL(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "FirbaseURL"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the URL for this FirebaseDB."
    .end annotation

    const-string v0, "DEFAULT"

    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 254
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    .line 255
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    .line 256
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    return-void

    .line 258
    :cond_1
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 262
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    .line 263
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "Firebase"

    const-string v0, "FirebaseURL called before DefaultURL (should not happen!)"

    .line 264
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 267
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    .line 268
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    :cond_3
    return-void
.end method

.method public FirstRemoved(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered by the \"RemoveFirst\" function. The argument \"value\" is the object that was the first in the list, and which is now removed."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FirstRemoved"

    .line 781
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetTagList()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the list of tags for this application. When complete a \"TagList\" event will be triggered with the list of known tags."
    .end annotation

    .line 732
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v0

    .line 733
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$6;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$6;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addListenerForSingleValueEvent(Lcom/firebase/client/ValueEventListener;)V

    return-void
.end method

.method public GetValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$3;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addListenerForSingleValueEvent(Lcom/firebase/client/ValueEventListener;)V

    return-void

    :cond_0
    const-string p1, "Can not call \'Get Value\' if the firebase object is NULL."

    .line 511
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->FirebaseError(Ljava/lang/String;)V

    return-void
.end method

.method public GoOffline()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Take the database offline"
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    if-eqz v0, :cond_0

    .line 767
    invoke-static {}, Lcom/firebase/client/Firebase;->goOffline()V

    :cond_0
    return-void
.end method

.method public GoOnline()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Take the database online"
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    if-eqz v0, :cond_0

    .line 758
    invoke-static {}, Lcom/firebase/client/Firebase;->goOnline()V

    return-void

    .line 760
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->connectFirebase()V

    return-void
.end method

.method public GotValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    const-string v1, "Firebase"

    if-eqz p2, :cond_0

    .line 524
    :try_start_0
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 525
    check-cast p2, Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 530
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Value failed to convert from JSON. JSON Retrieval Error."

    :cond_0
    :goto_0
    :try_start_1
    const-string v2, "GotValue"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v0

    .line 536
    invoke-static {p0, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 538
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->FirebaseError(Ljava/lang/String;)V

    return-void
.end method

.method public Initialize()V
    .locals 2

    const-string v0, "Firebase"

    const-string v1, "Initalize called!"

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 220
    sput-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->isInitialized:Z

    .line 221
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    return-void
.end method

.method public Persist(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, variables will retain their values when off-line and the App exits. Values will be uploaded to Firebase the next time the App is run while connected to the network. This is useful for applications which will gather data while not connected to the network. Note: AppendValue and RemoveFirst will not work correctly when off-line, they require a network connection.<br/><br/> <i>Note</i>: If you set Persist on any Firebase component, on any screen, it makes all Firebase components on all screens persistent. This is a limitation of the low level Firebase library. Also be aware that if you want to set persist to true, you should do so before connecting the Companion for incremental development."
        userVisible = false
    .end annotation

    .line 360
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Persist Called: Value = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Firebase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->persist:Z

    if-eq v0, p1, :cond_1

    .line 362
    sget-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->isInitialized:Z

    if-nez v0, :cond_0

    .line 366
    invoke-static {}, Lcom/firebase/client/Firebase;->getDefaultConfig()Lcom/firebase/client/Config;

    move-result-object v0

    .line 367
    invoke-virtual {v0, p1}, Lcom/firebase/client/Config;->setPersistenceEnabled(Z)V

    .line 368
    invoke-static {v0}, Lcom/firebase/client/Firebase;->setDefaultConfig(Lcom/firebase/client/Config;)V

    .line 369
    sput-boolean p1, Lcom/google/appinventor/components/runtime/FirebaseDB;->persist:Z

    .line 370
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    goto :goto_0

    .line 363
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You cannot change the Persist value of Firebase after Application Initialization, this includes the Companion"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public ProjectBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the ProjectBucket for this FirebaseDB."
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    return-object v0
.end method

.method public ProjectBucket(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the ProjectBucket for this FirebaseDB."
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    .line 318
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    :cond_0
    return-void
.end method

.method public RemoveFirst(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the first element of a list and atomically remove it. If two devices use this function simultaneously, one will get the first element and the the other will get the second element, or an error if there is no available element. When the element is available, the \"FirstRemoved\" event will be triggered."
    .end annotation

    .line 679
    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseDB$a;-><init>(B)V

    .line 680
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v1, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object p1

    .line 681
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$4;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/appinventor/components/runtime/FirebaseDB$4;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Lcom/google/appinventor/components/runtime/FirebaseDB$a;)V

    .line 720
    new-instance v2, Lcom/google/appinventor/components/runtime/FirebaseDB$5;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseDB$5;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$a;)V

    invoke-direct {p0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseTransaction(Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;Lcom/firebase/client/Firebase;Ljava/lang/Runnable;)V

    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    if-eqz p2, :cond_0

    .line 440
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 445
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Firebase"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Value failed to convert from JSON. JSON Creation Error."

    .line 450
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/firebase/client/Firebase;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public TagList(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when we have received the list of known tags. Used with the \"GetTagList\" Function."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TagList"

    .line 774
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Unauthenticate()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If you are having difficulty with the Companion and you are switching between different Firebase accounts, you may need to use this function to clear internal Firebase caches. You can just use the \"Do It\" function on this block in the blocks editor. Note: You should not normally need to use this block as part of an application."
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    if-nez v0, :cond_0

    .line 651
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->connectFirebase()V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v0}, Lcom/firebase/client/Firebase;->unauth()V

    return-void
.end method
