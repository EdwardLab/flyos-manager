.class public final Lcom/google/appinventor/components/runtime/util/TimerInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private enabled:Z

.field private handler:Landroid/os/Handler;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AlarmHandler;

.field private interval:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZI)V
    .locals 1

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AlarmHandler;

    .line 60
    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    .line 61
    iput p3, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    if-eqz p2, :cond_0

    int-to-long p1, p3

    .line 63
    invoke-virtual {p4, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final Enabled(Z)V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final Enabled()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    return v0
.end method

.method public final Interval()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    return v0
.end method

.method public final Interval(I)V
    .locals 3

    .line 82
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    .line 83
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 3

    .line 119
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AlarmHandler;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/AlarmHandler;->alarm()V

    .line 124
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
