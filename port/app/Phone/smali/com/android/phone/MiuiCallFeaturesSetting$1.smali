.class Lcom/android/phone/MiuiCallFeaturesSetting$1;
.super Ljava/lang/Object;
.source "MiuiCallFeaturesSetting.java"

# interfaces
.implements Lcom/android/phone/MiuiNumberPickerDialog$OnNumberSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiCallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiCallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiCallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/phone/MiuiCallFeaturesSetting$1;->this$0:Lcom/android/phone/MiuiCallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberSet(I)V
    .locals 6
    .parameter "number"

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting$1;->this$0:Lcom/android/phone/MiuiCallFeaturesSetting;

    #calls: Lcom/android/phone/MiuiCallFeaturesSetting;->setCallLogLimitNumber(I)V
    invoke-static {v1, p1}, Lcom/android/phone/MiuiCallFeaturesSetting;->access$000(Lcom/android/phone/MiuiCallFeaturesSetting;I)V

    .line 344
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting$1;->this$0:Lcom/android/phone/MiuiCallFeaturesSetting;

    const v2, 0x7f0c029c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/MiuiCallFeaturesSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, callLogLimitNumberStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/MiuiCallFeaturesSetting$1;->this$0:Lcom/android/phone/MiuiCallFeaturesSetting;

    #getter for: Lcom/android/phone/MiuiCallFeaturesSetting;->mCallLogLimit:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/phone/MiuiCallFeaturesSetting;->access$100(Lcom/android/phone/MiuiCallFeaturesSetting;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    return-void
.end method
