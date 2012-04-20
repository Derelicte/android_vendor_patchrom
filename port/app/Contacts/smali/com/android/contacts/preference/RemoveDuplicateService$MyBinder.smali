.class public Lcom/android/contacts/preference/RemoveDuplicateService$MyBinder;
.super Landroid/os/Binder;
.source "RemoveDuplicateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/RemoveDuplicateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/preference/RemoveDuplicateService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/preference/RemoveDuplicateService;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MyBinder;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/contacts/preference/RemoveDuplicateService;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateService$MyBinder;->this$0:Lcom/android/contacts/preference/RemoveDuplicateService;

    return-object v0
.end method
