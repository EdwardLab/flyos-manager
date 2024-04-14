.class final Lcom/google/appinventor/components/runtime/Notifier$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Notifier;->ShowRadioListDialog(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:Ljava/lang/String;

.field private synthetic DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:Z

.field private synthetic HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Ljava/lang/String;

.field private synthetic KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Lcom/google/appinventor/components/runtime/util/YailList;

.field private synthetic WT81i4At6dHne14KPL5TcdNiShzKisif1ehRA81016Xex9QKtWws9m2RXtqd3wpA:I

.field private synthetic aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

.field private synthetic ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Ljava/lang/String;

.field private synthetic jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I

.field private synthetic pA4gj2pijkqCsrKJCWMJXnTZqsBbwNoQGf3YiS6sfVTNefcGmCrEoGjUFuLXwlZr:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    iput p2, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Lcom/google/appinventor/components/runtime/util/YailList;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:Z

    iput-object p7, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Ljava/lang/String;

    iput p8, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->WT81i4At6dHne14KPL5TcdNiShzKisif1ehRA81016Xex9QKtWws9m2RXtqd3wpA:I

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->pA4gj2pijkqCsrKJCWMJXnTZqsBbwNoQGf3YiS6sfVTNefcGmCrEoGjUFuLXwlZr:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 613
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->DHXdVBD10imZD254vgJdvVnoNnGi6ltYnt493xQ866MP9unX6nAi8XBtATXxBfV8:Z

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Ljava/lang/String;

    iget v7, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->WT81i4At6dHne14KPL5TcdNiShzKisif1ehRA81016Xex9QKtWws9m2RXtqd3wpA:I

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->pA4gj2pijkqCsrKJCWMJXnTZqsBbwNoQGf3YiS6sfVTNefcGmCrEoGjUFuLXwlZr:Z

    invoke-static/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/Notifier;->access$400(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 616
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Notifier$6;->pA4gj2pijkqCsrKJCWMJXnTZqsBbwNoQGf3YiS6sfVTNefcGmCrEoGjUFuLXwlZr:Z

    invoke-static {v1, v0, v2}, Lcom/google/appinventor/components/runtime/Notifier;->access$500(Lcom/google/appinventor/components/runtime/Notifier;Landroid/app/Dialog;Z)V

    return-void
.end method
