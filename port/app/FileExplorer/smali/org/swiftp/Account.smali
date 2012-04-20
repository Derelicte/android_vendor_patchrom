.class public Lorg/swiftp/Account;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field protected username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/swiftp/Account;->username:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 30
    iput-object p1, p0, Lorg/swiftp/Account;->username:Ljava/lang/String;

    .line 31
    return-void
.end method
