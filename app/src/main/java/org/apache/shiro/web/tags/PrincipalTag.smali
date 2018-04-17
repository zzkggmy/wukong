.class public Lorg/apache/shiro/web/tags/PrincipalTag;
.super Lorg/apache/shiro/web/tags/SecureTag;
.source "PrincipalTag.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private property:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/apache/shiro/web/tags/PrincipalTag;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/tags/PrincipalTag;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/shiro/web/tags/SecureTag;-><init>()V

    return-void
.end method

.method private getPrincipalFromClassName()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 159
    .local v2, "principal":Ljava/lang/Object;
    :try_start_0
    iget-object v3, p0, Lorg/apache/shiro/web/tags/PrincipalTag;->type:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 160
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/PrincipalTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/shiro/subject/Subject;->getPrincipals()Lorg/apache/shiro/subject/PrincipalCollection;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/shiro/subject/PrincipalCollection;->oneByType(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 166
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "principal":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 161
    .restart local v2    # "principal":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lorg/apache/shiro/web/tags/PrincipalTag;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    sget-object v3, Lorg/apache/shiro/web/tags/PrincipalTag;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find class for name ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/shiro/web/tags/PrincipalTag;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPrincipalProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "principal"    # Ljava/lang/Object;
    .param p2, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/JspTagException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v8, 0x0

    .line 174
    .local v8, "strValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v1

    .line 177
    .local v1, "bi":Ljava/beans/BeanInfo;
    const/4 v3, 0x0

    .line 178
    .local v3, "foundProperty":Z
    invoke-interface {v1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .local v0, "arr$":[Ljava/beans/PropertyDescriptor;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v7, v0, v4

    .line 179
    .local v7, "pd":Ljava/beans/PropertyDescriptor;
    invoke-virtual {v7}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 180
    invoke-virtual {v7}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v11, p1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 181
    .local v9, "value":Ljava/lang/Object;
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 182
    const/4 v3, 0x1

    .line 187
    .end local v7    # "pd":Ljava/beans/PropertyDescriptor;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_0
    if-nez v3, :cond_4

    .line 188
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Property ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] not found in principal of type ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "message":Ljava/lang/String;
    sget-object v10, Lorg/apache/shiro/web/tags/PrincipalTag;->log:Lorg/slf4j/Logger;

    invoke-interface {v10}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 190
    sget-object v10, Lorg/apache/shiro/web/tags/PrincipalTag;->log:Lorg/slf4j/Logger;

    invoke-interface {v10, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 192
    :cond_1
    new-instance v10, Ljavax/servlet/jsp/JspTagException;

    invoke-direct {v10, v6}, Ljavax/servlet/jsp/JspTagException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v0    # "arr$":[Ljava/beans/PropertyDescriptor;
    .end local v1    # "bi":Ljava/beans/BeanInfo;
    .end local v3    # "foundProperty":Z
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "message":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 196
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error reading property ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] from principal of type ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 197
    .restart local v6    # "message":Ljava/lang/String;
    sget-object v10, Lorg/apache/shiro/web/tags/PrincipalTag;->log:Lorg/slf4j/Logger;

    invoke-interface {v10}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 198
    sget-object v10, Lorg/apache/shiro/web/tags/PrincipalTag;->log:Lorg/slf4j/Logger;

    invoke-interface {v10, v6, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    :cond_2
    new-instance v10, Ljavax/servlet/jsp/JspTagException;

    invoke-direct {v10, v6, v2}, Ljavax/servlet/jsp/JspTagException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 178
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "message":Ljava/lang/String;
    .restart local v0    # "arr$":[Ljava/beans/PropertyDescriptor;
    .restart local v1    # "bi":Ljava/beans/BeanInfo;
    .restart local v3    # "foundProperty":Z
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v7    # "pd":Ljava/beans/PropertyDescriptor;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 203
    .end local v7    # "pd":Ljava/beans/PropertyDescriptor;
    :cond_4
    return-object v8
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/shiro/web/tags/PrincipalTag;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/shiro/web/tags/PrincipalTag;->property:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/shiro/web/tags/PrincipalTag;->type:Ljava/lang/String;

    return-object v0
.end method

.method public onDoStartTag()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/jsp/JspException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 120
    .local v2, "strValue":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/PrincipalTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lorg/apache/shiro/web/tags/PrincipalTag;->type:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 126
    invoke-virtual {p0}, Lorg/apache/shiro/web/tags/PrincipalTag;->getSubject()Lorg/apache/shiro/subject/Subject;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/shiro/subject/Subject;->getPrincipal()Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, "principal":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_0

    .line 133
    iget-object v3, p0, Lorg/apache/shiro/web/tags/PrincipalTag;->property:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 134
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .end local v1    # "principal":Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 145
    :try_start_0
    iget-object v3, p0, Lorg/apache/shiro/web/tags/PrincipalTag;->pageContext:Ljavax/servlet/jsp/PageContext;

    invoke-virtual {v3}, Ljavax/servlet/jsp/PageContext;->getOut()Ljavax/servlet/jsp/JspWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/servlet/jsp/JspWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 128
    :cond_2
    invoke-direct {p0}, Lorg/apache/shiro/web/tags/PrincipalTag;->getPrincipalFromClassName()Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "principal":Ljava/lang/Object;
    goto :goto_0

    .line 136
    :cond_3
    iget-object v3, p0, Lorg/apache/shiro/web/tags/PrincipalTag;->property:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lorg/apache/shiro/web/tags/PrincipalTag;->getPrincipalProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 146
    .end local v1    # "principal":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljavax/servlet/jsp/JspTagException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] to JSP."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljavax/servlet/jsp/JspTagException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/apache/shiro/web/tags/PrincipalTag;->defaultValue:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/apache/shiro/web/tags/PrincipalTag;->property:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/apache/shiro/web/tags/PrincipalTag;->type:Ljava/lang/String;

    .line 89
    return-void
.end method
