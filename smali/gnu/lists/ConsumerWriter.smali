.class public Lgnu/lists/ConsumerWriter;
.super Ljava/io/Writer;
.source "ConsumerWriter.java"


# instance fields
.field protected out:Lgnu/lists/Consumer;


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 15
    iput-object p1, p0, Lgnu/lists/ConsumerWriter;->out:Lgnu/lists/Consumer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lgnu/lists/ConsumerWriter;->flush()V

    return-void
.end method

.method public finalize()V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lgnu/lists/ConsumerWriter;->close()V

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write([CII)V
    .locals 1

    .line 20
    iget-object v0, p0, Lgnu/lists/ConsumerWriter;->out:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    return-void
.end method
