.class public Lgnu/kawa/xml/OutputAsXML;
.super Lgnu/mapping/Procedure1;
.source "OutputAsXML.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 18
    new-instance v0, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {v0}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 19
    new-instance v1, Lgnu/xml/XMLPrinter;

    invoke-direct {v1, v0}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    .line 20
    invoke-virtual {v1, p1}, Lgnu/xml/XMLPrinter;->writeObject(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v1}, Lgnu/xml/XMLPrinter;->flush()V

    .line 22
    new-instance p1, Lgnu/lists/FString;

    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->toCharArray()[C

    move-result-object v0

    invoke-direct {p1, v0}, Lgnu/lists/FString;-><init>([C)V

    return-object p1
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x1001

    return v0
.end method
