.class Lcom/onesignal/OSOutcomeEventsController$3$1;
.super Ljava/lang/Object;
.source "OSOutcomeEventsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSOutcomeEventsController$3;->onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/onesignal/OSOutcomeEventsController$3;


# direct methods
.method constructor <init>(Lcom/onesignal/OSOutcomeEventsController$3;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/onesignal/OSOutcomeEventsController$3$1;->this$1:Lcom/onesignal/OSOutcomeEventsController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 242
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController$3$1;->this$1:Lcom/onesignal/OSOutcomeEventsController$3;

    iget-object v0, v0, Lcom/onesignal/OSOutcomeEventsController$3;->val$eventParams:Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    iget-object v1, p0, Lcom/onesignal/OSOutcomeEventsController$3$1;->this$1:Lcom/onesignal/OSOutcomeEventsController$3;

    iget-wide v1, v1, Lcom/onesignal/OSOutcomeEventsController$3;->val$timestampSeconds:J

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/outcomes/model/OSOutcomeEventParams;->setTimestamp(J)V

    .line 243
    iget-object v0, p0, Lcom/onesignal/OSOutcomeEventsController$3$1;->this$1:Lcom/onesignal/OSOutcomeEventsController$3;

    iget-object v0, v0, Lcom/onesignal/OSOutcomeEventsController$3;->this$0:Lcom/onesignal/OSOutcomeEventsController;

    invoke-static {v0}, Lcom/onesignal/OSOutcomeEventsController;->access$000(Lcom/onesignal/OSOutcomeEventsController;)Lcom/onesignal/outcomes/OSOutcomeEventsFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->getRepository()Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/OSOutcomeEventsController$3$1;->this$1:Lcom/onesignal/OSOutcomeEventsController$3;

    iget-object v1, v1, Lcom/onesignal/OSOutcomeEventsController$3;->val$eventParams:Lcom/onesignal/outcomes/model/OSOutcomeEventParams;

    invoke-interface {v0, v1}, Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;->saveOutcomeEvent(Lcom/onesignal/outcomes/model/OSOutcomeEventParams;)V

    return-void
.end method
