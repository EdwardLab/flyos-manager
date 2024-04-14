.class Lkawa/GuiInPort;
.super Lgnu/mapping/TtyInPort;
.source "GuiInPort.java"


# instance fields
.field document:Lkawa/ReplDocument;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Lgnu/text/Path;Lgnu/mapping/OutPort;Lkawa/ReplDocument;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lgnu/mapping/TtyInPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;Lgnu/mapping/OutPort;)V

    .line 17
    iput-object p4, p0, Lkawa/GuiInPort;->document:Lkawa/ReplDocument;

    return-void
.end method


# virtual methods
.method public emitPrompt(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lkawa/GuiInPort;->document:Lkawa/ReplDocument;

    sget-object v1, Lkawa/ReplDocument;->promptStyle:Ljavax/swing/text/Style;

    invoke-virtual {v0, p1, v1}, Lkawa/ReplDocument;->write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    return-void
.end method
