.class final Lcom/google/appinventor/components/runtime/MakeroidAirtable$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidAirtable;->SetCell(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:Ljava/lang/String;

.field private synthetic LqPkE8nw2txhYsROtdyVVn8eaaz2Snf5qPRDJl9Xd4fWH3FTDxRDNp0V8h7hgt8B:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidAirtable;

.field private synthetic op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidAirtable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidAirtable;

    iput p2, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$4;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$4;->DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$4;->LqPkE8nw2txhYsROtdyVVn8eaaz2Snf5qPRDJl9Xd4fWH3FTDxRDNp0V8h7hgt8B:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidAirtable;

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$4;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$4;->DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidAirtable$4;->LqPkE8nw2txhYsROtdyVVn8eaaz2Snf5qPRDJl9Xd4fWH3FTDxRDNp0V8h7hgt8B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidAirtable;->setCell(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SetCell"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
