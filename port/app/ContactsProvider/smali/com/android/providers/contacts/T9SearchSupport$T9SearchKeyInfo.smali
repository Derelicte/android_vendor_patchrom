.class Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/T9SearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T9SearchKeyInfo"
.end annotation


# instance fields
.field public mKeyType:I

.field public mMatchString:Ljava/lang/String;

.field public mT9Key:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;-><init>()V

    return-void
.end method
