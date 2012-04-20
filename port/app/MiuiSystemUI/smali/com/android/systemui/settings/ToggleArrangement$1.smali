.class Lcom/android/systemui/settings/ToggleArrangement$1;
.super Ljava/lang/Object;
.source "ToggleArrangement.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleManager$OnToggleChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleArrangement;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleArrangement;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleArrangement;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleArrangement$1;->this$0:Lcom/android/systemui/settings/ToggleArrangement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleArrangement$1;->this$0:Lcom/android/systemui/settings/ToggleArrangement;

    #getter for: Lcom/android/systemui/settings/ToggleArrangement;->mAdapter:Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleArrangement;->access$100(Lcom/android/systemui/settings/ToggleArrangement;)Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->notifyDataSetChanged()V

    .line 56
    return-void
.end method
