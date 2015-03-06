//=========================================================
// Freeplane GTD+
//
// Copyright (c)2014 Gergely Papp
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//=========================================================
package freeplaneGTD

class Tag {
    String tagName
    def content = []
    def params = []

    Tag(tagName, Map params = null) {
        this.tagName = tagName
        if (params) {
            this.params = params
        }
    }

    Tag(tagName, Object content, params = null) {
        this(tagName)
        if (content) {
            addContent(content.toString())
        }
        if (params) {
            this.params = params
        }
    }

    Tag(tagName, Tag content, params = null) {
        this(tagName)
        if (content) {
            addContent(content)
        }
        if (params) {
            this.params = params
        }
    }

    Tag addContent(Object content) {
        // Very simple sanitation for HTML entities <> here!
        this.content.push(content.toString().replaceAll('&', '&amp;').replaceAll('<', '&lt;').replaceAll('>', '&gt;'))
        return this
    }

    Tag addPreformatted(String tag) {
        this.content.push(tag)
        return this
    }


    Tag addContent(Tag tag) {
        this.content.push(tag)
        return this
    }

    Tag addContent(tagName, Object content, params = null) {
        Tag tag = new Tag(tagName, content, params)
        this.content.push(tag)
        return this
    }

    Tag addContent(tagName, Tag content, params = null) {
        Tag tag = new Tag(tagName, content, params)
        this.content.push(tag)
        return this
    }

    Tag addChild(tagName, params = null) {
        Tag tag = new Tag(tagName)
        tag.params = params
        this.content.push(tag)
        return tag
    }

    String toString() {
        String retval = '<' + tagName
        params.each {
            retval += ' ' + it.key + '=\'' + it.value + '\''
        }
        retval += '>'
        content.each {
            retval += it
        }
        retval += '</' + tagName + '>'
        return retval
    }
}

