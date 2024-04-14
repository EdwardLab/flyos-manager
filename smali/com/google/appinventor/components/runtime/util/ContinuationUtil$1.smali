.class final Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ContinuationUtil;->wrap(Lgnu/mapping/Procedure;Ljava/lang/Class;)Lcom/google/appinventor/components/runtime/util/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/Continuation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/mapping/Procedure;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lgnu/mapping/Procedure;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/mapping/Procedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Class;

    const-class v1, Ljava/lang/Void;

    if-ne v0, v1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/mapping/Procedure;

    invoke-virtual {p1}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 36
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
