.class Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;
.super Ljava/lang/Object;
.source "TwelveKeyDialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;->this$1:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1619
    new-instance v0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;-><init>(Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1652
    return-void
.end method
