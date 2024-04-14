.class final Lcom/google/appinventor/components/runtime/Notifier$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Notifier;->ShowLinearProgress(Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:Ljava/lang/String;

.field private synthetic Al9x361S9LLe4YuJ2FYrCTKylxVrvlRhCPyJ97vxqAo0DGA2cpEUDnPNY8RXP1UW:I

.field private synthetic DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:Z

.field private synthetic J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

.field private synthetic LqPkE8nw2txhYsROtdyVVn8eaaz2Snf5qPRDJl9Xd4fWH3FTDxRDNp0V8h7hgt8B:Z

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

.field private synthetic ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier$3;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Notifier$3;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/Notifier$3;->DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:Z

    iput-boolean p5, p0, Lcom/google/appinventor/components/runtime/Notifier$3;->LqPkE8nw2txhYsROtdyVVn8eaaz2Snf5qPRDJl9Xd4fWH3FTDxRDNp0V8h7hgt8B:Z

    iput p6, p0, Lcom/google/appinventor/components/runtime/Notifier$3;->Al9x361S9LLe4YuJ2FYrCTKylxVrvlRhCPyJ97vxqAo0DGA2cpEUDnPNY8RXP1UW:I

    iput-object p7, p0, Lcom/google/appinventor/components/runtime/Notifier$3;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 499
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier$3;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier$3;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Notifier$3;->DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:Z

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/Notifier$3;->LqPkE8nw2txhYsROtdyVVn8eaaz2Snf5qPRDJl9Xd4fWH3FTDxRDNp0V8h7hgt8B:Z

    iget v5, p0, Lcom/google/appinventor/components/runtime/Notifier$3;->Al9x361S9LLe4YuJ2FYrCTKylxVrvlRhCPyJ97vxqAo0DGA2cpEUDnPNY8RXP1UW:I

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Notifier$3;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/Notifier;->access$200(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V

    return-void
.end method
