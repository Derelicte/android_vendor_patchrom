.class Lcom/android/systemui/settings/ToggleManager$7;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleManager;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleManager$7;->this$0:Lcom/android/systemui/settings/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager$7;->this$0:Lcom/android/systemui/settings/ToggleManager;

    #calls: Lcom/android/systemui/settings/ToggleManager;->updateAdvancedSyncToggle()V
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleManager;->access$700(Lcom/android/systemui/settings/ToggleManager;)V

    .line 533
    return-void
.end method
