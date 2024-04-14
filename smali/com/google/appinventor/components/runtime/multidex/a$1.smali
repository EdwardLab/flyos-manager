.class final Lcom/google/appinventor/components/runtime/multidex/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/multidex/a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic xjswzNK7XIbcXWMkpjjnX2zHmaN4l94b4PGb57QPnGA2cyF8Wf0hPGvkbrRqJbgG:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/multidex/a$1;->xjswzNK7XIbcXWMkpjjnX2zHmaN4l94b4PGb57QPnGA2cyF8Wf0hPGvkbrRqJbgG:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    .line 284
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/multidex/a$1;->xjswzNK7XIbcXWMkpjjnX2zHmaN4l94b4PGb57QPnGA2cyF8Wf0hPGvkbrRqJbgG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
