.class public Lgnu/mapping/ValueStack;
.super Lgnu/mapping/Values;
.source "ValueStack.java"

# interfaces
.implements Lgnu/lists/Sequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lgnu/mapping/Values;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lgnu/mapping/ValueStack;->oindex:I

    .line 12
    invoke-super {p0}, Lgnu/mapping/Values;->clear()V

    return-void
.end method
