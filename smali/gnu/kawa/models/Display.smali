.class public abstract Lgnu/kawa/models/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field public static myDisplay:Lgnu/mapping/ThreadLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "my-display"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/models/Display;->myDisplay:Lgnu/mapping/ThreadLocation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asDimension(Ljava/awt/geom/Dimension2D;)Ljava/awt/Dimension;
    .locals 7

    .line 84
    instance-of v0, p0, Ljava/awt/Dimension;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Ljava/awt/Dimension;

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v5

    add-double/2addr v5, v3

    double-to-int p0, v5

    invoke-direct {v0, v1, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0

    .line 85
    :cond_1
    :goto_0
    check-cast p0, Ljava/awt/Dimension;

    return-object p0
.end method

.method public static getInstance()Lgnu/kawa/models/Display;
    .locals 8

    .line 18
    sget-object v0, Lgnu/kawa/models/Display;->myDisplay:Lgnu/mapping/ThreadLocation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    instance-of v2, v0, Lgnu/kawa/models/Display;

    if-eqz v2, :cond_0

    .line 20
    check-cast v0, Lgnu/kawa/models/Display;

    return-object v0

    :cond_0
    const-string v2, "swing"

    if-nez v0, :cond_1

    move-object v3, v2

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    :goto_1
    const/16 v6, 0x2c

    .line 25
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_2

    add-int/lit8 v7, v6, 0x1

    .line 29
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 30
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v7, v1

    .line 33
    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v3, "gnu.kawa.swingviews.SwingDisplay"

    goto :goto_3

    :cond_3
    const-string v6, "swt"

    .line 35
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v3, "gnu.kawa.swtviews.SwtDisplay"

    goto :goto_3

    :cond_4
    const-string v6, "echo2"

    .line 37
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v3, "gnu.kawa.echo2.Echo2Display"

    .line 42
    :cond_5
    :goto_3
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v6, "getInstance"

    .line 43
    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    .line 45
    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/kawa/models/Display;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception v0

    .line 55
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_0
    nop

    if-eqz v7, :cond_6

    move-object v3, v7

    goto :goto_1

    .line 50
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no display toolkit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract addBox(Lgnu/kawa/models/Box;Ljava/lang/Object;)V
.end method

.method public abstract addButton(Lgnu/kawa/models/Button;Ljava/lang/Object;)V
.end method

.method public abstract addImage(Lgnu/kawa/models/DrawImage;Ljava/lang/Object;)V
.end method

.method public abstract addLabel(Lgnu/kawa/models/Label;Ljava/lang/Object;)V
.end method

.method public addSpacer(Lgnu/kawa/models/Spacer;Ljava/lang/Object;)V
    .locals 0

    .line 75
    new-instance p1, Ljava/lang/Error;

    const-string p2, "makeView called on Spacer"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addText(Lgnu/kawa/models/Text;Ljava/lang/Object;)V
    .locals 0

    .line 70
    new-instance p1, Ljava/lang/Error;

    const-string p2, "makeView called on Text"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract addView(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;
    .locals 1

    .line 93
    instance-of v0, p1, Lgnu/lists/FString;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    check-cast p1, Lgnu/kawa/models/Model;

    return-object p1

    .line 94
    :cond_1
    :goto_0
    new-instance v0, Lgnu/kawa/models/Label;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lgnu/kawa/models/Label;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract makeWindow()Lgnu/kawa/models/Window;
.end method
