.class Lcom/onesignal/OSInAppMessageController$6;
.super Ljava/lang/Object;
.source "OSInAppMessageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSInAppMessageController;->firePublicClickHandler(Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSInAppMessageController;

.field final synthetic val$action:Lcom/onesignal/OSInAppMessageAction;

.field final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageController;Ljava/lang/String;Lcom/onesignal/OSInAppMessageAction;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController$6;->this$0:Lcom/onesignal/OSInAppMessageController;

    iput-object p2, p0, Lcom/onesignal/OSInAppMessageController$6;->val$messageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/onesignal/OSInAppMessageController$6;->val$action:Lcom/onesignal/OSInAppMessageAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 398
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController$6;->val$messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSessionManager;->onDirectInfluenceFromIAMClick(Ljava/lang/String;)V

    .line 399
    sget-object v0, Lcom/onesignal/OneSignal;->mInitBuilder:Lcom/onesignal/OneSignal$Builder;

    iget-object v0, v0, Lcom/onesignal/OneSignal$Builder;->mInAppMessageClickHandler:Lcom/onesignal/OneSignal$InAppMessageClickHandler;

    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController$6;->val$action:Lcom/onesignal/OSInAppMessageAction;

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$InAppMessageClickHandler;->inAppMessageClicked(Lcom/onesignal/OSInAppMessageAction;)V

    return-void
.end method
