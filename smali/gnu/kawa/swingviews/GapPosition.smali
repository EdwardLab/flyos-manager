.class Lgnu/kawa/swingviews/GapPosition;
.super Lgnu/lists/SeqPosition;
.source "SwingContent.java"

# interfaces
.implements Ljavax/swing/text/Position;


# direct methods
.method public constructor <init>(Lgnu/lists/CharBuffer;I)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;IZ)V

    return-void
.end method


# virtual methods
.method public getOffset()I
    .locals 1

    .line 119
    invoke-virtual {p0}, Lgnu/kawa/swingviews/GapPosition;->nextIndex()I

    move-result v0

    return v0
.end method
