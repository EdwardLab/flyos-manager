.class final Lcom/onesignal/OneSignalCacheCleaner$2;
.super Ljava/lang/Object;
.source "OneSignalCacheCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalCacheCleaner;->cleanCachedInAppMessages(Lcom/onesignal/OneSignalDbHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dbHelper:Lcom/onesignal/OneSignalDbHelper;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/onesignal/OneSignalCacheCleaner$2;->val$dbHelper:Lcom/onesignal/OneSignalDbHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 61
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/OneSignalCacheCleaner$2;->val$dbHelper:Lcom/onesignal/OneSignalDbHelper;

    .line 62
    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessageController;->getInAppMessageRepository(Lcom/onesignal/OneSignalDbHelper;)Lcom/onesignal/OSInAppMessageRepository;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageRepository;->cleanCachedInAppMessages()V

    return-void
.end method
