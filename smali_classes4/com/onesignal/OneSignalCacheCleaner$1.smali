.class final Lcom/onesignal/OneSignalCacheCleaner$1;
.super Ljava/lang/Object;
.source "OneSignalCacheCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalCacheCleaner;->cleanNotificationCache(Lcom/onesignal/OneSignalDbHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$writableDb:Lcom/onesignal/OneSignalDbHelper;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalDbHelper;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/onesignal/OneSignalCacheCleaner$1;->val$writableDb:Lcom/onesignal/OneSignalDbHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 40
    iget-object v0, p0, Lcom/onesignal/OneSignalCacheCleaner$1;->val$writableDb:Lcom/onesignal/OneSignalDbHelper;

    invoke-static {v0}, Lcom/onesignal/OneSignalCacheCleaner;->access$000(Lcom/onesignal/OneSignalDbHelper;)V

    .line 41
    iget-object v0, p0, Lcom/onesignal/OneSignalCacheCleaner$1;->val$writableDb:Lcom/onesignal/OneSignalDbHelper;

    invoke-static {v0}, Lcom/onesignal/OneSignalCacheCleaner;->access$100(Lcom/onesignal/OneSignalDbHelper;)V

    return-void
.end method
