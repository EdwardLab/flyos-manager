.class Lcom/onesignal/OSInAppMessageControllerFactory;
.super Ljava/lang/Object;
.source "OSInAppMessageControllerFactory.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;


# instance fields
.field private controller:Lcom/onesignal/OSInAppMessageController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onesignal/OSInAppMessageControllerFactory;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getController(Lcom/onesignal/OneSignalDbHelper;)Lcom/onesignal/OSInAppMessageController;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/onesignal/OSInAppMessageControllerFactory;->controller:Lcom/onesignal/OSInAppMessageController;

    if-nez v0, :cond_2

    .line 40
    sget-object v0, Lcom/onesignal/OSInAppMessageControllerFactory;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageControllerFactory;->controller:Lcom/onesignal/OSInAppMessageController;

    if-nez v1, :cond_1

    .line 43
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    .line 44
    new-instance p1, Lcom/onesignal/OSInAppMessageDummyController;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/onesignal/OSInAppMessageDummyController;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    iput-object p1, p0, Lcom/onesignal/OSInAppMessageControllerFactory;->controller:Lcom/onesignal/OSInAppMessageController;

    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Lcom/onesignal/OSInAppMessageController;

    invoke-direct {v1, p1}, Lcom/onesignal/OSInAppMessageController;-><init>(Lcom/onesignal/OneSignalDbHelper;)V

    iput-object v1, p0, Lcom/onesignal/OSInAppMessageControllerFactory;->controller:Lcom/onesignal/OSInAppMessageController;

    .line 48
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 50
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageControllerFactory;->controller:Lcom/onesignal/OSInAppMessageController;

    return-object p1
.end method
