.class public Lgnu/lists/ExtPosition;
.super Lgnu/lists/SeqPosition;
.source "ExtPosition.java"


# instance fields
.field position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lgnu/lists/SeqPosition;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lgnu/lists/ExtPosition;->position:I

    return-void
.end method


# virtual methods
.method public getPos()I
    .locals 1

    .line 20
    iget v0, p0, Lgnu/lists/ExtPosition;->position:I

    if-gez v0, :cond_0

    .line 21
    sget-object v0, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    invoke-virtual {v0, p0}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result v0

    iput v0, p0, Lgnu/lists/ExtPosition;->position:I

    .line 22
    :cond_0
    iget v0, p0, Lgnu/lists/ExtPosition;->position:I

    return v0
.end method

.method public final isAfter()Z
    .locals 2

    .line 32
    iget v0, p0, Lgnu/lists/ExtPosition;->ipos:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public release()V
    .locals 2

    .line 37
    iget v0, p0, Lgnu/lists/ExtPosition;->position:I

    if-ltz v0, :cond_0

    .line 38
    sget-object v0, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    iget v1, p0, Lgnu/lists/ExtPosition;->position:I

    invoke-virtual {v0, v1}, Lgnu/lists/PositionManager;->release(I)V

    :cond_0
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lgnu/lists/ExtPosition;->sequence:Lgnu/lists/AbstractSequence;

    return-void
.end method

.method public setPos(Lgnu/lists/AbstractSequence;I)V
    .locals 0

    const-string p2, "setPos"

    .line 27
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
